qubits 10

.QCirc1
    { prepz q0 | prepz q1 | prepz q2 | prepz q3 | prepz q4 | prepz q5 | prepz q6 | prepz q7 }
    qwait 7
    { h q0 | h q1 | h q2 }
    qwait 7
    { cnot q0,q3 | cnot q1,q4 | cnot q2,q5 }
    qwait 15
    { x q2 | x q1 | x q0 }
    qwait 7
    cnot q2,q5
    qwait 15
    x q2
    qwait 7
    toffoli q1,q2,q5
    qwait 31
    toffoli q1,q2,q4
    qwait 31
    x q1
    qwait 7
    toffoli q0,q1,q6
    qwait 31
    toffoli q2,q6,q7
    qwait 31
    cnot q7,q5
    qwait 15
    toffoli q2,q6,q7
    qwait 31
    toffoli q0,q1,q6
    qwait 31
    toffoli q0,q1,q6
    qwait 31
    toffoli q2,q6,q7
    qwait 31
    cnot q7,q4
    qwait 15
    toffoli q2,q6,q7
    qwait 31
    toffoli q0,q1,q6
    qwait 31
    toffoli q0,q1,q6
    qwait 31
    toffoli q2,q6,q7
    qwait 31
    cnot q7,q3
    qwait 15
    toffoli q2,q6,q7
    qwait 31
    toffoli q0,q1,q6
    qwait 31
    x q0


.QCirc2a
    { x q0 | x q1 | x q2 }
    qwait 7
    h q2
    qwait 7
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q0 | x q1 }
    qwait 7
    { x q2 | x q0 | x q1 }
    qwait 7
    h q2
    qwait 7
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q0 | x q1 }
    qwait 7
    { x q0 | x q2 }
    qwait 7
    h q2
    qwait 7
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q0 }
    qwait 7
    { x q2 | x q0 }
    qwait 7
    h q2
    qwait 7
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q0 | x q1 }
    qwait 7
    x q2
    qwait 7
    h q2
    qwait 7
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q1 }
    qwait 7
    x q2


.QCirc3
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 }
    qwait 7
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 }
    qwait 7
    { h q5 | toffoli q0,q1,q6 }
    qwait 31
    toffoli q2,q6,q7
    qwait 31
    toffoli q3,q7,q8
    qwait 31
    toffoli q4,q8,q9
    qwait 31
    cnot q9,q5
    qwait 15
    { toffoli q4,q8,q9 | h q5 }
    qwait 7
    x q5
    qwait 7
    h q5
    qwait 15
    { toffoli q3,q7,q8 | x q4 }
    qwait 7
    h q4
    qwait 23
    { toffoli q2,q6,q7 | x q3 }
    qwait 7
    h q3
    qwait 23
    { toffoli q0,q1,q6 | x q2 }
    qwait 7
    h q2
    qwait 23
    { x q0 | x q1 }
    qwait 7
    { h q0 | h q1 }


.QCirc2c
    { x q4 | h q5 }
    qwait 7
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    qwait 7
    x q5
    qwait 7
    h q5
    qwait 7
    toffoli q3,q4,q5
    qwait 31
    h q5
    qwait 7
    x q5
    qwait 7
    h q5
    qwait 7
    toffoli q3,q4,q5
    qwait 31
    h q5


.QCirc3
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 }
    qwait 7
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 }
    qwait 7
    { h q5 | toffoli q0,q1,q6 }
    qwait 31
    toffoli q2,q6,q7
    qwait 31
    toffoli q3,q7,q8
    qwait 31
    toffoli q4,q8,q9
    qwait 31
    cnot q9,q5
    qwait 15
    { toffoli q4,q8,q9 | h q5 }
    qwait 7
    x q5
    qwait 7
    h q5
    qwait 15
    { toffoli q3,q7,q8 | x q4 }
    qwait 7
    h q4
    qwait 23
    { toffoli q2,q6,q7 | x q3 }
    qwait 7
    h q3
    qwait 23
    { toffoli q0,q1,q6 | x q2 }
    qwait 7
    h q2
    qwait 23
    { x q0 | x q1 }
    qwait 7
    { h q0 | h q1 }

