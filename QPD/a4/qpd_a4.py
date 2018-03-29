## Reference: Fast quantum search algorithms in protein sequence comparison: Quantum bioinformatics - L. Hollenberg
## arXiv:

## \date: 24-01-2018 - 09-02-2018
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
    
    A = 4		# DNA Alphabet {0,1,2,3} := {A,C,G,T}
    
    N = 10           # Reference String size
    w = "2302031020" # Reference String      #randStr(A,N)
    
    M = 3           # Search String size
    dummyp = "000"  # indices out of range will be tagged with dummyp data
    p = "203"       # Search String         #randStr(A,M)   
    
    asz = ceil(log2(A))
    Q1 = asz*M			# Data Qubits
    Q2 = ceil(log2(N-M+1))	# Tag Qubits 

    config_fn = os.path.join('gateConfig.json')
    platform = ql.Platform('platform_none', config_fn)
    
    ancmax = 1 #(Q1+Q2)-2
    anc = Q1+Q2
    total_qubits = Q1+Q2+ancmax
    prog = ql.Program('qg', total_qubits, platform)

    # Kernel 1: Construct Quantum Phone Directory
    qk1 = ql.Kernel('QCirc1',platform)
    Circ1(qk1,asz,w,N,M,total_qubits,Q2,anc)
    
    # Kernel 2: Calculate Hamming Distance
    qk2 = ql.Kernel('QCirc2',platform)
    Circ2(qk2,asz,p,M,Q1,Q2)
    
    # Kernel 3: Oracle to Mark Hamming Distance of 0
    qk3 = ql.Kernel('QCirc3',platform)
    Circ3(qk3,asz,M,Q1,Q2,anc)
    
    # Kernel 4: Amplitude Amplification
    qk4 = ql.Kernel('QCirc4',platform)
    Circ4(qk4,Q1,Q2,anc)    
    
    # Finding optimal iterations for known arbitrary initial amplitude distribution
    '''    
    A = 4;
    M = 3;
    N = 10;
    r = 1;
    
    iMx = N-M+1;
    qtag = ceil(log2(iMx));
    qb = qtag + M*ceil(log2(A));
    sMx = 2^qb;
    
    kavg0 = 1/sqrt(iMx);
    lavg0 = (iMx - r)/((sMx - r)*sqrt(iMx));
    Pmax = 1 - (sMx-iMx)*lavg0^2 - (iMx-r)*(1/sqrt(iMx) - lavg0)^2
    
    j = [0:9];
    T = ((j+0.5)*pi - atan(kavg0*sqrt(r/(sMx-r))/lavg0))/acos(1-2*r/sMx)'
    '''    
    # T = [3.3964, 38.9279, 74.4593, 109.9908, 145.5223, 181.0538, 216.5853, 252.1168, 287.6483, 323.1798]

    prog.add_kernel(qk1)
    prog.add_kernel(qk2)
    for i in range(0,3):
        prog.add_kernel(qk3)
        prog.add_kernel(qk4)

    prog.compile(False, "ASAP", False)
    display()
    #showQasm(1)

def Circ1(k,asz,w,N,M,total_qubits,Q2,anc):
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
            wisia = format(int(wMi[wisi]),'0'+str(asz)+'b')
            for wisiai in range(0,asz):
                if wisia[wisiai] == '1':
                    nCXb(k,nc,Q2+wisi*asz+wisiai,anc)
        for Qisi in range(0,Q2):
            if Qis[Qisi] == '0':
                k.gate("x",Qisi)

def Circ2(k,asz,p,M,Q1,Q2):
    for pi in range(0,M):
        ppi = format(int(p[pi]),'0'+str(asz)+'b')
        for ppii in range(0,asz):
            if ppi[ppii] == '1':
                k.gate("x",Q2+pi*asz+ppii)
    
def Circ3(k,asz,M,Q1,Q2,anc):
    for Qi in range(0,Q1):
        k.gate("x",Q2+Qi) 
    k.gate("h",Q2)
    nc = [4,5,6,7,8]
    nCXb(k,nc,Q2,anc)
    k.gate("h",Q2)
    for Qi in range(0,Q1):
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
    #nCX(k,c,t,b)
    #return
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