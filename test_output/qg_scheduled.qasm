qubits 2

.aKernel
    { prepz q0 | prepz q1 }
    qwait 7
    { x q1 | h q0 }
    qwait 7
    h q1
    qwait 7
    cnot q0,q1
    qwait 15
    { h q0 | measure q1 }
    qwait 7
    measure q0

