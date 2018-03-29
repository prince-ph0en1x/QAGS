function qg()
%% Quantum-accelerated Genome-sequencing-analysis
% based on Dan Ventura et al. Quantum Associative Memory 
	clear all
	clc

	szrg = 7;	% typically 3.0e+09 for Homo-Sapien reference genome
	szsr = 3;		% typically 3.0e+02	for Illumina short reads
	szA	= 2;		% 4 := {A,C,G,T} = {0,1,2,3}
	
	[~,rg] = randStr(szA,szrg)
	[~,sr] = randStr(szA,szsr)
	
	sr = strrep(sr,'1','?')		% test approximate matching
	szss = szsr;	% size of search string for DNA fingerprinting/assembly (=/> szsr)
	cdb = prepCdb(rg,szss);		% prepare classical database
	ucdb = unique(cdb,'rows');	% remove duplicate elements
	v = ones(1,size(ucdb,1));	% values to encode (optional)  
	qdb = prepQdb(ucdb,v);		% prepare quantum database
	state = rednDimn(qdb,szss);	% remove uncomputed ancillas
	
	plot(state,'-g')
	hold on
	state = runSrch(sr,state);	% run Quantum search operation
	plot(state,'-b')		
	axis([1 2^szss -1 1])
	psr = remWC(szA,sr);
	plot([psr'+1; psr'+1], [-1; 1]','-r')
	text([1], 0.7*[1], {'Pattern Matches'})
	[maxV,maxP] = max(state);
	plot([1; 2^szss], [maxV; maxV]','-r')
	text(0.8*[2^szss],[maxV], {'Search Result'})
	hold off
	
	% TBDs
		% Use runSrchU()
		% Use Rotation Matrix in Sij
		% Extend to a Alphabet size of 4+(insert,delete,gap) : insert = ? gap = _ delete = #
	
endfunction

	% Encode equal superposition in rolling code
		%   Alphabet A in {A,C,G,T} : |A| = 4
		%   Pattern Length N = 3
		%   String S : |S| = |A|^N + N - 1 = 4^3 + 3 - 1 = 66
		%   Preference Order: T > G > C > A
		%   Start: AAA
		%   
		%   	00	AAA	08	TCT	16	TGC	24	GTC	32	AGT	40	GGG	48	CCG	56	GAA
		%   	01	AAT	09	CTT	17	GCT	25	TCC	33	GTA	41	GGC	49	CGC	57	AAC
		%   	02	ATT	10	TTA	18	CTG	26	CCT	34	TAC	42	GCG	50	GCA	58	ACC
		%   	03	TTT	11	TAT	19	TGA	27	CTC	35	ACT	43	CGG	51	CAG	59	CCC
		%   	04	TTG	12	ATG	20	GAT	28	TCA	36	CTA	44	GGA	52	AGA	60	CCA
		%   	05	TGT	13	TGG	21	ATC	29	CAT	37	TAA	45	GAG	53	GAC	61	CAC
		%   	06	GTT	14	GGT	22	TCG	30	ATA	38	AAG	46	AGC	54	ACG	62	ACA
		%   	07	TTC	15	GTG	23	CGT	31	TAG	39	AGG	47	GCC	55	CGA	63	CAA
		%   
		%   S := AAATTTGTTCTTATGGTGCTGATCGTCCTCATAGTACTAAGGGCGGAGCCGCAGACGAACCCACAA

	% Equivalent circuits
		%  H1.Z1 = X1.H1
		%  H1.X1 = Z1.H1
		%  X1.CNOT21 = CNOT21.X1
		%  Z2.Z1.CNOT21 = CNOT21.Z2
		%  CNOT12 = H1.H2.CNOT21.H1.H2


	% Create equal superposition state
		%  for i = 0:numq-1
		%    state = U1(H,i,state);
		%  end
		%  
		%  dispState(state)