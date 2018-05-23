% Reference: Quantum associative memory with improved distributed queries - J.P.T. Njafa, S.G.N. Engo, P. Woafo 
% Reference: Quantum algorithms for pattern matching in genomic sequences - A. Sarkar
% \author: Aritra Sarkar (prince-ph0en1x)
% \project: Quantum-accelerated Genome-sequencing
% \repo: https://gitlab.com/prince-ph0en1x/QaGs

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
function mtlb_qam_a4_idq()
	close all
	clear all
	clc

	AS = {'A','C','G','T'};		% Alphabet set {0,1,2,3} := {A,C,G,T} for DNA Nucleotide bases
	A = size(AS,2);				% Alphabet size
	Qa = ceil(log2(A));			% Number of qubits to encode a character of the alphabet
	
	R = 'TTGTCTAGGCGACCA';
	N = size(R,2);				% Reference genome size
	M = 2;						% Short read size
	P = 'AA';					% Search pattern (always a series of A, due to minimal Hamming distance as the query center)
	Pb = '0000';				% Binary encoding for P
	Qd = Qa*M;					% Number of qubits to encode the quantum genomic database
	SS = 2^Qd;					% State space
	
	qbodq = 0.25;				% q for the Binomial distribution for distributed query
	bp = ones(1,SS);
	for i = 1:SS
		hd = sum(sprintf('%s',dec2bin(i-1,Qd)) ~= Pb);
		bp(i) = sqrt((qbodq^(hd))*((1-qbodq)^(Qd-hd)));
	end
	plot([0:SS-1],bp,'v-.b')
	hold on
	BO = eye(SS) - 2*bp'*bp;
	%maxerrabs = max(max(abs(BO*BO')-abs(eye(SS))))	% Check if Unitary

	%BOD = QSD_opql(BO,3,[0:Qd-1]);	% Arg2 : 1 - no qasm, no AP; 2 - qasm, AP; 3+ - qasm, no AP
	Q_T = 4;
	BOD = QSD_opql(BO,3,[0+Q_T:Qd-1+Q_T]);	% Arg2 : 1 - no qasm, no AP; 2 - qasm, AP; 3+ - qasm, no AP
	maxerrabs = max(max(abs(BOD)-abs(BO)))			% Check decomposition error
	
	%% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ TEST ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
	s = ones(1,16);
	s(1) = 0;	% AA
	s(4) = 0;	% AT
	s(16) = 3;	% TT
	s = sqrt(s/SS);					% Prepare initial state
	plot([0:SS-1],abs(s).^2,'^-.r')

	s = (BOD*s')';				% Distributed Query
	s = -s + 2*mean(s);			% Diffuse
	s = -s;						% Memorised Oracle
	s(1) = -s(1);
	s(4) = -s(4);
	s = -s + 2*mean(s);			% Diffuse
	plot([0:SS-1],abs(s).^2,'s-m')
	axis([0 SS-1 0 1])
	legend('Distributed Query','Quantum Memory','Final State')
	xlabel('State')
	ylabel('Probability')
end

%% Generates a classical database from the reference genome rg with entries of size szss

function cdb = prepCdb(rg,szss)
	cdb = [];
	for i = 1:size(rg,2)-szss+1
		cdb = [num2str(cdb); num2str(rg(i:i+szss-1))];
	end
end