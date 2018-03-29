## Reference: Quantum Pattern Matching - P. Mateus and Y. Omar
## arXiv: quant-ph/0508237

## \date: 01-12-2017 - 20-01-2017
## \repo: https://gitlab.com/prince-ph0en1x/QuInE
## \proj: Quantum-accelerated Genome-sequencing

from openql import openql as ql
from random import random
from math import *
import os

def QPM():
    
    N = 9           # Reference String size
    w = "111000000" # Reference String      #randStr(2,N)   
    M = 2           # Search String size
    p = "10"        # Search String         #randStr(2,M)   
    s = ceil(log2(N))
    
    config_fn = os.path.join('gateConfig.json')
    platform = ql.Platform('platform_none', config_fn)


    total_qubits = 2*s*M-2
    prog = ql.Program('qg', total_qubits, platform)
    
    # Initialization
    qk1 = ql.Kernel('QCirc1',platform)
    Circ1(qk1,s,M)
    prog.add_kernel(qk1)
    
    # Oracle Kernels
    qk2_0 = ql.Kernel('QCirc2_0',platform)
    qk2_1 = ql.Kernel('QCirc2_1',platform)
    
    # Grover Amplitude Amplification
    qk3 = ql.Kernel('QCirc3',platform)
    Circ3(qk3,s,M)
    
    f0 = []
    f1 = []
    for wi in range(0,2**s):
        if wi >= N:
            f0.append(False)
            f1.append(False)
        elif w[wi] == '0':
            f0.append(True)
            f1.append(False)
        elif w[wi] == '1':
            f0.append(False)
            f1.append(True)
    
    for pi in range(0,M):
        if p[pi] == '0':
            Circ2(qk2_0,f0,s,pi*s,s*M)
        elif p[pi] == '1':
            Circ2(qk2_1,f1,s,pi*s,s*M)
        # Improve: Reset Kernels
    
    iterMax = 1  #ceil(sqrt(2**(s*M)))
    print()
    for iter in range(0,iterMax):
        #print(iter)
        for pi in range(0,M):
            if p[pi] == '0':
                prog.add_kernel(qk2_0)
            elif p[pi] == '1':
                prog.add_kernel(qk2_1)
            prog.add_kernel(qk3)
    
    prog.compile(False, "ASAP", False)
    display()
    #showQasm(1)

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
    
def Circ2(k,f,s,q,anc):
    for fi in range(0,len(f)):
        if f[fi]:
            fis = format(fi,'0'+str(s)+'b')
            for fisi in range(0,s):
                if fis[fisi] == '0':
                    k.gate("x",q+fisi)
            k.gate("h",q+s-1)
            nc = []
            for qsi in range(q,q+s-1):
                nc.append(qsi)
            nCX(k,nc,q+s-1,anc)
            k.gate("h",q+s-1)
            for fisi in range(0,s):
                if fis[fisi] == '0':
                    k.gate("x",q+fisi)

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
    QPM()