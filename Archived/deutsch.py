## Code to test Deutsch's problem using OpenQL and QX_Simulator

## \date: 15-11-2017 - 15-11-2017
## \author: Aritra Sarkar (prince-ph0en1x)
## \project: Quantum-accelerated Genome-sequencing

from openql import openql as ql
from random import random
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
	for line in file:
		print (line,end='')
	print ()
	file.close()

if __name__ == '__main__':
    deutsch()
    #showQasm()