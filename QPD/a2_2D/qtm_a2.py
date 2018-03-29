## Reference: Fast quantum search algorithms in protein sequence comparison: Quantum bioinformatics - L. Hollenberg
## arXiv:

## \date: 23-01-2018 - 24-01-2018
## \repo: https://gitlab.com/prince-ph0en1x/QuInE
## \proj: Quantum-accelerated Genome-sequencing

from openql import openql as ql
from random import random
from math import *
from PIL import Image
import os

def QPD():
    
    '''
    w2di = Image.open("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/panda18.png")    
    w2d = w2di.convert('RGBA')
    wbw = w2d
    for i in range(0,w2d.size[0]):
        for j in range(0,w2d.size[1]):
            if w2d.getpixel((i,j))[3] == 0:		# Set transparent to white
                wbw.putpixel((i,j),(255,255,255))
            elif w2d.getpixel((i,j))[0] > 150:
                wbw.putpixel((i,j),(255,255,255))
            else:
                wbw.putpixel((i,j),(0,0,0))
    wbw.save("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/panda18bw.png")
    '''
    
    A = 2		# Binary Alphabet {0,1} := {(0,0,0),(255,255,255)} Black and White Image
    D = 2

    w2di = Image.open("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/panda18bw.png")
    w2d = w2di.convert('RGB')
    N0 = w2di.size[0]
    N1 = w2di.size[1]
    
    '''
    for Msz in range(1,20):
        M0 = Msz
        M1 = Msz
        Q_tag = ceil(log2(N0-M0+1)) + ceil(log2(N1-M1+1))
        Q_data = ceil(log2(A)) * M0 * M1
        Q_anc = 1  
        print([Msz,Q_tag+Q_data+Q_anc])
    # Template Size vs Total Qubits: [1, 14],[2, 17],[3, 22],[4, 29],[5, 38],[6, 49],[7, 62]
    '''

    '''
    M0 = 3
    M1 = 3
    idx0 = 9		# Expected Answer i_0
    idx1 = 8		# Expected Answer i_1
    p2d = w2d.crop((idx0,idx1,idx0+M0,idx1+M1)) 
    p2d.save("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/panda_p.png")
    
    ans = w2d
    for i in range(idx0,idx0+M0):
        for j in range(idx1,idx1+M1):
            if ans.getpixel((i,j))[0] == 255:
                ans.putpixel((i,j),(0,255,0))
            else:
                ans.putpixel((i,j),(255,0,0))
    ans.save("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/answer.png")
    '''

    p2di = Image.open("/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/qtm_a2/panda_p.png")
    p2d = p2di.convert('RGB')
    M0 = p2di.size[0]
    M1 = p2di.size[1]

    Q_tag = ceil(log2(N0-M0+1)) + ceil(log2(N1-M1+1))
    Q_data = ceil(log2(A)) * M0 * M1
    Q_anc = 1  
    anc = Q_tag + Q_data

    config_fn = os.path.join('gateConfig.json')
    platform = ql.Platform('platform_none', config_fn)
    
    Q_total =  Q_tag + Q_data + Q_anc
    prog = ql.Program('qg', Q_total, platform)

    # Kernel 1: Construct Quantum Phone Directory
    qk1 = ql.Kernel('QCirc1',platform)    
    Circ1(qk1,w2d,N0,N1,M0,M1,Q_total,Q_tag,Q_data,anc)

    # Kernel 2: Calculate Hamming Distance
    qk2 = ql.Kernel('QCirc2',platform)
    Circ2(qk2,p2d,M0,M1,Q_tag)
    
    # Kernel 3: Oracle to Mark Hamming Distance of 0
    qk3 = ql.Kernel('QCirc3',platform)
    Circ3(qk3,Q_tag,Q_data)

    # Kernel 4: Amplitude Amplification
    qk4 = ql.Kernel('QCirc4',platform)
    Circ4(qk4,Q_tag,Q_data,Q_anc)

    # Kernel 5: Partial Amplitude Amplification
    qk5 = ql.Kernel('QCirc5',platform)
    Circ5(qk5,Q_tag,Q_data,Q_anc)
    
    prog.add_kernel(qk1)
    prog.add_kernel(qk2)
    for i in range(0,1):    # Optimal iteration from calculation is 111
        prog.add_kernel(qk3)
        prog.add_kernel(qk5)
        prog.add_kernel(qk3)
        prog.add_kernel(qk4)

    prog.compile(False, "ASAP", False)
    display()
    #showQasm(1)

