## Reference: 2000 - Quantum associative memory with distributed queries

## \date: 29-03-2018
## \repo: https://gitlab.com/prince-ph0en1x/QaGs
## \proj: Quantum-accelerated Genome-sequencing

###################################################################################################
#                                            Algorithm                                            #
###################################################################################################
	
# Quantum Bi-directional Associative Memory


###################################################################################################

from openql import openql as ql
import qxelarator

from random import random
from math import *
import os

'''
cd /mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE
python3 /mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QaGs/QAM/a4_dq/a4_dq.py
'''


###################################################################################################

def QBAM():
	
	config_fn = os.path.join('gateConfig.json')
	platform = ql.Platform('platform_none', config_fn)
	prog = ql.Program('qg', 2, platform)

	qk1 = ql.Kernel('QCirc1',platform)
	qk1.prepz(0)
	qk1.gate("h",0)
	qk1.gate("cnot",0,1)
	qk1.gate("x",0)
	prog.add_kernel(qk1)

	'''
	T = CalcIter(0,2)

	for i in range(0,T):
		prog.add_kernel(qk3)
		prog.add_kernel(qk4)
	'''

	prog.compile(False, "ASAP")
	#display()
	measure(0)
	measure(1)
	execQasm()

def execQasm():
	qx = qxelarator.QX()
	qx.set('test_output/qg.qasm')
	
	NTests = 1000
	true_counter = 0
	true_counter1 = 0
	for i in range(NTests):
		qx.execute()
		res = qx.get_measurement_outcome(0)
		res1 = qx.get_measurement_outcome(1)
		true_counter = true_counter + res
		true_counter1 = true_counter1 + res1

	print( 'True percentage = {}'.format(true_counter/NTests*100) )
	print( 'True percentage = {}'.format(true_counter1/NTests*100) )

###################################################################################################

# Append display at end of QASM (simulator directive) for result analysis

def display():
	file = open("test_output/qg.qasm","a")
	file.write("display")
	file.close()

###################################################################################################

# Append measure at end of QASM (simulator directive) for result analysis

def measure(qno):
	file = open("test_output/qg.qasm","a")
	file.write("measure q"+str(qno)+"\n")
	file.close()

###################################################################################################

if __name__ == '__main__':
	QBAM()

