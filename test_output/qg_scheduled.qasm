qubits 2

.k_bv
    { prepz q0 | prepz q1 }
    qwait 7
    { h q0 | h q1 }
    qwait 7
    cz q0,q1
    qwait 15
    { h q0 | h q1 }
    qwait 7
    { x q0 | x q1 }
    qwait 7
    h q1
    qwait 7
    cnot q0,q1
    qwait 15
    { h q1 | x q0 }
    qwait 7
    { x q1 | h q0 }
    qwait 7
    { h q1 | measure q0 }
    qwait 7
    measure q1

