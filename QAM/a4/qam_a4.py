## Reference: Quantum Associative Memory - D. Ventura
## arXiv: 

## \date: 15-02-2018 - __-02-2018
## \repo: https://gitlab.com/prince-ph0en1x/QuInE
## \proj: Quantum-accelerated Genome-sequencing

###################################################################################################
#                                            Algorithm                                            #
###################################################################################################
    
# Quantum Bi-directional Associative Memory

'''
* Pattern Store : 
		Arbitrary initial database (Quantum Phone Directory)
* Pattern Recall :
		Evolve patterns to Hamming Distances
		Multiple (known) 0 states
		Find optimal number of iterations T
		Mark 0 states
		AA
		Mark all stored states
		AA
		T times
			Mark 0 states
			AA
		Solve completion problem by measuring Tag bits of QBAM
'''

###################################################################################################

from openql import openql as ql
from random import random
from math import *
import os

'''
cd /mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE
python3 examples/qam_a4/qam_a4.py
../QXSim/qx_simulator_1.0.beta_linux_x86_64 test_output/qg.qasm
'''

###################################################################################################

AS = {'0','1','2','3'}	# Alphabet Set {0,1,2,3} := {A,C,G,T} for DNA Nucleotide bases
A = len(AS)

RG = "3020310211"		# Reference Genome string
N = len(RG)

SR = "203"				# Short Read search string
# dummyp = "000"		# indices out of range will be tagged with dummyp data
M = len(SR)

Q_A = ceil(log2(A))
Q_D = Q_A * M			# Data Qubits
Q_T = ceil(log2(N-M+1))	# Tag Qubits 

Q_anc = 1				# Ancilla Qubits
ancFactory = [Q_D+Q_T]
Q = Q_D + Q_T + Q_anc

###################################################################################################
	
def QBAM():
	
	config_fn = os.path.join('gateConfig.json')
	platform = ql.Platform('platform_none', config_fn)
	prog = ql.Program('qg', Q, platform)
	
	# Kernel 1: Construct Quantum Phone Directory

	qk1 = ql.Kernel('QCirc1',platform)
	Circ1(qk1,ancFactory[0])

	# Kernel 2: Calculate Hamming Distances

	qk2 = ql.Kernel('QCirc2',platform)
	Circ2(qk2)
	
	# Kernel 3: Oracle to Mark Hamming Distance of 0
	
	qk3 = ql.Kernel('QCirc3',platform)
	Circ3(qk3,ancFactory[0])

	# Kernel 4: Amplitude Amplification
	
	qk4 = ql.Kernel('QCirc4',platform)
	Circ4(qk4,ancFactory[0])

	# Kernel 5: Oracle to Mark All Stored Patterns
	
	qk5 = ql.Kernel('QCirc5',platform)
	Circ5(qk5,ancFactory[0])  
	
	# Construct Program from Kernels
	
	prog.add_kernel(qk1)
	prog.add_kernel(qk2)
	prog.add_kernel(qk3)
	prog.add_kernel(qk4)
	
	prog.add_kernel(qk2)
	prog.add_kernel(qk5)
	prog.add_kernel(qk2)
	prog.add_kernel(qk4)

	T = CalcIter(0,2)

	for i in range(0,T):
		prog.add_kernel(qk3)
		prog.add_kernel(qk4)
	
	prog.compile(False, "ASAP", False)
	display()
	#showQasm(1)

###################################################################################################

# Kernel 1: Construct Quantum Phone Directory

def Circ1(k,anc):

	for Qi in range(0,Q):
		k.prepz(Qi)
	for Qi in range(0,Q_T):
		k.gate("h",Qi)
	nc = []
	for ci in range(0,Q_T):
		nc.append(ci)
	for Qi in range(0,N-M+1):
		Qis = format(Qi,'0'+str(Q_T)+'b')
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",Qisi)
		wMi = RG[Qi:Qi+M]
		print([Qis,wMi])
		for wisi in range(0,M):
			wisia = format(int(wMi[wisi]),'0'+str(Q_A)+'b')
			for wisiai in range(0,Q_A):
				if wisia[wisiai] == '1':
					nCX(k,nc,Q_T+wisi*Q_A+wisiai,anc)
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",Qisi)

###################################################################################################

# Kernel 2: Calculate Hamming Distances

def Circ2(k):

	for pi in range(0,M):
		ppi = format(int(SR[pi]),'0'+str(Q_A)+'b')
		for ppii in range(0,Q_A):
			if ppi[ppii] == '1':	# Improve: '?' == '0' here
				k.gate("x",Q_T+pi*Q_A+ppii)

###################################################################################################

# Kernel 3: Oracle to Mark Hamming Distance of 0

def Circ3(k,anc):

	for Qi in range(0,Q_D):
		k.gate("x",Q_T+Qi) 
	k.gate("h",Q_T)
	nc = [4,5,6,7,8]
	nCX(k,nc,Q_T,anc)
	k.gate("h",Q_T)
	for Qi in range(0,Q_D):
		k.gate("x",Q_T+Qi)

###################################################################################################

# Kernel 4: Amplitude Amplification

def Circ4(k,anc):

	for si in range(0,Q_D+Q_T):
		k.gate("h",si)
		k.gate("x",si)
	k.gate("h",0)
	nc = []
	for sj in range(1,Q_D+Q_T):
		nc.append(sj)
	nCX(k,nc,0,anc)
	k.gate("h",0)
	for si in range(0,Q_D+Q_T):
		k.gate("x",si)
		k.gate("h",si)
	return

