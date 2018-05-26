## Reference: Quantum associative memory with improved distributed queries - J.P.T. Njafa, S.G.N. Engo, P. Woafo 
## Reference: Quantum algorithms for pattern matching in genomic sequences - A. Sarkar
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
N = 16						# Reference Genome size
w = "0033231302212011"		# Reference Genome: "ATTGTCTAGGCGACCA"
M = 2						# Short Read size				
p = "10"					# Short Read: "AA"

Q_A = ceil(log2(A))			# Number of qubits to encode one character
Q_D = Q_A * M				# Number of data qubits
Q_T = ceil(log2(N-M))		# Tag Qubits
Q_anc = 1					# Number of ancilla qubits
anc = Q_D + Q_T				# Ancilla qubit id
total_qubits = Q_D + Q_T + Q_anc

#############################################################################################

def QAM():
	print(w,p)
	config_fn = os.path.join('gateConfig.json')
	platform = ql.Platform('platform_none', config_fn)
	prog = ql.Program('qam_a4', total_qubits, platform)

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

	# Kernel 5: Oracle to Mark Memory States
	qk5 = ql.Kernel('QCirc5',platform)
	Circ5(qk5)

	# Kernel 6: Measurement
	qk6 = ql.Kernel('QCirc6',platform)
	Circ6(qk6)	

	# Construct Program from Kernels
	prog.add_kernel(qk1)			# Initialise
	prog.add_kernel(qk2)			# Transform to Hamming distance
	prog.add_kernel(qk3)			# Oracle call
	prog.add_kernel(qk4)			# Inversion about mean
	prog.add_kernel(qk5)			# Memory Oracle
	prog.add_kernel(qk4)			# Inversion about mean
	for r in range(0,3):
		prog.add_kernel(qk3)		# Oracle call
		prog.add_kernel(qk4)		# Inversion about mean
	# prog.add_kernel(qk6)			# Uncomment if using measurement based analytics	
	prog.compile()
	qx = qxelarator.QX()
	qx.set('test_output/qam_a4.qasm')

	# Result analytics using Internal State Vector
	qx.execute()
	qxopt = qx.get_state()
	isv = [0]*(2**total_qubits)
	ptrn = re.compile('\(([+-]\d+.?\d*)e?(-\d*)?,([+-]\d+.?\d*)e?(-\d*)?\)\s[|]([0-1]*)>')
	for line in qxopt.splitlines():
		mtch = ptrn.search(line)
		if mtch != None:
			ar = float(mtch.group(1))
			if mtch.group(2) != None:
				are = float(mtch.group(2))
				ar = ar * 10**are
			ac = float(mtch.group(3))
			if mtch.group(4) != None:
				ace = float(mtch.group(4))
				ac = ac * 10**ace
			state = int(mtch.group(5),2)
			isv[state] = ar**2 + ac**2
	ploty = isv
	isvt = [0]*(2**4)
	for tagi in range(0,2**total_qubits):
		if isv[tagi] > 0.03:
			ti = format(tagi,'0'+str(total_qubits)+'b')
			isvt[int(ti[:4:-1],2)] = isv[tagi]
	for tagi in range(0,16):
		print("Tag : ", tagi, "\t probability ",round(isvt[tagi],5))
	plt.plot(isv)
	plt.ylabel('Probability')
	plt.xlabel('Index')
	plt.ylim([0,1])
	plt.show()
	return

#############################################################################################

