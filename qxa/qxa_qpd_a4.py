## Reference:Fast quantum search algorithms in protein sequence comparison: Quantum bioinformatics - L. Hollenberg (arXiv preprint quant-ph/0002076)
## \author: Aritra Sarkar (prince-ph0en1x)
## \project: Quantum-accelerated Genome-sequencing
## \repo: https://gitlab.com/prince-ph0en1x/QaGs

#############################################################################################

from openql import openql as ql
import qxelarator

import random
from math import *
import os
import re
import math
import matplotlib.pyplot as plt
import numpy as np

#############################################################################################

def randStr(szA,sz):
	# Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal
	bias = 1/szA    				# IMPROVE: add bias here
	rbs = ""
	for i in range(0,sz):
		rn = random.random()
		for j in range(0,szA):
			if rn < (j+1)*bias:
				rbs = rbs + str(j)  # IMPROVE: BCD version
				break
	return rbs

#############################################################################################

AS = {'00','01','10','11'}	# Alphabet set {0,1,2,3} := {A,C,G,T} for DNA Nucleotide bases
A = len(AS)					# Alphabet size		
N = 10						# Reference Genome size
#w = randStr(4,N)			# Reference Genome 	(e.g. w = "2302031020")
w = "2302031020"
M = 3						# Short Read size				
ans = 1						# Known answer for testing
dummyp = "000"
p = w[ans:ans+M]			# Short Read

Q_A = ceil(log2(A))			# Number of qubits to encode one character
Q_D = Q_A * M				# Number of data qubits
Q_T = ceil(log2(N-M))		# Tag Qubits
Q_anc = 1					# Number of ancilla qubits
anc = Q_D + Q_T				# Ancilla qubit id
total_qubits = Q_D + Q_T + Q_anc

#############################################################################################

def QPD():
	print(w,p)
	config_fn = os.path.join('gateConfig.json')
	platform = ql.Platform('platform_none', config_fn)
	prog = ql.Program('qpd_a4', total_qubits, platform)

	# Kernel 1: Initialization of Quantum Phone Directory
	qk1 = ql.Kernel('QCirc1',platform)
	Circ1(qk1)

	# Kernel 2: Calculate Hamming Distance
	qk2 = ql.Kernel('QCirc2',platform)
	Circ2(qk2)
	
	# Kernel 3: Oracle to Mark Hamming Distance of 0
	qk3 = ql.Kernel('QCirc3',platform)
	Circ3(qk3)

	# Kernel 4: Grover Amplitude Amplification
	qk4 = ql.Kernel('QCirc4',platform)
	Circ4(qk4)

	# Kernel 5: Measurement
	qk5 = ql.Kernel('QCirc5',platform)
	Circ5(qk5)	

	# Finding optimal iterations for known arbitrary initial amplitude distribution
	t = 1				# Expected number of solutions
	iMx = 2**Q_T
	sMx = 2**(Q_D+Q_T)
	kavg0 = 1/sqrt(iMx)
	lavg0 = (iMx - t)/((sMx - iMx)*sqrt(iMx))
	Pmax = 1 - (sMx-iMx)*lavg0**2 - (iMx-t)*(1/sqrt(iMx) - lavg0)**2
	print("Theoretical PMax:", Pmax)
	T = [0]*5
	for j in range(0,5):
		T[j] = ((j/2+0.5)*pi - atan(kavg0*sqrt(t/(sMx-t))/lavg0)) / acos(1-2*t/sMx)
	print("Suggested Iterations:",T)
	# IMPROVE: Use suggested iterations

	# Construct Program from Kernels
	prog.add_kernel(qk1)			# Initialise
	prog.add_kernel(qk2)			# Transform to Hamming distance
	for r in range(0,1):
		prog.add_kernel(qk3)		# Oracle call
		prog.add_kernel(qk4)		# Inversion about mean
	# prog.add_kernel(qk5)			# Uncomment if using measurement based analytics	
	prog.compile()
	# showQasm()
	qx = qxelarator.QX()
	qx.set('test_output/qpd_a4.qasm')
	
	# Result analytics using Internal State Vector
	qx.execute()
	qxopt = qx.get_state()
	isv = [0]*(2**total_qubits)
	ptrn = re.compile('\(([+-]\d+.\d*),([+-]\d+[.\d*]?)\)\s[|]([0-1]*)>')
	for line in qxopt.splitlines():
		mtch = ptrn.search(line)
		if mtch != None:
			ar = float(mtch.group(1))
			ac = float(mtch.group(2))
			state = int(mtch.group(3),2)
			isv[state] = ar**2 + ac**2
	ploty = isv
	print("PMax:", np.amax(ploty))
	tag = format(np.argmax(ploty),'0'+str(total_qubits-1)+'b')[::-1]
	print("Index:", int(tag[0:3],2))
	plt.plot(ploty)
	plt.ylabel('Probability')
	plt.xlabel('State space')
	plt.ylim([0,1])
	plt.show()
	return