###################################################################################################

# Kernel 5: Oracle to Mark Stored Patterns

def Circ5(k,anc):
	nc = []
	for ci in range(1,Q_T+Q_D):
		nc.append(ci)
	for Qi in range(0,N-M+1):
		Qis = format(Qi,'0'+str(Q_T)+'b')
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",Qisi)
		wMi = RG[Qi:Qi+M]
		for wisi in range(0,M):
			wisia = format(int(wMi[wisi]),'0'+str(Q_A)+'b')
			for wisiai in range(0,Q_A):
				if wisia[wisiai] == '0':
					k.gate("x",Q_T+wisi*Q_A+wisiai)
		k.gate("h",0)
		nCX(k,nc,0,anc)
		k.gate("h",0)
		for wisi in range(0,M):
			wisia = format(int(wMi[wisi]),'0'+str(Q_A)+'b')
			for wisiai in range(0,Q_A):
				if wisia[wisiai] == '0':
					k.gate("x",Q_T+wisi*Q_A+wisiai)
		for Qisi in range(0,Q_T):
			if Qis[Qisi] == '0':
				k.gate("x",Qisi)

###################################################################################################

# Finding optimal iterations for known arbitrary initial amplitude distribution

def CalcIter(r0,r1):

	
	p = N-M+1
	a = 2*(p-2*r1)/N
	b = 4*(p+r0)/N

	l0 = (- a + (- 4*r1 - 4*r0*a + 2*p - 4*p*a + 2*N*a)/N)/sqrt(p)
	mean2 = (-(a+1)*r1 -a*r0 -(a-1)*(p-r1) + a*(N-p))/(N*sqrt(p))
	kavg = (a+1)/sqrt(p) + 2*mean2
	lavg = ((-a/sqrt(p) + 2*mean2)*(N-p-r0) + (-1/sqrt(p) + a/sqrt(p) + 2*mean2)*(p-r1))/(N-r1)
	
	l0Papr = 2*a - a*b
	kavgPapr = 4*a - a*b + r1/(r0+r1)
	lavgPapr = - a*b + 2*a*(N+p-r0-2*r1)/(N-r0-r1) - (p-r1)/(N-r0-r1)
	
	PmaxPapr = 1 - (N-p-r0)*(l0Papr-lavgPapr)**2 - (p-r1)*(l0Papr-lavgPapr)**2
	
	l0Papr = l0Papr/sqrt(p)			# Correction
	kavgPapr = kavgPapr/sqrt(p)		# Correction
	lavgPapr = lavgPapr/sqrt(p)		# Correction
	#print([l0,l0Papr])
	#print([kavg,kavgPapr])
	#print([lavg,lavgPapr])
	
	Pmax = 1 - (N-p-r0)*(l0-lavg)**2 - (p-r1)*(l0-lavg)**2
	#print([Pmax,PmaxPapr])
	
	T = []
	for j in range(0,9):
		T.append(((j+0.5)*pi - atan(kavg*sqrt((r1+r0)/(N-r1-r0))/lavg))/acos(1-2*(r1+r0)/N))
		print([j,T[j]])
	# Improve: Pick T[j] with minimum round-off error (and justify)
	jsel = 3

	print([Pmax,T[jsel]])
	print()

	return round(T[jsel])

###################################################################################################

# Multi-qubit CNOT decomposition to CNOT and Toffolis

# Borrowed Ancilla Implementation (low qubit complexity)

def nCX(k,c,t,b):
	#nCX(k,c,t,b)	# TEST CODE
	#return			# TEST CODE
	nc = len(c)
	if nc == 1:
		k.gate("cnot",c[0],t)
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

# Normal Implementation (low gate complexity)

'''
def nCX(k,c,t,anc):
	nc = len(c)
	if nc == 1:
		k.gate("cnot",c[0],t)
	elif nc == 2:
		k.toffoli(c[0],c[1],t)
	else:
		k.toffoli(c[0],c[1],anc)
		for i in range(2,nc):
			k.toffoli(c[i],anc+i-2,anc+i-1)
		k.gate("cnot",anc+nc-2,t)
		for i in range(nc-1,1,-1):
			k.toffoli(c[i],anc+i-2,anc+i-1) 
		k.toffoli(c[0],c[1],anc)
	return
'''

###################################################################################################

# Append display at end of QASM (simulator directive) for result analysis

def display():
	file = open("test_output/qg.qasm","a")
	file.write("display")
	file.close()

###################################################################################################

# Show OpenQL generated QASM at verbose

def showQasm(r):
	file = open("test_output/qg.qasm","r")
	print("\nCODE FILE\n\n")
	n = r
	for line in file:
		if line[0:7] == '.QCirc2':
			n = 1
		if n == 1:
			print (line,end='')
		if line[0:7] == '.QCirc3':
			n = r
	print ()
	file.close()

###################################################################################################

# Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal

def randStr(szA,sz):
	bias = 1/szA    # Improve: add bias here
	rbs = ""
	for i in range(0,sz):
		rn = random()
		for j in range(0,szA):
			if rn < (j+1)*bias:
				rbs = rbs + str(j)  # Improve: BCD version
				break
	return rbs

###################################################################################################

if __name__ == '__main__':
	QBAM()