def Circ1(k):
	for Qi in range(0,total_qubits):# Initialise all qubits to |0> state
		k.prepz(Qi)
	# MSQ : ~~~~ m1a0 m1a1 m0a0 m0a1 t0 t1 t2 t3 ~~~~ : LSQ
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
	wMi = p
	for Qi in range(N-M+1,2**Q_T):
		Qis = format(Qi,'0'+str(Q_T)+'b')
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",[Qisi])
		for wisi in range(0,M):
			wisia = format(int(wMi[wisi]),'0'+str(Q_A)+'b')
			for wisiai in range(0,Q_A):
				if wisia[wisiai] == '0':
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
	k.rz(4,-2.495565)
	k.ry(4,-1.046381)
	k.rz(4,-0.634842)
	k.rz(5,-1.095612)
	k.gate("cnot",[4,5])
	k.rz(5,-1.574113)
	k.gate("cnot",[4,5])
	k.rz(4,-0.663604)
	k.ry(4,-1.337541)
	k.rz(4,0.663604)
	k.ry(5,2.180982)
	k.gate("cnot",[4,5])
	k.ry(5,0.270123)
	k.gate("cnot",[4,5])
	k.rz(4,-4.560313)
	k.ry(4,-2.345810)
	k.rz(4,0.217847)
	k.rz(5,2.141438)
	k.gate("cnot",[4,5])
	k.rz(5,-0.835336)
	k.gate("cnot",[4,5])
	k.rz(4,0.573939)
	k.ry(4,-1.161760)
	k.rz(4,-0.573939)
	k.rz(6,0.265150)
	k.gate("cnot",[4,6])
	k.rz(6,0.792581)
	k.gate("cnot",[5,6])
	k.rz(6,-1.778400)
	k.gate("cnot",[4,6])
	k.rz(6,0.309606)
	k.gate("cnot",[5,6])
	k.rz(4,0.867198)
	k.ry(4,-1.020460)
	k.rz(4,-0.892549)
	k.rz(5,-0.978970)
	k.gate("cnot",[4,5])
	k.rz(5,-2.042658)
	k.gate("cnot",[4,5])
	k.rz(4,-0.771181)
	k.ry(4,-0.386977)
	k.rz(4,0.771181)
	k.ry(5,1.644840)
	k.gate("cnot",[4,5])
	k.ry(5,0.504899)
	k.gate("cnot",[4,5])
	k.rz(4,0.662837)
	k.ry(4,-1.694500)
	k.rz(4,-3.616169)
	k.rz(5,0.160840)
	k.gate("cnot",[4,5])
	k.rz(5,-0.807003)
	k.gate("cnot",[4,5])
	k.rz(4,-0.523538)
	k.ry(4,-1.195233)
	k.rz(4,0.523538)
	k.ry(6,1.486933)
	k.gate("cnot",[4,6])
	k.ry(6,0.346126)
	k.gate("cnot",[5,6])
	k.ry(6,-0.150052)
	k.gate("cnot",[4,6])
	k.ry(6,0.589344)
	k.gate("cnot",[5,6])
	k.rz(4,-4.033427)
	k.ry(4,-2.661051)
	k.rz(4,-0.217231)
	k.rz(5,-0.679055)
	k.gate("cnot",[4,5])
	k.rz(5,1.623385)
	k.gate("cnot",[4,5])
	k.rz(4,-1.573731)
	k.ry(4,-0.475009)
	k.rz(4,1.573731)
	k.ry(5,2.071674)
	k.gate("cnot",[4,5])
	k.ry(5,0.764902)
	k.gate("cnot",[4,5])
	k.rz(4,1.904202)
	k.ry(4,-1.576334)
	k.rz(4,3.300418)
	k.rz(5,0.246450)
	k.gate("cnot",[4,5])
	k.rz(5,1.446510)
	k.gate("cnot",[4,5])
	k.rz(4,-3.121304)
	k.ry(4,-1.150659)
	k.rz(4,3.121304)
	k.rz(6,-0.568080)
	k.gate("cnot",[4,6])
	k.rz(6,-0.678844)
	k.gate("cnot",[5,6])
	k.rz(6,-0.184890)
	k.gate("cnot",[4,6])
	k.rz(6,1.600579)
	k.gate("cnot",[5,6])
	k.rz(4,2.234130)
	k.ry(4,-2.090960)
	k.rz(4,1.062383)
	k.rz(5,0.164323)
	k.gate("cnot",[4,5])
	k.rz(5,1.743454)
	k.gate("cnot",[4,5])
	k.rz(4,-1.629366)
	k.ry(4,-0.512242)
	k.rz(4,1.629366)
	k.ry(5,1.152369)
	k.gate("cnot",[4,5])
	k.ry(5,0.797232)
	k.gate("cnot",[4,5])
	k.rz(4,-0.651534)
	k.ry(4,-2.240981)
	k.rz(4,2.205052)
	k.rz(5,1.091160)
	k.gate("cnot",[4,5])
	k.rz(5,0.777808)
	k.gate("cnot",[4,5])
	k.rz(4,2.741933)
	k.ry(4,-1.561898)
	k.rz(4,-2.741933)
	k.rz(7,-0.392699)
	k.gate("cnot",[4,7])
	k.rz(7,0.857984)
	k.gate("cnot",[5,7])
	k.rz(7,-0.392699)
	k.gate("cnot",[4,7])
	k.rz(7,-0.730732)
	k.gate("cnot",[6,7])
	k.rz(7,-1.070810)
	k.gate("cnot",[4,7])
	k.rz(7,-0.849024)
	k.gate("cnot",[5,7])
	k.rz(7,0.285412)
	k.gate("cnot",[4,7])
	k.rz(7,-0.849024)
	k.gate("cnot",[6,7])
	k.rz(4,2.422630)
	k.ry(4,-1.054241)
	k.rz(4,-0.670996)
	k.rz(5,-0.346171)
	k.gate("cnot",[4,5])
	k.rz(5,-2.395018)
	k.gate("cnot",[4,5])
	k.rz(4,-2.330937)
	k.ry(4,-1.254475)
	k.rz(4,2.330937)
	k.ry(5,1.739765)
	k.gate("cnot",[4,5])
	k.ry(5,0.618025)
	k.gate("cnot",[4,5])
	k.rz(4,-2.169652)
	k.ry(4,-2.868867)
	k.rz(4,2.683293)
	k.rz(5,0.126237)
	k.gate("cnot",[4,5])
	k.rz(5,-1.920065)
	k.gate("cnot",[4,5])
	k.rz(4,-1.083853)
	k.ry(4,-1.399634)
	k.rz(4,1.083853)
	k.rz(6,0.040519)
	k.gate("cnot",[4,6])
	k.rz(6,0.810583)
	k.gate("cnot",[5,6])
	k.rz(6,1.374535)
	k.gate("cnot",[4,6])
	k.rz(6,0.527623)
	k.gate("cnot",[5,6])
	k.rz(4,-5.305886)
	k.ry(4,-0.764960)
	k.rz(4,0.785715)
	k.rz(5,-0.264883)
	k.gate("cnot",[4,5])
	k.rz(5,1.987388)
	k.gate("cnot",[4,5])
	k.rz(4,1.990355)
	k.ry(4,-0.392324)
	k.rz(4,-1.990355)
	k.ry(5,1.862818)
	k.gate("cnot",[4,5])
	k.ry(5,0.827526)
	k.gate("cnot",[4,5])
	k.rz(4,-1.779818)
	k.ry(4,-1.301020)
	k.rz(4,-1.688079)
	k.rz(5,0.417135)
	k.gate("cnot",[4,5])
	k.rz(5,-1.817636)
	k.gate("cnot",[4,5])
	k.rz(4,-0.537353)
	k.ry(4,-0.105530)
	k.rz(4,0.537353)
	k.ry(6,1.025571)
	k.gate("cnot",[4,6])
	k.ry(6,0.386772)
	k.gate("cnot",[5,6])
	k.ry(6,0.325953)
	k.gate("cnot",[4,6])
	k.ry(6,0.964752)
	k.gate("cnot",[5,6])
	k.rz(4,0.589048)
	k.ry(4,-2.364848)
	k.rz(4,4.476448)
	k.rz(5,-0.862498)
	k.gate("cnot",[4,5])
	k.rz(5,-1.949294)
	k.gate("cnot",[4,5])
	k.rz(4,-0.830300)
	k.ry(4,-0.962399)
	k.rz(4,0.830300)
	k.ry(5,1.652079)
	k.gate("cnot",[4,5])
	k.ry(5,0.567936)
	k.gate("cnot",[4,5])
	k.rz(4,-3.400688)
	k.ry(4,-0.392400)
	k.rz(4,2.556896)
	k.rz(5,-1.608724)
	k.gate("cnot",[4,5])
	k.rz(5,0.535112)
	k.gate("cnot",[4,5])
	k.rz(4,-2.631783)
	k.ry(4,-1.010089)
	k.rz(4,2.631783)
	k.rz(6,-0.749385)
	k.gate("cnot",[4,6])
	k.rz(6,-0.995045)
	k.gate("cnot",[5,6])
	k.rz(6,-0.425068)
	k.gate("cnot",[4,6])
	k.rz(6,1.656585)
	k.gate("cnot",[5,6])
	k.rz(4,-1.259555)
	k.ry(4,-1.413129)
	k.rz(4,-0.376948)
	k.rz(5,-0.023320)
	k.gate("cnot",[4,5])
	k.rz(5,0.375551)
	k.gate("cnot",[4,5])
	k.rz(4,-0.124097)
	k.ry(4,-0.211290)
	k.rz(4,0.124097)
	k.ry(5,1.630461)
	k.gate("cnot",[4,5])
	k.ry(5,0.680158)
	k.gate("cnot",[4,5])
	k.rz(4,-5.829541)
	k.ry(4,-2.443439)
	k.rz(4,0.018165)
	k.rz(5,0.242793)
	k.gate("cnot",[4,5])
	k.rz(5,-1.876220)
	k.gate("cnot",[4,5])
	k.rz(4,1.413556)
	k.ry(4,-0.974064)
	k.rz(4,-1.413556)
	k.ry(7,0.261799)
	k.gate("cnot",[4,7])
	k.ry(7,0.261799)
	k.gate("cnot",[5,7])
	k.ry(7,0.261799)
	k.gate("cnot",[4,7])
	k.ry(7,0.261799)
	k.gate("cnot",[6,7])
	k.ry(7,0.261799)
	k.gate("cnot",[4,7])
	k.ry(7,0.261799)
	k.gate("cnot",[5,7])
	k.ry(7,0.261799)
	k.gate("cnot",[4,7])
	k.ry(7,0.261799)
	k.gate("cnot",[6,7])
	k.rz(4,3.477399)
	k.ry(4,-1.335230)
	k.rz(4,1.300499)
	k.rz(5,1.438258)
	k.gate("cnot",[4,5])
	k.rz(5,-0.801232)
	k.gate("cnot",[4,5])
	k.rz(4,-1.104663)
	k.ry(4,-1.513998)
	k.rz(4,1.104663)
	k.ry(5,1.300200)
	k.gate("cnot",[4,5])
	k.ry(5,0.817306)
	k.gate("cnot",[4,5])
	k.rz(4,-0.537000)
	k.ry(4,-2.102438)
	k.rz(4,-1.622373)
	k.rz(5,-0.525194)
	k.gate("cnot",[4,5])
	k.rz(5,0.334422)
	k.gate("cnot",[4,5])
	k.rz(4,0.438354)
	k.ry(4,-1.454119)
	k.rz(4,-0.438354)
	k.rz(6,-0.785398)
	k.gate("cnot",[4,6])
	k.rz(6,-0.085948)
	k.gate("cnot",[5,6])
	k.rz(6,-0.785398)
	k.gate("cnot",[4,6])
	k.rz(6,-1.484849)
	k.gate("cnot",[5,6])
	k.rz(4,3.350364)
	k.ry(4,-2.676777)
	k.rz(4,2.930095)
	k.rz(5,0.954045)
	k.gate("cnot",[4,5])
	k.rz(5,0.745842)
	k.gate("cnot",[4,5])
	k.rz(4,2.944517)
	k.ry(4,-1.291884)
	k.rz(4,-2.944517)
	k.ry(5,1.438536)
	k.gate("cnot",[4,5])
	k.ry(5,0.852927)
	k.gate("cnot",[4,5])
	k.rz(4,1.249836)
	k.ry(4,-2.002135)
	k.rz(4,-2.140359)
	k.rz(5,-0.086264)
	k.gate("cnot",[4,5])
	k.rz(5,-0.840127)
	k.gate("cnot",[4,5])
	k.rz(4,-2.964859)
	k.ry(4,-1.544692)
	k.rz(4,2.964859)
	k.ry(6,1.614267)
	k.gate("cnot",[4,6])
	k.ry(6,0.309438)
	k.gate("cnot",[5,6])
	k.ry(6,-0.036398)
	k.gate("cnot",[4,6])
	k.ry(6,1.254285)
	k.gate("cnot",[5,6])
	k.rz(4,4.735940)
	k.ry(4,-1.080950)
	k.rz(4,-1.398253)
	k.rz(5,0.141644)
	k.gate("cnot",[4,5])
	k.rz(5,1.581510)
	k.gate("cnot",[4,5])
	k.rz(4,3.000507)
	k.ry(4,-1.345787)
	k.rz(4,-3.000507)
	k.ry(5,2.303325)
	k.gate("cnot",[4,5])
	k.ry(5,0.768309)
	k.gate("cnot",[4,5])
	k.rz(4,-4.022805)
	k.ry(4,-2.559101)
	k.rz(4,1.595668)
	k.rz(5,-1.365775)
	k.gate("cnot",[4,5])
	k.rz(5,-1.372495)
	k.gate("cnot",[4,5])
	k.rz(4,-1.209858)
	k.ry(4,-0.713527)
	k.rz(4,1.209858)
	k.rz(6,-0.392699)
	k.gate("cnot",[4,6])
	k.rz(6,1.718203)
	k.gate("cnot",[5,6])
	k.rz(6,-0.159657)
	k.gate("cnot",[4,6])
	k.rz(6,-1.151992)
	k.gate("cnot",[5,6])
	k.rz(4,-2.103083)
	k.ry(4,-1.642351)
	k.rz(4,-1.494416)
	k.rz(5,-0.071267)
	k.gate("cnot",[4,5])
	k.rz(5,1.653073)
	k.gate("cnot",[4,5])
	k.rz(4,-0.387850)
	k.ry(4,-0.891440)
	k.rz(4,0.387850)
	k.ry(5,0.437715)
	k.gate("cnot",[4,5])
	k.ry(5,0.234582)
	k.gate("cnot",[4,5])
	k.rz(4,-4.048179)
	k.ry(4,-2.212950)
	k.rz(4,-0.379861)
	k.rz(5,1.259357)
	k.gate("cnot",[4,5])
	k.rz(5,-0.726894)
	k.gate("cnot",[4,5])
	k.rz(4,-0.204942)
	k.ry(4,-1.154988)
	k.rz(4,0.204942)
	k.rz(7,-0.000000)
	k.gate("cnot",[4,7])
	k.rz(7,-1.250684)
	k.gate("cnot",[5,7])
	k.rz(7,-0.338033)
	k.gate("cnot",[4,7])
	k.rz(7,0.000000)
	k.gate("cnot",[6,7])
	k.rz(7,0.000000)
	k.gate("cnot",[4,7])
	k.rz(7,-0.221786)
	k.gate("cnot",[5,7])
	k.rz(7,-1.134436)
	k.gate("cnot",[4,7])
	k.rz(7,0.000000)
	k.gate("cnot",[6,7])
	k.rz(4,0.311756)
	k.ry(4,-0.913364)
	k.rz(4,5.950218)
	k.rz(5,1.175158)
	k.gate("cnot",[4,5])
	k.rz(5,0.505238)
	k.gate("cnot",[4,5])
	k.rz(4,0.562177)
	k.ry(4,-0.920386)
	k.rz(4,-0.562177)
	k.ry(5,1.229257)
	k.gate("cnot",[4,5])
	k.ry(5,0.351218)
	k.gate("cnot",[4,5])
	k.rz(4,-0.714317)
	k.ry(4,-1.273729)
	k.rz(4,2.687247)
	k.rz(5,-0.815124)
	k.gate("cnot",[4,5])
	k.rz(5,1.756678)
	k.gate("cnot",[4,5])
	k.rz(4,-1.191286)
	k.ry(4,-1.322072)
	k.rz(4,1.191286)
	k.rz(6,-0.392699)
	k.gate("cnot",[4,6])
	k.rz(6,0.560325)
	k.gate("cnot",[5,6])
	k.rz(6,0.367070)
	k.gate("cnot",[4,6])
	k.rz(6,-1.604025)
	k.gate("cnot",[5,6])
	k.rz(4,3.443813)
	k.ry(4,-0.528964)
	k.rz(4,-2.730648)
	k.rz(5,0.333271)
	k.gate("cnot",[4,5])
	k.rz(5,2.086082)
	k.gate("cnot",[4,5])
	k.rz(4,-0.945221)
	k.ry(4,-0.446899)
	k.rz(4,0.945221)
	k.ry(5,1.423641)
	k.gate("cnot",[4,5])
	k.ry(5,0.452590)
	k.gate("cnot",[4,5])
	k.rz(4,-3.227600)
	k.ry(4,-0.800360)
	k.rz(4,0.895195)
	k.rz(5,0.879420)
	k.gate("cnot",[4,5])
	k.rz(5,-1.175390)
	k.gate("cnot",[4,5])
	k.rz(4,-2.704350)
	k.ry(4,-1.291475)
	k.rz(4,2.704350)
	k.ry(6,1.783616)
	k.gate("cnot",[4,6])
	k.ry(6,0.493806)
	k.gate("cnot",[5,6])
	k.ry(6,0.142692)
	k.gate("cnot",[4,6])
	k.ry(6,0.538500)
	k.gate("cnot",[5,6])
	k.rz(4,0.074716)
	k.ry(4,-1.215538)
	k.rz(4,2.366195)
	k.rz(5,-0.634980)
	k.gate("cnot",[4,5])
	k.rz(5,-2.304112)
	k.gate("cnot",[4,5])
	k.rz(4,-0.827265)
	k.ry(4,-1.142645)
	k.rz(4,0.827265)
	k.ry(5,1.674571)
	k.gate("cnot",[4,5])
	k.ry(5,0.564013)
	k.gate("cnot",[4,5])
	k.rz(4,0.557684)
	k.ry(4,-0.316529)
	k.rz(4,4.037339)
	k.rz(5,-1.658384)
	k.gate("cnot",[4,5])
	k.rz(5,0.946438)
	k.gate("cnot",[4,5])
	k.rz(4,-1.615404)
	k.ry(4,-1.423146)
	k.rz(4,1.615404)
	k.rz(6,0.785398)
	k.gate("cnot",[4,6])
	k.rz(6,-1.895989)
	k.gate("cnot",[5,6])
	k.rz(6,0.785398)
	k.gate("cnot",[4,6])
	k.rz(6,0.325193)
	k.gate("cnot",[5,6])
	k.rz(4,3.212053)
	k.ry(4,-1.388574)
	k.rz(4,-1.391053)
	k.rz(5,1.520843)
	k.gate("cnot",[4,5])
	k.rz(5,0.942892)
	k.gate("cnot",[4,5])
	k.rz(4,1.229895)
	k.ry(4,-1.476998)
	k.rz(4,-1.229895)
	k.ry(5,1.477189)
	k.gate("cnot",[4,5])
	k.ry(5,0.636033)
	k.gate("cnot",[4,5])
	k.rz(4,-1.659093)
	k.ry(4,-2.163702)
	k.rz(4,-2.151962)
	k.rz(5,-0.872758)
	k.gate("cnot",[4,5])
	k.rz(5,-1.456869)
	k.gate("cnot",[4,5])
	k.rz(4,-0.779867)
	k.ry(4,-1.548794)
	k.rz(4,0.779867)
	return

