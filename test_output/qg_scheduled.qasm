qubits 4

.k_bv
    { prepz q0 | prepz q1 | prepz q2 | prepz q3 }
    qwait 7
    { h q0 | h q1 }
    qwait 7
    { cnot q0,q2 | cnot q1,q3 }
    qwait 15
    { x q1 | x q0 }
    qwait 7
    { cnot q1,q3 | x q0 }
    qwait 15
    x q1

