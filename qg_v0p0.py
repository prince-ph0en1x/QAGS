from random import random

nb = {0:"A", 1:"C", 2:"G", 3:"T"}
sbsmat = ((1,-1,-1,-1),(-1,1,-1,-1),(-1,-1,1,-1),(-1,-1,-1,1))
sr = ("CATATATAGACT","CATTAGACT","CAT","AT","A","TAG","ACT")
rg = str("")

def initRefGenome(size):
	global rg
	for i in range(0,size):
		r = random()
		if (r < 0.25):
			rg = rg+str(nb[0])
		elif (r < 0.5):
			rg = rg+str(nb[1])
		elif (r < 0.75):
			rg = rg+str(nb[2])
		else:
			rg = rg+str(nb[3])
	return

def seqGen(rno):
	print ("Reference Genome : "+rg)
	print ("Short Read 0 : "+sr[rno]+"\n")
	H = [[0 for x in range(0,len(rg)+1)] for y in range (0,len(sr[rno])+1)]
	rmax = [0 for r in range (0,len(sr[rno]))]
	cmax = [0 for c in range (0,len(rg))]
	for r in range(1,len(H)):
		for c in range(1,len(H[0])):
			h1 = H[r-1][c-1] + scost(r-1,c-1,rno)
			h2 = rmax[r-1] - gapCost(1)
			h3 = cmax[c-1] - gapCost(1)
			H[r][c] = max(h1,h2,h3,0)
			if (rmax[r-1] < H[r][c]):
				rmax[r-1] = H[r][c]
			if (cmax[c-1] < H[r][c]):
				cmax[c-1] = H[r][c]
			#print ((h1,h2,h3))
			#print ("\nNew H "+str(H[r][c]))
			#return
	showProg(H,rno)
	
	return

def scost(a,b,rno):
	nbsr = list(nb.keys())[list(nb.values()).index(sr[rno][a])]
	nbrg = list(nb.keys())[list(nb.values()).index(rg[b])]
	#print(a,b,rno,sbsmat[nbsr][nbrg],end='')
	return sbsmat[nbsr][nbrg]

def gapCost(k):
	u = 2
	v = 1
	Wk = u*(k-1)+v	# Affine Gap Penalty
	return Wk

def showProg(H,rno):
	print("\n  "+rg)
	for x in range(0,len(H)):
		if (x > 0):
			print (sr[rno][x-1],end='')
		else:
			print (" ",end='')
		for y in range(0,len(H[0])):
			print (H[x][y],end='')
		print ()
def FFT():
	return

def QFT():
	return

def Grover():
	return

initRefGenome(100)
seqGen(2)