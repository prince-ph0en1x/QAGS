## Version Plan: Get results with binary sequence (same as Matlab from QX Sim)

## Reference: Quantum Pattern Matching - P. Mateus et al.

## \date: 01-12-2017 - 26-12-2017
## \author: Aritra Sarkar (prince-ph0en1x)

## \project: Quantum-accelerated Genome-sequencing

# cd /mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QaGs/

from openql import openql as ql
from random import random
from math import *
import os

def QPM():
	
	N = 8				# Reference Genome size
	w = "00000111" #randStr(2,N)	# Reference Genome
	M = 2				# Short Read size
	p = "01" #randStr(2,M)	# Short Read
	s = ceil(log2(N-M))
	print(s)
	config_fn = os.path.join('qg_v0p1.json')
	platform = ql.Platform('platform_none', config_fn)

	total_qubits = 2*s*M-2
	prog = ql.Program('qg', total_qubits, platform)
	
	# Initialization
	qk1 = ql.Kernel('QCirc1',platform)
	Circ1(qk1,s,M)
	prog.add_kernel(qk1)

	# Oracle Kernels
	qk2a = ql.Kernel('QCirc2a',platform)
	qk2c = ql.Kernel('QCirc2c',platform)
	qk2g = ql.Kernel('QCirc2g',platform)
	qk2t = ql.Kernel('QCirc2t',platform)

	# Grover Amplitude Amplification
	qk3 = ql.Kernel('QCirc3',platform)
	Circ3(qk3,s,M)
	
	# WATSON : define custom gate from python code... not json...
	# WATSON : get back display output in code
	
	fa = []
	fc = []
	fg = []
	ft = []
	for wi in range(0,N):
		if w[wi] == '0':
			fa.append(True)
			fc.append(False)
			fg.append(False)
			ft.append(False)
		elif w[wi] == '1':
			fa.append(False)
			fc.append(True)
			fg.append(False)
			ft.append(False)
		elif w[wi] == '2':
			fa.append(False)
			fc.append(False)
			fg.append(True)
			ft.append(False)
		else:
			fa.append(False)
			fc.append(False)
			fg.append(False)
			ft.append(True)

	print(w,p)

	for pi in range(0,M):
		if p[pi] == '0':
			Circ2(qk2a,fa,s,pi*s,s*M)
			prog.add_kernel(qk2a)
		elif p[pi] == '1':
			Circ2(qk2c,fc,s,pi*s,s*M)
			prog.add_kernel(qk2c)
		elif p[pi] == '2':
			Circ2(qk2g,fg,s,pi*s,s*M)
			prog.add_kernel(qk2g)
		else:
			Circ2(qk2t,ft,s,pi*s,s*M)
			prog.add_kernel(qk2t)
		# Reset Kernels
		prog.add_kernel(qk3)

	# Run multiple times to get average result
	#qk4 = ql.Kernel('QCirc4',platform)
	#qk4.measure(9)
	#qk4.measure(8)
	#qk4.measure(7)
	#qk4.measure(6)
	#prog.add_kernel(qk4)

	prog.compile(False, "ASAP", False)
	display()
	#showQasm(1)
	return

def Circ1(k,s,M):
	for Qi in range(0,(s+1)*M):
		k.prepz(Qi)
	for si in range(0,s):
		k.gate("h",si)
	for Mi in range(0,M-1):
		for si in range(0,s):
			k.gate("cnot",Mi*s+si,Mi*s+s+si)
		for si in range(0,s):
			k.gate("x",Mi*s+s-1-si)
			nc = []
			for sj in range(Mi*s+s-1,Mi*s+s-1-si-1,-1):
				nc.insert(0,sj)
			for sj in range(Mi*s+s+s-1,Mi*s+s+s-1-si-1,-1):
				nCX(k,nc,sj,s*M)		
			k.gate("x",Mi*s+s-1-si)
	return

def Circ2(k,f,s,q,anc):
	for fi in range(0,len(f)):
		#print(fi)
		if f[fi]:
			fis = format(fi,'0'+str(s)+'b')
			#print(fis)
			for fisi in range(0,s):
				if fis[fisi] == '0':
					k.gate("x",q+fisi)
			k.gate("h",q+s-1)
			nc = []
			for qsi in range(q,q+s-1):
				nc.append(qsi)
			#print(nc)
			nCX(k,nc,q+s-1,anc)
			k.gate("h",q+s-1)
			for fisi in range(0,s):
				if fis[fisi] == '0':
					k.gate("x",q+fisi)
	return

def Circ3(k,s,M):
	for si in range(0,s*M):
		k.gate("h",si)
		k.gate("x",si)
	k.gate("h",s*M-1)
	nc = []
	for sj in range(0,s*M-1):
		nc.append(sj)
	nCX(k,nc,s*M-1,s*M)
	k.gate("h",s*M-1)
	for si in range(0,s*M):
		k.gate("x",si)
		k.gate("h",si)
	return

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

def display():
	file = open("test_output/qg.qasm","a")	# Append display at end (simulator directive)
	file.write("display")
	file.close()

def showQasm(r):
	file = open("test_output/qg.qasm","r")
	#file = open("test_output/qg_scheduled.qasm","r")
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

def randStr(szA,sz):
	# Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal
	bias = 1/szA	# IMPROVE: add bias here
	rbs = ""
	for i in range(0,sz):
		rn = random()
		for j in range(0,szA):
			if rn < (j+1)*bias:
				rbs = rbs + str(j)	# IMPROVE: BCD version
				break
	return rbs

if __name__ == '__main__':
	QPM()