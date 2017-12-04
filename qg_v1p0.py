## Version Plan: Use pattern extension for genome sequencing

## Reference: Artificial Associative Memory Using Quantum Processes, Dan Ventura, 1998

## \date: 01-12-2017 - __-11-2017
## \author: Aritra Sarkar (prince-ph0en1x)

## \project: Quantum-accelerated Genome-sequencing

from openql import openql as ql
from random import *
from math import *
import os


def deutsch():
	config_fn = os.path.join('qg_v0p1.json')
	platform  = ql.Platform('platform_none', config_fn)
	num_qubits = 2
	p = ql.Program('qg', num_qubits, platform)
	k = ql.Kernel('aKernel', platform)

	# Alternate Commands Syntax: k.x(6), k.y(2), k.cnot(0,1)

	for q in range (0,num_qubits):
		k.prepz(q)

	k.gate("x",1)
	
	for q in range (0,num_qubits):
		k.gate("h",q)
	
	cr = random()
	if (cr < 0.25):
		print ("Balanced : IDENTITY")
		k.gate("cnot",0,1)
	elif (cr < 0.50):
		print ("Balanced : NOT")
		k.gate("x",0)
		k.gate("cnot",0,1)
		k.gate("x",0)
	elif (cr < 0.75):
		print ("Unbalanced : RESET")
	else:
		print ("Unbalanced : SET")
		k.gate("x",1)

	k.gate("h",0)
	
	for q in range (0,num_qubits):
		k.measure(q)

	# add the kernel to the program
	p.add_kernel(k)

	# compile the program
	p.compile(False, "ASAP", False)

	display()
	return

def display():
	file = open("test_output/qg.qasm","a")	# Append display at end (simulator directive)
	file.write("display")
	file.close()

def showQasm():
	file = open("test_output/qg.qasm","r")
	#file = open("test_output/qg_scheduled.qasm","r")
	for line in file:
		print (line,end='')
	print ()
	file.close()

def tryClassical():
	# Initialize Data Set
	norm_R = 4
	R = randBinStr(norm_R,0.5)
	norm_S = 2	# test exact match, later extend for partial match with bigger alphabet set
	S = randBinStr(norm_S,0.5)
	print("Find "+S+" in "+R)

	norm_Q = norm_R - norm_S + 1
	'''
	print(norm_Q)
	# Set Q
	for i in range(0,norm_Q):
		print(i,R[i:i+norm_S])
	'''

	# Create quantum state
	n = norm_S
	m = norm_Q
	norm_x = n
	norm_g = n - 1
	norm_c = 2
	numq = norm_x + norm_g + norm_c
	print(n,m,numq)
	
	print("Defining Unitary us := [1 0 0 0; 0 1 0 0; 0 0 a -b; 0 0 b a]")
	# s := {1}
	# p := 0 <= p <= m-1
	for p in range(0,m):
		a = p/sqrt(p+1)
		b = -1/sqrt(p+1)
		print("a&b for us_0"+str(p),a,b)


	#for q in range (0,numq):
	#	k.prepz(q)
	for p in range(0,m):
		zp = R[p:p+n]
		# FLIP
		for j in range(0,n):
			zp1 = ""
			if(p == 0):
				zp1 = "00"
			else:
				zp1 = R[p-1:p-1+n]
			#print(p,j,zp,zp1)
			if(zp[j] != zp1[j]):
				print('x q'+str(numq-1))
				print('cnot q'+str(numq-1)+',q'+str(j))
				print('x q'+str(numq-1))
		print('x q'+str(numq-1))
		print('cnot q'+str(numq-1)+',q'+str(numq-2))
		print('x q'+str(numq-1))

		print('us_0'+str(p)+" q"+str(numq-2)+',q'+str(numq-1))	# check control

		# AND
		if(zp[1] == '0' and zp[0] == '0'):
			print('x q0')
			print('x q1')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q1')
			print('x q0')
		elif(zp[1] == '0' and zp[0] == '1'):
			print('x q1')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q1')
		elif(zp[1] == '1' and zp[0] == '0'):
			print('x q0')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q0')
		else:
			print('toffoli q0,q1,q'+str(norm_x))
		for k in range(2,n):
			if(zp[k] == '0'):
				print('x q'+str(k))
				print('toffoli q'+str(k)+',q'+str(norm_x+k-2)+',q'+str(norm_x+k-1))
				print('x q'+str(k))
			else:
				print('toffoli q'+str(k)+',q'+str(norm_x+k-2)+',q'+str(norm_x+k-1))
		
		print('cnot q'+str(norm_x+norm_g-1)+',q'+str(numq-2))
		
		# AND+
		for k in range(n-1,1,-1):
			if(zp[k] == '0'):
				print('x q'+str(k))
				print('toffoli q'+str(k)+',q'+str(norm_x+k-2)+',q'+str(norm_x+k-1))
				print('x q'+str(k))
			else:
				print('toffoli q'+str(k)+',q'+str(norm_x+k-2)+',q'+str(norm_x+k-1))
		if(zp[1] == '0' and zp[0] == '0'):
			print('x q0')
			print('x q1')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q1')
			print('x q0')
		elif(zp[1] == '0' and zp[0] == '1'):
			print('x q1')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q1')
		elif(zp[1] == '1' and zp[0] == '0'):
			print('x q0')
			print('toffoli q0,q1,q'+str(norm_x))
			print('x q0')
		else:
			print('toffoli q0,q1,q'+str(norm_x))

	print('x q'+str(numq-1))
		




def randBinStr(sz,bias):
	# Extend to alphabet of size |A|
	rbs = ""
	for i in range(0,sz):
		if(random() > bias):
			rbs = rbs + "1"
		else:
			rbs = rbs + "0"
	return rbs

if __name__ == '__main__':
    tryClassical()