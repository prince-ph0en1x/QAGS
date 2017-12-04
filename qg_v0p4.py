## Version Plan: Code to create custom Oracles for Grover search using OpenQL and QX_Simulator

## \date: 24-11-2017 - __-11-2017
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

def bernstein_vazirani():
	config_fn = os.path.join('qg_v0p1.json')
	platform  = ql.Platform('platform_none', config_fn)
	num_qubits = 7
	p = ql.Program('qg', num_qubits, platform)
	k = ql.Kernel('k_bv', platform)

	# Alternate Commands Syntax: k.x(6), k.y(2), k.cnot(0,1)

	for q in range (0,num_qubits):
		k.prepz(q)

	k.gate("x",num_qubits-1)
	
	for q in range (0,num_qubits-1):
		k.gate("h",q)
	
	a = randint(0, 2**(num_qubits-1) - 1)
	for b in range (0,num_qubits-1):
		if ((a >> b) & 1 == 1):			
			k.gate("h",num_qubits-1)
			k.gate("cnot",b,num_qubits-1)
			k.gate("h",num_qubits-1)

	print ("Encoded Sequence :"+str(bin(a)))

	for q in range (0,num_qubits):
		k.gate("h",q)
	
	for q in range (0,num_qubits-1):
		k.measure(q)

	# add the kernel to the program
	p.add_kernel(k)

	# compile the program
	p.compile(False, "ASAP", False)

	display()
	return

def deutsch_jozsa():
	return

def simon():
	return

def grover():
	config_fn = os.path.join('qg_v0p1.json')
	platform  = ql.Platform('platform_none', config_fn)
	num_qubits = 4
	p = ql.Program('qg', num_qubits, platform)
	k = ql.Kernel('k_bv', platform)

	# Alternate Commands Syntax: k.x(6), k.y(2), k.cnot(0,1)

	for q in range (0,num_qubits):
		k.prepz(q)

	'''
	# Creating a superposition state
	k.gate("h",0)
	k.gate("h",1)

	cycles = ceil(sqrt(pow(num_qubits,2)))	# Quadratic Query complexity speedup
	
	# Encoding the Oracle function for f(|11>) = 1
	k.gate("cz",0,1)

	# Grover diffusion - amplitude amplification - inversion about mean
	# kron(h,h) * kron(x,x*h)*cnot*kron(x,h*x) * kron(h,h)
	k.gate("h",0)
	k.gate("h",1)
	k.gate("x",0)
	k.gate("x",1)
	k.gate("h",1)
	k.gate("cnot",0,1)
	k.gate("h",1)
	k.gate("x",0)
	k.gate("x",1)	
	k.gate("h",0)
	k.gate("h",1)

	for q in range (0,num_qubits):
		k.measure(q)
	'''

	k.gate("h",0)
	k.gate("h",1)
	k.gate("cnot",0,2)
	k.gate("cnot",1,3)

	k.gate("x",1)
	k.gate("cnot",1,3)
	k.gate("x",1)

	k.gate("x",0)
	#k.gate("toffoli",0,1,3)
	#k.gate("toffoli",0,1,2)
	k.gate("x",0)
	
	# add the kernel to the program
	p.add_kernel(k)

	# compile the program
	p.compile(False, "ASAP", False)

	display()
	return

def BBQT():
	return

def QFT():
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

if __name__ == '__main__':
    grover()
    showQasm()