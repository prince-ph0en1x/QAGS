## Code to test Bernstein-Vazirani problem using OpenQL and QX_Simulator

## \date: 15-11-2017 - 15-11-2017
## \author: Aritra Sarkar (prince-ph0en1x)
## \project: Quantum-accelerated Genome-sequencing

from openql import openql as ql
from random import *
import os

def vazirani():
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
    vazirani()
    #showQasm()