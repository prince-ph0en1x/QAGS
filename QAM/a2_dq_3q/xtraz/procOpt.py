import re
dirProj = "/mnt/7A06EEA206EE5E9F/GoogleDrive/TUD_CE/Thesis/SimQG/QuInE/examples/quamdq_a2"
file = open(dirProj+"/"+"opt.txt",'r')
ptrn = re.compile('\(([+-]\d+.\d*),([+-]\d+.\d*)\)\s[|]([0-1]*)>')
rslt = [0]*(2**3)
for line in iter(file):
    mtch = ptrn.search(line)
    if mtch != None:
        re = float(mtch.group(1))
        im = float(mtch.group(2))
        state = mtch.group(3)
        #sidx = int(state[1:4][::-1],2)
        sidx = int(state[4:7][::-1],2)
        rslt[sidx] = rslt[sidx] + (re**2 + im**2)
print(rslt)
'''
norml = 0
for i in range(0,len(rslt)):
    norml = norml + rslt[i]
print(norml)


p = [0, 0, 0.3536, 0.3536, 0.3536, 0.3536, 0.3536, 0.6124]
p = [0.6857-0.2840j, 0.3959-0.1640j, 0.0693-0.0287j, -0.0981+0.0406j, 0.0693-0.0287j, -0.0981+0.0406j, -0.0981+0.0406j, -0.4338+0.1797j]

for i in range(0,len(p)):
    p[i] = p[i].real**2 + p[i].imag**2
print(p)
norml = 0
for i in range(0,len(p)):
    norml = norml + p[i]
print(norml)
'''