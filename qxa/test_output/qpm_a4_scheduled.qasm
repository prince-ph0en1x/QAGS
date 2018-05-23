qubits 10

.QCirc1
    { rz q1, 0.000000 | prepz q0 | prepz q2 | prepz q3 | prepz q4 | prepz q5 | prepz q6 | prepz q7 | prepz q8 | prepz q9 }
    { h q0 | h q2 }
    { cnot q0,q3 | cnot q2,q5 }
    qwait 5
    prepz q1
    h q1
    cnot q1,q4
    qwait 7
    { x q2 | x q0 }
    cnot q2,q5
    qwait 6
    x q1
    qwait 8
    x q2
    toffoli q1,q2,q5
    qwait 31
    toffoli q1,q2,q4
    qwait 31
    x q1
    toffoli q0,q1,q9
    qwait 31
    toffoli q2,q9,q5
    qwait 31
    toffoli q0,q1,q9
    qwait 31
    toffoli q2,q9,q5
    qwait 31
    { toffoli q0,q1,q9 | cnot q5,q8 }
    qwait 15
    x q5
    cnot q5,q8
    qwait 14
    toffoli q2,q9,q4
    x q5
    qwait 30
    toffoli q0,q1,q9
    qwait 31
    toffoli q2,q9,q4
    qwait 31
    { toffoli q0,q1,q9 | cnot q4,q7 }
    qwait 15
    x q4
    toffoli q4,q5,q8
    qwait 14
    toffoli q2,q9,q3
    qwait 16
    toffoli q4,q5,q7
    qwait 14
    toffoli q0,q1,q9
    qwait 16
    x q4
    qwait 14
    { toffoli q2,q9,q3 | x q0 }
    qwait 31
    cnot q3,q6
    qwait 15
    x q3
    toffoli q3,q4,q9
    qwait 31
    toffoli q5,q9,q8
    qwait 31
    toffoli q3,q4,q9
    qwait 31
    toffoli q5,q9,q8
    qwait 31
    toffoli q3,q4,q9
    qwait 31
    toffoli q5,q9,q7
    qwait 31
    toffoli q3,q4,q9
    qwait 31
    toffoli q5,q9,q7
    qwait 31
    toffoli q3,q4,q9
    qwait 31
    toffoli q5,q9,q6
    qwait 31
    toffoli q3,q4,q9
    qwait 31
    { toffoli q5,q9,q6 | x q3 }
    qwait 31


.QCirc2
    { x q0 | x q2 }
    h q2
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q0 | x q1 }
    x q2
    h q2
    toffoli q0,q1,q2
    qwait 31
    { h q2 | x q1 }

.QCirc3
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 | h q8 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 | x q8 }
    { h q8 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 | x q1 }
    h q1
    qwait 30
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | x q5 }
    h q5
    qwait 30
    { toffoli q3,q2,q8 | x q4 | x q6 }
    { h q4 | h q6 }
    qwait 30
    toffoli q7,q9,q2
    qwait 31
    { toffoli q3,q2,q8 | x q7 }
    h q7
    qwait 30
    { h q8 | x q2 | x q3 }
    { h q2 | h q3 | x q8 }
    h q8

.QCirc2
    { x q3 | x q4 | x q5 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    { x q5 | x q3 | x q4 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    { x q3 | h q5 }
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    x q5
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    h q5
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    { x q5 | x q4 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }

.QCirc3
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 | h q8 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 | x q8 }
    { h q8 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 | x q1 }
    h q1
    qwait 30
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | x q5 }
    h q5
    qwait 30
    { toffoli q3,q2,q8 | x q4 | x q6 }
    { h q4 | h q6 }
    qwait 30
    toffoli q7,q9,q2
    qwait 31
    { toffoli q3,q2,q8 | x q7 }
    h q7
    qwait 30
    { h q8 | x q2 | x q3 }
    { h q2 | h q3 | x q8 }
    h q8

.QCirc2
    { x q3 | x q4 | x q5 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    { x q5 | x q3 | x q4 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    { x q3 | h q5 }
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q3 | x q4 }
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    x q5
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    h q5
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    x q5
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }
    { x q5 | x q4 }
    h q5
    toffoli q3,q4,q5
    qwait 31
    { h q5 | x q4 }

.QCirc3
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 | h q8 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 | x q8 }
    { h q8 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q9
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q9
    qwait 31
    { toffoli q4,q5,q4 | toffoli q7,q9,q2 | x q1 }
    h q1
    qwait 30
    toffoli q6,q4,q3
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    toffoli q6,q4,q3
    qwait 31
    { toffoli q3,q2,q8 | toffoli q4,q5,q4 }
    qwait 31
    toffoli q7,q9,q2
    qwait 31
    toffoli q3,q2,q8
    qwait 31
    { toffoli q6,q4,q3 | toffoli q7,q9,q2 }
    qwait 31
    toffoli q4,q5,q4
    qwait 31
    { toffoli q6,q4,q3 | x q5 }
    h q5
    qwait 30
    { toffoli q3,q2,q8 | x q4 | x q6 }
    { h q4 | h q6 }
    qwait 30
    toffoli q7,q9,q2
    qwait 31
    { toffoli q3,q2,q8 | x q7 }
    h q7
    qwait 30
    { h q8 | x q2 | x q3 }
    { h q2 | h q3 | x q8 }
    h q8
