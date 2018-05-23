## Reference: Quantum Pattern Matching - P. Mateus, Y. Omar (arXiv preprint quant-ph/0508237)
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
N = 11						# Reference Genome size
w = randStr(4,N)			# Reference Genome 	(e.g. w = "22013213")
M = 3						# Short Read size				
ans = 2						# Known answer for testing
p = w[ans:ans+M]			# Short Read

s = ceil(log2(N-M))
Q_D = s * M					# Number of data qubits
Q_anc = 1					# Number of ancilla qubits
anc = Q_D					# Ancilla qubit id
total_qubits = Q_D + Q_anc

#############################################################################################

def QPM():
	print(w,p)
	config_fn = os.path.join('gateConfig.json')
	platform = ql.Platform('platform_none', config_fn)
	prog = ql.Program('qpm_a4', total_qubits, platform)
	
	# Kernel 1: Initialization
	qk1 = ql.Kernel('QCirc1',platform)
	#qk1.rz(0,0.25)
	qk1.gate("rz",[1], 40, 0.3)
	Circ1(qk1)

	# Kernel 2: Oracles to mark specific character
	qk2 = ql.Kernel('QCirc2',platform)
	bfa = ''.join('1' if w[i] == '0' else '0' for i in range(len(w)))
	bfc = ''.join('1' if w[i] == '1' else '0' for i in range(len(w)))
	bfg = ''.join('1' if w[i] == '2' else '0' for i in range(len(w)))
	bft = ''.join('1' if w[i] == '3' else '0' for i in range(len(w)))

	# Kernel 3: Grover Amplitude Amplification
	qk3 = ql.Kernel('QCirc3',platform)
	Circ3(qk3,s,M)

	# Kernel 4: Measurement
	qk4 = ql.Kernel('QCirc4',platform)
	Circ4(qk4)	
	
	# Construct Program from Kernels
	prog.add_kernel(qk1)			# Initialise
	#for pi in range(0,M):			# Alternate iteration method
	for r in range(0,int(sqrt(N-M+1))):
		pi = random.randint(0,M-1)
		if p[pi] == '0':
			Circ2(qk2,bfa,pi)
		elif p[pi] == '1':
			Circ2(qk2,bfc,pi)
		elif p[pi] == '2':
			Circ2(qk2,bfg,pi)
		else:
			Circ2(qk2,bft,pi)
		prog.add_kernel(qk2)		# Conditional kernel call
		del qk2						# IMPROVE: Kernel to qubit loose binding being discussed
		qk2 = ql.Kernel('QCirc2',platform)
		prog.add_kernel(qk3)		# Inversion about mean
	# prog.add_kernel(qk4)			# Uncomment if using measurement based analytics	
	prog.compile()
	# showQasm()
	qx = qxelarator.QX()
	qx.set('test_output/qpm_a4.qasm')
	
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
	ploty = [0]*(2**s)
	for i in range(0,len(isv)):
		stot = format(i,'0'+str(total_qubits)+'b')[::-1]
		sopt = int(stot[0:s],2)
		ploty[sopt] = ploty[sopt] + isv[i]
	print("PMax:", np.amax(ploty))
	print("Index:", np.argmax(ploty))
	plt.plot(ploty)
	plt.ylabel('Probability')
	plt.xlabel('Solution space')
	plt.ylim([0,1])
	plt.show()
	
	# Result analytics using Measurement
	'''
	res = [0]*s
	STT = 1000						# Number of quantum state tomography trials
	true_counter = 0
	for i in range(STT):
		qx.execute()
		res[0] = res[0] + qx.get_measurement_outcome(0)
		res[1] = res[1] + qx.get_measurement_outcome(1)
		res[2] = res[2] + qx.get_measurement_outcome(2)
	index = ''.join('1' if res[i] > STT/2 else '0' for i in range(s))
	print("Index:",int(index,2))
	'''
	return

#############################################################################################

def Circ1(k):
	for Qi in range(0,total_qubits):# Initialise all qubits to |0> state
		k.prepz(Qi)
	for si in range(0,s):			# Uniform superposition of possible starting positions (answers)
		k.gate("h",[si])
	for Mi in range(0,M-1):
		for si in range(0,s):		# Copy position encoding to next set of s
			k.gate("cnot",[Mi*s+si, (Mi+1)*s+si])
		for si in range(0,s):		# Increment position encoding
			ic = (Mi+1)*s-(si+1)
			k.gate("x",[ic])		# Inverted control
			nc = []
			for sj in range(ic,(Mi+1)*s):
				nc.append(sj)
			for sj in range((Mi+2)*s-1,s+ic-1,-1):
				nCX(k,nc,sj,anc)    # Decompose multi-controlled CNOT
			k.gate("x",[ic])		# Uncompute inverted control
	return

#############################################################################################

def Circ2(k,bf,q):
	for fi in range(0,len(bf)):		# Encode oracle function
		if bf[fi] == '1':
			fis = format(fi,'0'+str(s)+'b')
			for fisi in range(0,s):	# Encode binary value of function input
				if fis[fisi] == '0':
					k.gate("x",[q*s+fisi])
			k.gate("h",[(q+1)*s-1])	# CPhase to CNOT conversion
			nc = []
			for qsi in range(q*s,(q+1)*s-1):
				nc.append(qsi)
			nCX(k,nc,(q+1)*s-1,anc)	# Decompose multi-controlled CNOT
			k.gate("h",[(q+1)*s-1])	# Uncompute CPhase to CNOT conversion
			for fisi in range(0,s):	# Uncompute binary value of function input
				if fis[fisi] == '0':
					k.gate("x",[q*s+fisi])
	return

#############################################################################################

def Circ3(k,s,M):
	for si in range(0,s*M):
		k.gate("h",[si])
		k.gate("x",[si])
	k.gate("h",[s*M-1])				# CPhase to CNOT conversion
	nc = []
	for sj in range(0,s*M-1):
		nc.append(sj)
	nCX(k,nc,s*M-1,s*M)				# Decompose multi-controlled CNOT
	k.gate("h",[s*M-1])				# Uncompute CPhase to CNOT conversion
	for si in range(0,s*M):
		k.gate("x",[si])
		k.gate("h",[si])
	return

#############################################################################################

def Circ4(k):
	for si in range(0,s):			# Measure first set of positions
		k.gate("measure",[si])
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
	file = open("test_output/qpm_a4.qasm","r")
	print("\n~~~~~ CODE FILE ~~~~~\n")
	for line in file:
		print (line,end='')
	print ()
	file.close()

#############################################################################################

if __name__ == '__main__':
	QPM()

# cd /mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QaGs/
# python3 qxa_qpm_a4.py
# ../QXSim/qx_simulator_1.0.beta_linux_x86_64 test_output/qg.qasm