def Circ1(k,w2d,N0,N1,M0,M1,Q_total,Q_tag,Q_data,anc):
    for Qi in range(0,Q_total):
        k.prepz(Qi)
    for Qi in range(0,Q_tag):
        k.gate("h",Qi)
    nc = []
    for ci in range(0,Q_tag):
        nc.append(ci)
    Qt0 = ceil(log2(N0-M0+1))
    Qt1 = ceil(log2(N1-M1+1))
    for i0 in range(0,N0-M0+1):
        i0s = format(i0,'0'+str(Qt0)+'b')
        for i0si in range(0,Qt0):
            if i0s[i0si] == '0':
                k.gate("x",i0si)
        for i1 in range(0,N1-M1+1):
            i1s = format(i1,'0'+str(Qt1)+'b')
            for i1si in range(0,Qt1):
                if i1s[i1si] == '0':
                    k.gate("x",Qt0+i1si)
            for w2dim0i in range(0,M0):
                for w2dim1i in range(0,M1):
                    if w2d.getpixel((i0+w2dim0i,i1+w2dim1i))[0] == 0:
                        nCXb(k,nc,Q_tag+w2dim0i*M1+w2dim1i,anc)
            for i1si in range(0,Qt1):
                if i1s[i1si] == '0':
                    k.gate("x",Qt0+i1si)
        for i0si in range(0,Qt0):
            if i0s[i0si] == '0':
                k.gate("x",i0si)
                 
def Circ2(k,p2d,M0,M1,Q_tag):
    for p2dm0i in range(0,M0):
        for p2dm1i in range(0,M1):
            if p2d.getpixel((p2dm0i,p2dm1i))[0] == 0:
                k.gate("x",Q_tag+p2dm0i*M1+p2dm1i)
    
def Circ3(k,Q_tag,Q_data):
    nc = []
    for Qi in range(0,Q_data):
        k.gate("x",Q_tag+Qi)
        if Qi > 0:
            nc.append(Q_tag+Qi)
    k.gate("h",Q_tag)
    nCXb(k,nc,Q_tag,0)
    k.gate("h",Q_tag)
    for Qi in range(0,Q_data):
        k.gate("x",Q_tag+Qi)

def Circ4(k,Q_tag,Q_data,Q_anc):
    for si in range(0,Q_tag+Q_data):
        k.gate("h",si)
        k.gate("x",si)
    k.gate("h",0)
    nc = []
    for sj in range(1,Q_tag+Q_data):
        nc.append(sj)
    nCXb(k,nc,0,Q_anc)
    k.gate("h",0)
    for si in range(0,Q_tag+Q_data):
        k.gate("x",si)
        k.gate("h",si)
    return

def Circ5(k,Q_tag,Q_data,Q_anc):
    for si in range(Q_tag,Q_tag+Q_data):
        k.gate("h",si)
        k.gate("x",si)
    k.gate("h",Q_tag)
    nc = []
    for sj in range(Q_tag+1,Q_tag+Q_data):
        nc.append(sj)
    nCXb(k,nc,0,Q_anc)
    k.gate("h",Q_tag)
    for si in range(Q_tag,Q_tag+Q_data):
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

def nCXb(k,c,t,b):
    #print([c,t,b])
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
        nb1 = 0
        for bi in range(0,50):
            if not (bi in c1) and bi != b:
                nb1 = bi
                break
        nb2 = 0
        for bi in range(0,50):
            if not (bi in c2) and bi != t:
                nb2 = bi
                break 
        nCXb(k,c1,b,nb1)
        nCXb(k,c2,t,nb2)
        nCXb(k,c1,b,nb1)
        nCXb(k,c2,t,nb2)
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