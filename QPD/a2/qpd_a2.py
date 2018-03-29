## Reference: Fast quantum search algorithms in protein sequence comparison: Quantum bioinformatics - L. Hollenberg
## arXiv:

## \date: 23-01-2018 - 25-01-2018
## \repo: https://gitlab.com/prince-ph0en1x/QuInE
## \proj: Quantum-accelerated Genome-sequencing

'''
* Solution probability independent of p
* Steps
	Init with w
	Dist with p
	Find 0 dist and AA
'''

from openql import openql as ql
from random import random
from math import *
import os

def QPD():
    
    A = 2			# Binary Alphabet {0,1}
    
    N = 11           	# Reference String size
    w = "11001010001" # Reference String      #randStr(2,N)
    
    M = 4           	# Search String size
    dummyp = "0000" 	# indices out of range will be tagged with dummyp data
    p = "1010"      	# Search String         #randStr(2,M)   

    Q1 = ceil(log2(A))*M	# Data Qubits
    Q2 = ceil(log2(N-M+1))	# Tag Qubits 

    config_fn = os.path.join('gateConfig.json')
    platform = ql.Platform('platform_none', config_fn)
    
    ancmax = 1	#(Q1+Q2)-1
    anc = Q1+Q2
    total_qubits = Q1+Q2+ancmax
    prog = ql.Program('qg', total_qubits, platform)

    # Kernel 1: Construct Quantum Phone Directory
    qk1 = ql.Kernel('QCirc1',platform)
    Circ1(qk1,w,N,M,total_qubits,Q1,Q2,anc)

    # Kernel 2: Calculate Hamming Distance
    qk2 = ql.Kernel('QCirc2',platform)
    Circ2(qk2,p,M,Q1,Q2)
    
    # Kernel 3: Oracle to Mark Hamming Distance of 0
    qk3 = ql.Kernel('QCirc3',platform)
    Circ3(qk3,M,Q2,anc)
    
    # Kernel 4: Amplitude Amplification
    qk4 = ql.Kernel('QCirc4',platform)
    Circ4(qk4,Q1,Q2,anc)    

    prog.add_kernel(qk1)
    prog.add_kernel(qk2)
    for i in range(0,2):
        prog.add_kernel(qk3)
        prog.add_kernel(qk4)

    prog.compile(False, "ASAP", False)
    display()
    #showQasm(1)

def Circ1(k,w,N,M,total_qubits,Q1,Q2,anc):
    for Qi in range(0,total_qubits):
        k.prepz(Qi)
    for Qi in range(0,Q2):
        k.gate("h",Qi)
    nc = []
    for ci in range(0,Q2):
        nc.append(ci)
    for Qi in range(0,N-M+1):
        Qis = format(Qi,'0'+str(Q2)+'b')
        for Qisi in range(0,Q2):
            if Qis[Qisi] == '0':
                k.gate("x",Qisi)
        wMi = w[Qi:Qi+M]
        print([Qis,wMi])
        for wisi in range(0,M):
            if wMi[wisi] == '1':
                nCXb(k,nc,Q2+wisi,anc)
        for Qisi in range(0,Q2):
            if Qis[Qisi] == '0':
                k.gate("x",Qisi)

def Circ2(k,p,M,Q1,Q2):
    for Qi in range(0,M):
        if p[Qi] == '1':
            k.gate("x",Q2+Qi)

def Circ3(k,M,Q2,anc):
    for Qi in range(0,M):
        k.gate("x",Q2+Qi) 
    k.gate("h",Q2)
    nc = [4,5,6]
    nCXb(k,nc,Q2,0)
    k.gate("h",Q2)
    for Qi in range(0,M):
        k.gate("x",Q2+Qi)

def Circ4(k,Q1,Q2,anc):
    for si in range(0,Q1+Q2):
        k.gate("h",si)
        k.gate("x",si)
    k.gate("h",0)
    nc = []
    for sj in range(1,Q1+Q2):
        nc.append(sj)
    nCXb(k,nc,0,anc)
    k.gate("h",0)
    for si in range(0,Q1+Q2):
        k.gate("x",si)
        k.gate("h",si)
    return

def nCXb(k,c,t,b):
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
        nCXb(k,c1,b,nch+1)
        nCXb(k,c2,t,nch-1)
        nCXb(k,c1,b,nch+1)
        nCXb(k,c2,t,nch-1)
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
    file = open("test_output/qg.qasm","a")  # Append display at end (simulator directive)
    file.write("display")
    file.close()

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

def randStr(szA,sz):
    # Generates a random string of length 'sz' over the alphabet of size 'szA' in decimal
    bias = 1/szA    # Improve: add bias here
    rbs = ""
    for i in range(0,sz):
        rn = random()
        for j in range(0,szA):
            if rn < (j+1)*bias:
                rbs = rbs + str(j)  # Improve: BCD version
                break
    return rbs

if __name__ == '__main__':
    QPD()