#############################################################################################

def Circ1(k):
	for Qi in range(0,total_qubits):# Initialise all qubits to |0> state
		k.prepz(Qi)
	for Qi in range(0,Q_T):			# Uniform superposition of possible starting positions (answers)
		k.gate("h",[Qi])
	nc = []
	for ci in range(0,Q_T):
		nc.append(ci)
	for Qi in range(0,N-M+1):
		Qis = format(Qi,'0'+str(Q_T)+'b')
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",[Qisi])
		wMi = w[Qi:Qi+M]
		print([Qis,wMi])
		for wisi in range(0,M):
			wisia = format(int(wMi[wisi]),'0'+str(Q_A)+'b')
			for wisiai in range(0,Q_A):
				if wisia[wisiai] == '1':
					nCX(k,nc,Q_T+wisi*Q_A+wisiai,anc)
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",[Qisi])
	return

#############################################################################################

def Circ2(k):
	for pi in range(0,M):
		ppi = format(int(p[pi]),'0'+str(Q_A)+'b')
		for ppii in range(0,Q_A):
			if ppi[ppii] == '1':
				k.gate("x",[Q_T+pi*Q_A+ppii])
	return

#############################################################################################
	
def Circ3(k):
	for Qi in range(0,Q_D):			# Encode binary value 0 of function input
		k.gate("x",[Q_T+Qi]) 
	k.gate("h",[Q_D+Q_T-1])			# CPhase to CNOT conversion
	nc = []
	for qsi in range(Q_T,Q_T+Q_D-1):
		nc.append(qsi)
	nCX(k,nc,Q_D+Q_T-1,anc)		# Decompose multi-controlled CNOT
	k.gate("h",[Q_D+Q_T-1])			# Uncompute CPhase to CNOT conversion
	for Qi in range(0,Q_D):			# Uncompute binary value of function input
		k.gate("x",[Q_T+Qi]) 

#############################################################################################

def Circ4(k):
	for si in range(0,Q_D+Q_T):
		k.gate("h",[si])
		k.gate("x",[si])
	k.gate("h",[Q_D+Q_T-1])			# CPhase to CNOT conversion
	nc = []
	for sj in range(0,Q_D+Q_T-1):
		nc.append(sj)
	print(nc)
	nCX(k,nc,Q_D+Q_T-1,anc)		# Decompose multi-controlled CNOT
	k.gate("h",[Q_D+Q_T-1])			# Uncompute CPhase to CNOT conversion
	for si in range(0,Q_D+Q_T):
		k.gate("x",[si])
		k.gate("h",[si])
	return

#############################################################################################

def Circ5(k):
	#k.display()
	'''
	for si in range(0,s):			# Measure first set of positions
		k.gate("measure",[si])
	'''
	return

#############################################################################################

def nCX(k,c,t,b):
	nc = len(c)
	if nc == 1:
		k.gate("cnot",[c[0], t])
	elif nc == 2:
		k.toffoli(c[0],c[1],t)
	else:
		nch = ceil(nc/2)
		c1 = c[:nch]
		c2 = c[nch:]
		c2.append(b)
		nCX(k,c1,b,nch+1)
		nCX(k,c2,t,nch-1)
		nCX(k,c1,b,nch+1)
		nCX(k,c2,t,nch-1)
	return

#############################################################################################

def showQasm():
	file = open("test_output/qpd_a4.qasm","r")
	print("\n~~~~~ CODE FILE ~~~~~\n")
	for line in file:
		print (line,end='')
	print ()
	file.close()

#############################################################################################

if __name__ == '__main__':
	QPD()

# cd Dropbox/SimQG/QaGs/qxa/
# python3 qxa_qpd_a4.py
# ../QXSim/qx_simulator_1.0.beta_linux_x86_64 test_output/qg.qasm