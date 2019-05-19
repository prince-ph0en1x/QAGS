# QAGS

Quantum Accelerated Genome Sequencing

### Info

This repository hosts accompanying codes for Aritra Sarkar's Master thesis in [Computer Engineering](https://www.tudelft.nl/en/education/programmes/masters/computer-engineering/msc-computer-engineering/) at [Delft University of Technology](https://www.tudelft.nl/en/).

The research was conducted in the period 01-11-2017 to 22-06-2018 at the [Quantum Computer Architecture lab](https://www.tudelft.nl/en/eemcs/the-faculty/departments/quantum-computer-engineering/quantum-computer-architecture-lab/) under the supervision of Prof. Dr. Koen Bertels, Dr. Carmen G. Almudever and Dr. Zaid Al-Ars.

The QCA lab is affiliated to [QuTech](https://qutech.nl/) and the [Quantum & Computer Engineering department](https://www.tudelft.nl/en/eemcs/the-faculty/departments/quantum-computer-engineering/), as a collaboration between the [Faculty of Applied Sciences](https://www.tudelft.nl/en/tnw/) and the [Faculty of Electrical Engineering, Mathematics and Computer Science](https://www.tudelft.nl/en/eemcs/).

Thesis: [Quantum Algorithms for pattern-matching in genomic sequences](http://resolver.tudelft.nl/uuid:4257310d-6d8b-4f5a-9fda-00cf8e081f0e)

### Brief

Fast sequencing and analysis of (microorganism, plant or human) genomes will open up new vistas in fields like personalised medication, food yield and epigenetic research. Current state-of-the-art DNA pattern matching techniques use heuristic algorithms on computing clusters of CPUs, GPUs and FPGAs. With genomic data set to eclipse social and astronomical big data streams within a decade, the alternate computing paradigm of quantum computation is explored to accelerate genome-sequence reconstruction. The inherent parallelism of quantum superposition of states is harnessed to design a quantum kernel for accelerating the search process. The project explores the merger of these two domains and identifies ways to fit these together to design a genome-sequence analysis pipeline with quantum algorithmic speedup. The design of a genome-sequence analysis pipeline with a quantum kernel is tested with a proof-of-concept demonstration using a quantum simulator.

With small-scale quantum processors transitioning from experimental physics labs to industrial products, these processors allow us to efficiently compute important algorithms in various fields. In this research, we propose a quantum algorithm to address the challenging field of big data processing for genome sequence analysis. We describes an architecture-aware implementation of a quantum algorithm
for sub-sequence alignment. A new algorithm named QiMAM (quantum indexed multi-associative memory) is proposed, that uses approximate pattern-matching based on Hamming distances. QiMAM extends the Grover's search algorithm in two ways to allow for: (1) approximate matches needed for read errors in genomics, and (2) a distributed search for multiple solutions over quantum encoding of DNA sequences.
This approach gives a quadratic speedup over the classical algorithm. A full implementation of the algorithm is provided and verified using the OpenQL compiler and QX simulator framework. This represents a first exploration towards a full-stack quantum accelerated genome sequencing pipeline design.

### Algorithms

The codes are written in Python, using the [OpenQL quantum compiler](https://github.com/QE-Lab/OpenQL) and [Qxelerator simulator encapsulator](https://github.com/QE-Lab/qx-simulator/tree/master/qxelarator) for [QX quantum simulator](http://quantum-studio.net/).
The MATLAB/Octave helper codes are derived from [Qubiter](https://github.com/artiste-qb-net/qubiter) CSD to help in decomposing an arbitrary unitary into quantum unitary gates.
Work is in progress in integrating [unitary decomposition as part of OpenQL](https://github.com/QE-Lab/OpenQL/issues/205).

* [Quantum Associative Memory](https://github.com/prince-ph0en1x/QAGS/tree/master/QAM)
* [Quantum Phone Directory](https://github.com/prince-ph0en1x/QAGS/tree/master/QPD)
* [Quantum Pattern Matching](https://github.com/prince-ph0en1x/QAGS/tree/master/QPM)
* [Quantum-indexed Bidirectional Associative Memory](https://github.com/prince-ph0en1x/QAGS/tree/master/qxa)
* [Quantum-indexed Bidirectional Associative Memory with improved Distributed Query](https://github.com/prince-ph0en1x/QAGS/blob/master/qxa/qxa_qam_a4_idq.py): this is the final algorithm proposed in the thesis
