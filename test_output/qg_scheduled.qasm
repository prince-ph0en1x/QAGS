qubits 7

.k_bv
    { prepz q0 | prepz q1 | prepz q2 | prepz q3 | prepz q4 | prepz q5 | prepz q6 }
    qwait 7
    { x q6 | h q0 | h q1 | h q2 | h q3 | h q4 | h q5 }
    qwait 7
    { h q6 | h q2 | h q3 | h q4 }
    qwait 7
    { cnot q0,q6 | measure q2 | measure q3 | measure q4 }
    qwait 15
    { h q6 | h q0 }
    qwait 7
    { h q6 | measure q0 }
    qwait 7
    cnot q1,q6
    qwait 15
    { h q6 | h q1 }
    qwait 7
    { h q6 | measure q1 }
    qwait 7
    cnot q5,q6
    qwait 15
    { h q6 | h q5 }
    qwait 7
    { h q6 | measure q5 }