#############################################################################################

def Circ4(k):
	for si in range(0,Q_D+Q_T):
		k.gate("h",[si])
		k.gate("x",[si])
	k.gate("h",[Q_D+Q_T-1])			# CPhase to CNOT conversion
	nc = []
	for sj in range(0,Q_D+Q_T-1):
		nc.append(sj)
	nCX(k,nc,Q_D+Q_T-1,anc)			# Decompose multi-controlled CNOT
	k.gate("h",[Q_D+Q_T-1])			# Uncompute CPhase to CNOT conversion
	for si in range(0,Q_D+Q_T):
		k.gate("x",[si])
		k.gate("h",[si])
	return

#############################################################################################

def Circ5(k):
	nc = []
	for qsi in range(0,Q_T+Q_D-1):
		nc.append(qsi)
	for Qi in range(0,N-M+1):
		Qis = format(Qi,'0'+str(Q_T)+'b')
		wMi = w[Qi:Qi+M]
		wt = Qis
		for wisi in range(0,M):
			hd = int(format(int(wMi[wisi]),'0'+str(Q_A)+'b'),2) ^ int(format(int(p[wisi]),'0'+str(Q_A)+'b'),2)
			wisia = format(hd,'0'+str(Q_A)+'b')
			wt = wt+wisia
		for Qisi in range(0,Q_T+Q_D):
			if wt[Qisi] == '0':
				k.gate("x",[Qisi])
			k.gate("h",[Q_D+Q_T-1])			# CPhase to CNOT conversion
			nCX(k,nc,Q_D+Q_T-1,anc)			# Decompose multi-controlled CNOT
			k.gate("h",[Q_D+Q_T-1])			# Uncompute CPhase to CNOT conversion
			if wt[Qisi] == '0':
				k.gate("x",[Qisi])
			
#############################################################################################

def Circ6(k):
	#k.display()
	for si in range(0,Q_T):			# Measure tag positions
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

if __name__ == '__main__':
	QAM()

# cd Dropbox/SimQG/QaGs/qxa/
# python3 qxa_qam_a4_idq.py
# ../QXSim/qx_simulator_1.0.beta_linux_x86_64 test_output/qg.qasm