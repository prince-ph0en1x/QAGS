qubits 9

.QCirc1
    { prepz q0 | prepz q1 | prepz q2 | prepz q3 | prepz q4 | prepz q5 | prepz q6 | prepz q7 | prepz q8 }
    { h q0 | h q1 | h q2 | h q3 }
    { x q0 | x q1 | x q2 | x q3 }
    { x q0 | x q1 | x q2 | x q3 }
    { x q0 | x q1 | x q2 }
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q2 | x q3 }
    qwait 31
    x q1
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q3 }
    qwait 31
    x q1
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q6 | x q2 | x q3 }
    qwait 31
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q2 | x q3 }
    x q2
    qwait 30
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q2 | x q3 }
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    x q0
    qwait 30
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q3 }
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q5 | x q2 | x q3 }
    qwait 31
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q6 | x q2 | x q3 }
    x q2
    qwait 30
    x q1
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q6 | x q2 | x q3 }
    qwait 31
    x q1
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q3 }
    qwait 31
    x q1
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q6 | x q2 | x q3 }
    qwait 31
    x q1
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q4 | x q2 | x q3 }
    x q2
    qwait 30
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q2 | x q3 }
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q5
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q8,q1,q7 | x q3 }
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q4
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q6
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q0,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q8,q1,q7
    qwait 31


.QCirc2
    x q5

.QCirc3
    { rz q4, -2.495565 | rz q5, -1.095612 | rz q6, 0.265150 | rz q7, -0.392699 }
    qwait 7
    ry q4, -1.046381
    qwait 7
    rz q4, -0.634842
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.574113
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.663604 | ry q5, 2.180982 }
    qwait 7
    ry q4, -1.337541
    qwait 7
    rz q4, 0.663604
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.270123
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.560313 | rz q5, 2.141438 }
    qwait 7
    ry q4, -2.345810
    qwait 7
    rz q4, 0.217847
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.835336
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.573939
    qwait 7
    ry q4, -1.161760
    qwait 7
    rz q4, -0.573939
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.792581
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -1.778400
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.309606 | rz q4, 0.867198 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.020460 }
    qwait 7
    rz q4, -0.892549
    qwait 7
    { rz q5, -0.978970 | ry q6, 1.486933 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.042658
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.771181 | ry q5, 1.644840 }
    qwait 7
    ry q4, -0.386977
    qwait 7
    rz q4, 0.771181
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.504899
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.662837 | rz q5, 0.160840 }
    qwait 7
    ry q4, -1.694500
    qwait 7
    rz q4, -3.616169
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.807003
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.523538
    qwait 7
    ry q4, -1.195233
    qwait 7
    rz q4, 0.523538
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.346126
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.150052
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.589344 | rz q4, -4.033427 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.661051 }
    qwait 7
    rz q4, -0.217231
    qwait 7
    { rz q5, -0.679055 | rz q6, -0.568080 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.623385
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.573731 | ry q5, 2.071674 }
    qwait 7
    ry q4, -0.475009
    qwait 7
    rz q4, 1.573731
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.764902
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.904202 | rz q5, 0.246450 }
    qwait 7
    ry q4, -1.576334
    qwait 7
    rz q4, 3.300418
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.446510
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -3.121304
    qwait 7
    ry q4, -1.150659
    qwait 7
    rz q4, 3.121304
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.678844
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.184890
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.600579 | rz q4, 2.234130 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.090960 }
    qwait 7
    rz q4, 1.062383
    qwait 7
    rz q5, 0.164323
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.743454
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.629366 | ry q5, 1.152369 }
    qwait 7
    ry q4, -0.512242
    qwait 7
    rz q4, 1.629366
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.797232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.651534 | rz q5, 1.091160 }
    qwait 7
    ry q4, -2.240981
    qwait 7
    rz q4, 2.205052
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.777808
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 2.741933
    qwait 7
    ry q4, -1.561898
    qwait 7
    rz q4, -2.741933
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.857984
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.392699
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.730732
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, -1.070810
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.849024
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, 0.285412 | rz q5, -0.346171 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, -0.849024 | rz q4, 2.422630 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.054241 }
    qwait 7
    rz q4, -0.670996
    qwait 7
    { cnot q4,q5 | rz q6, 0.040519 | ry q7, 0.261799 }
    qwait 15
    rz q5, -2.395018
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.330937 | ry q5, 1.739765 }
    qwait 7
    ry q4, -1.254475
    qwait 7
    rz q4, 2.330937
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.618025
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.169652 | rz q5, 0.126237 }
    qwait 7
    ry q4, -2.868867
    qwait 7
    rz q4, 2.683293
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.920065
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.083853
    qwait 7
    ry q4, -1.399634
    qwait 7
    rz q4, 1.083853
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.810583
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 1.374535
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.527623 | rz q4, -5.305886 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.764960 }
    qwait 7
    rz q4, 0.785715
    qwait 7
    { rz q5, -0.264883 | ry q6, 1.025571 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.987388
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.990355 | ry q5, 1.862818 }
    qwait 7
    ry q4, -0.392324
    qwait 7
    rz q4, -1.990355
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.827526
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.779818 | rz q5, 0.417135 }
    qwait 7
    ry q4, -1.301020
    qwait 7
    rz q4, -1.688079
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.817636
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.537353
    qwait 7
    ry q4, -0.105530
    qwait 7
    rz q4, 0.537353
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.386772
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.325953
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.964752 | rz q4, 0.589048 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.364848 }
    qwait 7
    rz q4, 4.476448
    qwait 7
    { rz q5, -0.862498 | rz q6, -0.749385 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.949294
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.830300 | ry q5, 1.652079 }
    qwait 7
    ry q4, -0.962399
    qwait 7
    rz q4, 0.830300
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.567936
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.400688 | rz q5, -1.608724 }
    qwait 7
    ry q4, -0.392400
    qwait 7
    rz q4, 2.556896
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.535112
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.631783
    qwait 7
    ry q4, -1.010089
    qwait 7
    rz q4, 2.631783
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.995045
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.425068
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.656585 | rz q4, -1.259555 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.413129 }
    qwait 7
    rz q4, -0.376948
    qwait 7
    rz q5, -0.023320
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.375551
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.124097 | ry q5, 1.630461 }
    qwait 7
    ry q4, -0.211290
    qwait 7
    rz q4, 0.124097
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.680158
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -5.829541 | rz q5, 0.242793 }
    qwait 7
    ry q4, -2.443439
    qwait 7
    rz q4, 0.018165
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.876220
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 1.413556
    qwait 7
    ry q4, -0.974064
    qwait 7
    rz q4, -1.413556
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q6,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    { ry q7, 0.261799 | rz q5, 1.438258 }
    qwait 7
    cnot q4,q7
    qwait 15
    { ry q7, 0.261799 | rz q4, 3.477399 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.335230 }
    qwait 7
    rz q4, 1.300499
    qwait 7
    { cnot q4,q5 | rz q6, -0.785398 | rz q7, -0.000000 }
    qwait 15
    rz q5, -0.801232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.104663 | ry q5, 1.300200 }
    qwait 7
    ry q4, -1.513998
    qwait 7
    rz q4, 1.104663
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.817306
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.537000 | rz q5, -0.525194 }
    qwait 7
    ry q4, -2.102438
    qwait 7
    rz q4, -1.622373
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.334422
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.438354
    qwait 7
    ry q4, -1.454119
    qwait 7
    rz q4, -0.438354
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.085948
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.484849 | rz q4, 3.350364 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.676777 }
    qwait 7
    rz q4, 2.930095
    qwait 7
    { rz q5, 0.954045 | ry q6, 1.614267 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.745842
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 2.944517 | ry q5, 1.438536 }
    qwait 7
    ry q4, -1.291884
    qwait 7
    rz q4, -2.944517
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.852927
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.249836 | rz q5, -0.086264 }
    qwait 7
    ry q4, -2.002135
    qwait 7
    rz q4, -2.140359
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.840127
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.964859
    qwait 7
    ry q4, -1.544692
    qwait 7
    rz q4, 2.964859
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.309438
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.036398
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 1.254285 | rz q4, 4.735940 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.080950 }
    qwait 7
    rz q4, -1.398253
    qwait 7
    { rz q5, 0.141644 | rz q6, -0.392699 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.581510
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 3.000507 | ry q5, 2.303325 }
    qwait 7
    ry q4, -1.345787
    qwait 7
    rz q4, -3.000507
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.768309
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.022805 | rz q5, -1.365775 }
    qwait 7
    ry q4, -2.559101
    qwait 7
    rz q4, 1.595668
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.372495
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.209858
    qwait 7
    ry q4, -0.713527
    qwait 7
    rz q4, 1.209858
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 1.718203
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.159657
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.151992 | rz q4, -2.103083 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.642351 }
    qwait 7
    rz q4, -1.494416
    qwait 7
    rz q5, -0.071267
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.653073
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.387850 | ry q5, 0.437715 }
    qwait 7
    ry q4, -0.891440
    qwait 7
    rz q4, 0.387850
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.234582
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.048179 | rz q5, 1.259357 }
    qwait 7
    ry q4, -2.212950
    qwait 7
    rz q4, -0.379861
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.726894
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.204942
    qwait 7
    ry q4, -1.154988
    qwait 7
    rz q4, 0.204942
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -1.250684
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.338033
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.221786
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, -1.134436 | rz q5, 1.175158 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, 0.000000 | rz q4, 0.311756 }
    qwait 7
    { cnot q6,q7 | ry q4, -0.913364 }
    qwait 7
    rz q4, 5.950218
    qwait 7
    { cnot q4,q5 | rz q6, -0.392699 }
    qwait 15
    rz q5, 0.505238
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.562177 | ry q5, 1.229257 }
    qwait 7
    ry q4, -0.920386
    qwait 7
    rz q4, -0.562177
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.351218
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.714317 | rz q5, -0.815124 }
    qwait 7
    ry q4, -1.273729
    qwait 7
    rz q4, 2.687247
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.756678
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.191286
    qwait 7
    ry q4, -1.322072
    qwait 7
    rz q4, 1.191286
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.560325
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.367070
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.604025 | rz q4, 3.443813 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.528964 }
    qwait 7
    rz q4, -2.730648
    qwait 7
    { rz q5, 0.333271 | ry q6, 1.783616 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 2.086082
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.945221 | ry q5, 1.423641 }
    qwait 7
    ry q4, -0.446899
    qwait 7
    rz q4, 0.945221
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.452590
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.227600 | rz q5, 0.879420 }
    qwait 7
    ry q4, -0.800360
    qwait 7
    rz q4, 0.895195
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.175390
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.704350
    qwait 7
    ry q4, -1.291475
    qwait 7
    rz q4, 2.704350
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.493806
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.142692
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.538500 | rz q4, 0.074716 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.215538 }
    qwait 7
    rz q4, 2.366195
    qwait 7
    { rz q5, -0.634980 | rz q6, 0.785398 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.304112
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.827265 | ry q5, 1.674571 }
    qwait 7
    ry q4, -1.142645
    qwait 7
    rz q4, 0.827265
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.564013
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.557684 | rz q5, -1.658384 }
    qwait 7
    ry q4, -0.316529
    qwait 7
    rz q4, 4.037339
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.946438
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.615404
    qwait 7
    ry q4, -1.423146
    qwait 7
    rz q4, 1.615404
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -1.895989
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.325193 | rz q4, 3.212053 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.388574 }
    qwait 7
    rz q4, -1.391053
    qwait 7
    rz q5, 1.520843
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.942892
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.229895 | ry q5, 1.477189 }
    qwait 7
    ry q4, -1.476998
    qwait 7
    rz q4, -1.229895
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.636033
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.659093 | rz q5, -0.872758 }
    qwait 7
    ry q4, -2.163702
    qwait 7
    rz q4, -2.151962
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.456869
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.779867
    qwait 7
    ry q4, -1.548794
    qwait 7
    rz q4, 0.779867
    qwait 7


.QCirc4
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    h q2
    qwait 30
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    { h q4 | h q5 }
    qwait 30
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    h q6
    qwait 30
    { h q7 | x q1 | x q3 }
    { h q1 | h q3 | x q7 }
    h q7

.QCirc5
    { x q0 | h q7 }
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q1 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    x q7
    h q7
    qwait 29
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | x q3 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q5 }
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    qwait 31
    { h q7 | toffoli q0,q1,q5 }
    h q7
    qwait 30
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    h q7

.QCirc4
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    h q2
    qwait 30
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    { h q4 | h q5 }
    qwait 30
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    h q6
    qwait 30
    { h q7 | x q1 | x q3 }
    { h q1 | h q3 | x q7 }
    h q7

.QCirc3
    { rz q4, -2.495565 | rz q5, -1.095612 | rz q6, 0.265150 | rz q7, -0.392699 }
    qwait 7
    ry q4, -1.046381
    qwait 7
    rz q4, -0.634842
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.574113
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.663604 | ry q5, 2.180982 }
    qwait 7
    ry q4, -1.337541
    qwait 7
    rz q4, 0.663604
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.270123
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.560313 | rz q5, 2.141438 }
    qwait 7
    ry q4, -2.345810
    qwait 7
    rz q4, 0.217847
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.835336
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.573939
    qwait 7
    ry q4, -1.161760
    qwait 7
    rz q4, -0.573939
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.792581
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -1.778400
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.309606 | rz q4, 0.867198 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.020460 }
    qwait 7
    rz q4, -0.892549
    qwait 7
    { rz q5, -0.978970 | ry q6, 1.486933 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.042658
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.771181 | ry q5, 1.644840 }
    qwait 7
    ry q4, -0.386977
    qwait 7
    rz q4, 0.771181
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.504899
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.662837 | rz q5, 0.160840 }
    qwait 7
    ry q4, -1.694500
    qwait 7
    rz q4, -3.616169
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.807003
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.523538
    qwait 7
    ry q4, -1.195233
    qwait 7
    rz q4, 0.523538
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.346126
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.150052
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.589344 | rz q4, -4.033427 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.661051 }
    qwait 7
    rz q4, -0.217231
    qwait 7
    { rz q5, -0.679055 | rz q6, -0.568080 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.623385
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.573731 | ry q5, 2.071674 }
    qwait 7
    ry q4, -0.475009
    qwait 7
    rz q4, 1.573731
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.764902
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.904202 | rz q5, 0.246450 }
    qwait 7
    ry q4, -1.576334
    qwait 7
    rz q4, 3.300418
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.446510
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -3.121304
    qwait 7
    ry q4, -1.150659
    qwait 7
    rz q4, 3.121304
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.678844
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.184890
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.600579 | rz q4, 2.234130 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.090960 }
    qwait 7
    rz q4, 1.062383
    qwait 7
    rz q5, 0.164323
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.743454
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.629366 | ry q5, 1.152369 }
    qwait 7
    ry q4, -0.512242
    qwait 7
    rz q4, 1.629366
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.797232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.651534 | rz q5, 1.091160 }
    qwait 7
    ry q4, -2.240981
    qwait 7
    rz q4, 2.205052
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.777808
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 2.741933
    qwait 7
    ry q4, -1.561898
    qwait 7
    rz q4, -2.741933
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.857984
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.392699
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.730732
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, -1.070810
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.849024
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, 0.285412 | rz q5, -0.346171 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, -0.849024 | rz q4, 2.422630 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.054241 }
    qwait 7
    rz q4, -0.670996
    qwait 7
    { cnot q4,q5 | rz q6, 0.040519 | ry q7, 0.261799 }
    qwait 15
    rz q5, -2.395018
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.330937 | ry q5, 1.739765 }
    qwait 7
    ry q4, -1.254475
    qwait 7
    rz q4, 2.330937
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.618025
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.169652 | rz q5, 0.126237 }
    qwait 7
    ry q4, -2.868867
    qwait 7
    rz q4, 2.683293
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.920065
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.083853
    qwait 7
    ry q4, -1.399634
    qwait 7
    rz q4, 1.083853
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.810583
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 1.374535
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.527623 | rz q4, -5.305886 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.764960 }
    qwait 7
    rz q4, 0.785715
    qwait 7
    { rz q5, -0.264883 | ry q6, 1.025571 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.987388
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.990355 | ry q5, 1.862818 }
    qwait 7
    ry q4, -0.392324
    qwait 7
    rz q4, -1.990355
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.827526
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.779818 | rz q5, 0.417135 }
    qwait 7
    ry q4, -1.301020
    qwait 7
    rz q4, -1.688079
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.817636
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.537353
    qwait 7
    ry q4, -0.105530
    qwait 7
    rz q4, 0.537353
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.386772
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.325953
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.964752 | rz q4, 0.589048 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.364848 }
    qwait 7
    rz q4, 4.476448
    qwait 7
    { rz q5, -0.862498 | rz q6, -0.749385 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.949294
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.830300 | ry q5, 1.652079 }
    qwait 7
    ry q4, -0.962399
    qwait 7
    rz q4, 0.830300
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.567936
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.400688 | rz q5, -1.608724 }
    qwait 7
    ry q4, -0.392400
    qwait 7
    rz q4, 2.556896
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.535112
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.631783
    qwait 7
    ry q4, -1.010089
    qwait 7
    rz q4, 2.631783
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.995045
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.425068
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.656585 | rz q4, -1.259555 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.413129 }
    qwait 7
    rz q4, -0.376948
    qwait 7
    rz q5, -0.023320
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.375551
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.124097 | ry q5, 1.630461 }
    qwait 7
    ry q4, -0.211290
    qwait 7
    rz q4, 0.124097
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.680158
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -5.829541 | rz q5, 0.242793 }
    qwait 7
    ry q4, -2.443439
    qwait 7
    rz q4, 0.018165
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.876220
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 1.413556
    qwait 7
    ry q4, -0.974064
    qwait 7
    rz q4, -1.413556
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q6,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    { ry q7, 0.261799 | rz q5, 1.438258 }
    qwait 7
    cnot q4,q7
    qwait 15
    { ry q7, 0.261799 | rz q4, 3.477399 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.335230 }
    qwait 7
    rz q4, 1.300499
    qwait 7
    { cnot q4,q5 | rz q6, -0.785398 | rz q7, -0.000000 }
    qwait 15
    rz q5, -0.801232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.104663 | ry q5, 1.300200 }
    qwait 7
    ry q4, -1.513998
    qwait 7
    rz q4, 1.104663
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.817306
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.537000 | rz q5, -0.525194 }
    qwait 7
    ry q4, -2.102438
    qwait 7
    rz q4, -1.622373
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.334422
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.438354
    qwait 7
    ry q4, -1.454119
    qwait 7
    rz q4, -0.438354
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.085948
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.484849 | rz q4, 3.350364 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.676777 }
    qwait 7
    rz q4, 2.930095
    qwait 7
    { rz q5, 0.954045 | ry q6, 1.614267 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.745842
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 2.944517 | ry q5, 1.438536 }
    qwait 7
    ry q4, -1.291884
    qwait 7
    rz q4, -2.944517
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.852927
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.249836 | rz q5, -0.086264 }
    qwait 7
    ry q4, -2.002135
    qwait 7
    rz q4, -2.140359
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.840127
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.964859
    qwait 7
    ry q4, -1.544692
    qwait 7
    rz q4, 2.964859
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.309438
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.036398
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 1.254285 | rz q4, 4.735940 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.080950 }
    qwait 7
    rz q4, -1.398253
    qwait 7
    { rz q5, 0.141644 | rz q6, -0.392699 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.581510
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 3.000507 | ry q5, 2.303325 }
    qwait 7
    ry q4, -1.345787
    qwait 7
    rz q4, -3.000507
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.768309
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.022805 | rz q5, -1.365775 }
    qwait 7
    ry q4, -2.559101
    qwait 7
    rz q4, 1.595668
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.372495
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.209858
    qwait 7
    ry q4, -0.713527
    qwait 7
    rz q4, 1.209858
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 1.718203
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.159657
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.151992 | rz q4, -2.103083 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.642351 }
    qwait 7
    rz q4, -1.494416
    qwait 7
    rz q5, -0.071267
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.653073
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.387850 | ry q5, 0.437715 }
    qwait 7
    ry q4, -0.891440
    qwait 7
    rz q4, 0.387850
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.234582
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.048179 | rz q5, 1.259357 }
    qwait 7
    ry q4, -2.212950
    qwait 7
    rz q4, -0.379861
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.726894
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.204942
    qwait 7
    ry q4, -1.154988
    qwait 7
    rz q4, 0.204942
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -1.250684
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.338033
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.221786
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, -1.134436 | rz q5, 1.175158 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, 0.000000 | rz q4, 0.311756 }
    qwait 7
    { cnot q6,q7 | ry q4, -0.913364 }
    qwait 7
    rz q4, 5.950218
    qwait 7
    { cnot q4,q5 | rz q6, -0.392699 }
    qwait 15
    rz q5, 0.505238
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.562177 | ry q5, 1.229257 }
    qwait 7
    ry q4, -0.920386
    qwait 7
    rz q4, -0.562177
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.351218
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.714317 | rz q5, -0.815124 }
    qwait 7
    ry q4, -1.273729
    qwait 7
    rz q4, 2.687247
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.756678
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.191286
    qwait 7
    ry q4, -1.322072
    qwait 7
    rz q4, 1.191286
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.560325
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.367070
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.604025 | rz q4, 3.443813 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.528964 }
    qwait 7
    rz q4, -2.730648
    qwait 7
    { rz q5, 0.333271 | ry q6, 1.783616 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 2.086082
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.945221 | ry q5, 1.423641 }
    qwait 7
    ry q4, -0.446899
    qwait 7
    rz q4, 0.945221
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.452590
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.227600 | rz q5, 0.879420 }
    qwait 7
    ry q4, -0.800360
    qwait 7
    rz q4, 0.895195
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.175390
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.704350
    qwait 7
    ry q4, -1.291475
    qwait 7
    rz q4, 2.704350
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.493806
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.142692
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.538500 | rz q4, 0.074716 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.215538 }
    qwait 7
    rz q4, 2.366195
    qwait 7
    { rz q5, -0.634980 | rz q6, 0.785398 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.304112
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.827265 | ry q5, 1.674571 }
    qwait 7
    ry q4, -1.142645
    qwait 7
    rz q4, 0.827265
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.564013
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.557684 | rz q5, -1.658384 }
    qwait 7
    ry q4, -0.316529
    qwait 7
    rz q4, 4.037339
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.946438
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.615404
    qwait 7
    ry q4, -1.423146
    qwait 7
    rz q4, 1.615404
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -1.895989
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.325193 | rz q4, 3.212053 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.388574 }
    qwait 7
    rz q4, -1.391053
    qwait 7
    rz q5, 1.520843
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.942892
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.229895 | ry q5, 1.477189 }
    qwait 7
    ry q4, -1.476998
    qwait 7
    rz q4, -1.229895
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.636033
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.659093 | rz q5, -0.872758 }
    qwait 7
    ry q4, -2.163702
    qwait 7
    rz q4, -2.151962
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.456869
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.779867
    qwait 7
    ry q4, -1.548794
    qwait 7
    rz q4, 0.779867
    qwait 7


.QCirc4
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    h q2
    qwait 30
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    { h q4 | h q5 }
    qwait 30
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    h q6
    qwait 30
    { h q7 | x q1 | x q3 }
    { h q1 | h q3 | x q7 }
    h q7

.QCirc3
    { rz q4, -2.495565 | rz q5, -1.095612 | rz q6, 0.265150 | rz q7, -0.392699 }
    qwait 7
    ry q4, -1.046381
    qwait 7
    rz q4, -0.634842
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.574113
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.663604 | ry q5, 2.180982 }
    qwait 7
    ry q4, -1.337541
    qwait 7
    rz q4, 0.663604
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.270123
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.560313 | rz q5, 2.141438 }
    qwait 7
    ry q4, -2.345810
    qwait 7
    rz q4, 0.217847
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.835336
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.573939
    qwait 7
    ry q4, -1.161760
    qwait 7
    rz q4, -0.573939
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.792581
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -1.778400
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.309606 | rz q4, 0.867198 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.020460 }
    qwait 7
    rz q4, -0.892549
    qwait 7
    { rz q5, -0.978970 | ry q6, 1.486933 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.042658
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.771181 | ry q5, 1.644840 }
    qwait 7
    ry q4, -0.386977
    qwait 7
    rz q4, 0.771181
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.504899
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.662837 | rz q5, 0.160840 }
    qwait 7
    ry q4, -1.694500
    qwait 7
    rz q4, -3.616169
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.807003
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.523538
    qwait 7
    ry q4, -1.195233
    qwait 7
    rz q4, 0.523538
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.346126
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.150052
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.589344 | rz q4, -4.033427 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.661051 }
    qwait 7
    rz q4, -0.217231
    qwait 7
    { rz q5, -0.679055 | rz q6, -0.568080 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.623385
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.573731 | ry q5, 2.071674 }
    qwait 7
    ry q4, -0.475009
    qwait 7
    rz q4, 1.573731
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.764902
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.904202 | rz q5, 0.246450 }
    qwait 7
    ry q4, -1.576334
    qwait 7
    rz q4, 3.300418
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.446510
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -3.121304
    qwait 7
    ry q4, -1.150659
    qwait 7
    rz q4, 3.121304
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.678844
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.184890
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.600579 | rz q4, 2.234130 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.090960 }
    qwait 7
    rz q4, 1.062383
    qwait 7
    rz q5, 0.164323
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.743454
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.629366 | ry q5, 1.152369 }
    qwait 7
    ry q4, -0.512242
    qwait 7
    rz q4, 1.629366
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.797232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.651534 | rz q5, 1.091160 }
    qwait 7
    ry q4, -2.240981
    qwait 7
    rz q4, 2.205052
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.777808
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 2.741933
    qwait 7
    ry q4, -1.561898
    qwait 7
    rz q4, -2.741933
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.857984
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.392699
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.730732
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, -1.070810
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.849024
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, 0.285412 | rz q5, -0.346171 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, -0.849024 | rz q4, 2.422630 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.054241 }
    qwait 7
    rz q4, -0.670996
    qwait 7
    { cnot q4,q5 | rz q6, 0.040519 | ry q7, 0.261799 }
    qwait 15
    rz q5, -2.395018
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.330937 | ry q5, 1.739765 }
    qwait 7
    ry q4, -1.254475
    qwait 7
    rz q4, 2.330937
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.618025
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.169652 | rz q5, 0.126237 }
    qwait 7
    ry q4, -2.868867
    qwait 7
    rz q4, 2.683293
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.920065
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.083853
    qwait 7
    ry q4, -1.399634
    qwait 7
    rz q4, 1.083853
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.810583
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 1.374535
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.527623 | rz q4, -5.305886 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.764960 }
    qwait 7
    rz q4, 0.785715
    qwait 7
    { rz q5, -0.264883 | ry q6, 1.025571 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.987388
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.990355 | ry q5, 1.862818 }
    qwait 7
    ry q4, -0.392324
    qwait 7
    rz q4, -1.990355
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.827526
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.779818 | rz q5, 0.417135 }
    qwait 7
    ry q4, -1.301020
    qwait 7
    rz q4, -1.688079
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.817636
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.537353
    qwait 7
    ry q4, -0.105530
    qwait 7
    rz q4, 0.537353
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.386772
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.325953
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.964752 | rz q4, 0.589048 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.364848 }
    qwait 7
    rz q4, 4.476448
    qwait 7
    { rz q5, -0.862498 | rz q6, -0.749385 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.949294
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.830300 | ry q5, 1.652079 }
    qwait 7
    ry q4, -0.962399
    qwait 7
    rz q4, 0.830300
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.567936
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.400688 | rz q5, -1.608724 }
    qwait 7
    ry q4, -0.392400
    qwait 7
    rz q4, 2.556896
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.535112
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.631783
    qwait 7
    ry q4, -1.010089
    qwait 7
    rz q4, 2.631783
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.995045
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.425068
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.656585 | rz q4, -1.259555 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.413129 }
    qwait 7
    rz q4, -0.376948
    qwait 7
    rz q5, -0.023320
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.375551
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.124097 | ry q5, 1.630461 }
    qwait 7
    ry q4, -0.211290
    qwait 7
    rz q4, 0.124097
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.680158
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -5.829541 | rz q5, 0.242793 }
    qwait 7
    ry q4, -2.443439
    qwait 7
    rz q4, 0.018165
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.876220
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 1.413556
    qwait 7
    ry q4, -0.974064
    qwait 7
    rz q4, -1.413556
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q6,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    { ry q7, 0.261799 | rz q5, 1.438258 }
    qwait 7
    cnot q4,q7
    qwait 15
    { ry q7, 0.261799 | rz q4, 3.477399 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.335230 }
    qwait 7
    rz q4, 1.300499
    qwait 7
    { cnot q4,q5 | rz q6, -0.785398 | rz q7, -0.000000 }
    qwait 15
    rz q5, -0.801232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.104663 | ry q5, 1.300200 }
    qwait 7
    ry q4, -1.513998
    qwait 7
    rz q4, 1.104663
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.817306
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.537000 | rz q5, -0.525194 }
    qwait 7
    ry q4, -2.102438
    qwait 7
    rz q4, -1.622373
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.334422
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.438354
    qwait 7
    ry q4, -1.454119
    qwait 7
    rz q4, -0.438354
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.085948
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.484849 | rz q4, 3.350364 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.676777 }
    qwait 7
    rz q4, 2.930095
    qwait 7
    { rz q5, 0.954045 | ry q6, 1.614267 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.745842
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 2.944517 | ry q5, 1.438536 }
    qwait 7
    ry q4, -1.291884
    qwait 7
    rz q4, -2.944517
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.852927
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.249836 | rz q5, -0.086264 }
    qwait 7
    ry q4, -2.002135
    qwait 7
    rz q4, -2.140359
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.840127
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.964859
    qwait 7
    ry q4, -1.544692
    qwait 7
    rz q4, 2.964859
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.309438
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.036398
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 1.254285 | rz q4, 4.735940 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.080950 }
    qwait 7
    rz q4, -1.398253
    qwait 7
    { rz q5, 0.141644 | rz q6, -0.392699 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.581510
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 3.000507 | ry q5, 2.303325 }
    qwait 7
    ry q4, -1.345787
    qwait 7
    rz q4, -3.000507
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.768309
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.022805 | rz q5, -1.365775 }
    qwait 7
    ry q4, -2.559101
    qwait 7
    rz q4, 1.595668
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.372495
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.209858
    qwait 7
    ry q4, -0.713527
    qwait 7
    rz q4, 1.209858
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 1.718203
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.159657
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.151992 | rz q4, -2.103083 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.642351 }
    qwait 7
    rz q4, -1.494416
    qwait 7
    rz q5, -0.071267
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.653073
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.387850 | ry q5, 0.437715 }
    qwait 7
    ry q4, -0.891440
    qwait 7
    rz q4, 0.387850
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.234582
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.048179 | rz q5, 1.259357 }
    qwait 7
    ry q4, -2.212950
    qwait 7
    rz q4, -0.379861
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.726894
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.204942
    qwait 7
    ry q4, -1.154988
    qwait 7
    rz q4, 0.204942
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -1.250684
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.338033
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.221786
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, -1.134436 | rz q5, 1.175158 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, 0.000000 | rz q4, 0.311756 }
    qwait 7
    { cnot q6,q7 | ry q4, -0.913364 }
    qwait 7
    rz q4, 5.950218
    qwait 7
    { cnot q4,q5 | rz q6, -0.392699 }
    qwait 15
    rz q5, 0.505238
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.562177 | ry q5, 1.229257 }
    qwait 7
    ry q4, -0.920386
    qwait 7
    rz q4, -0.562177
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.351218
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.714317 | rz q5, -0.815124 }
    qwait 7
    ry q4, -1.273729
    qwait 7
    rz q4, 2.687247
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.756678
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.191286
    qwait 7
    ry q4, -1.322072
    qwait 7
    rz q4, 1.191286
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.560325
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.367070
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.604025 | rz q4, 3.443813 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.528964 }
    qwait 7
    rz q4, -2.730648
    qwait 7
    { rz q5, 0.333271 | ry q6, 1.783616 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 2.086082
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.945221 | ry q5, 1.423641 }
    qwait 7
    ry q4, -0.446899
    qwait 7
    rz q4, 0.945221
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.452590
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.227600 | rz q5, 0.879420 }
    qwait 7
    ry q4, -0.800360
    qwait 7
    rz q4, 0.895195
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.175390
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.704350
    qwait 7
    ry q4, -1.291475
    qwait 7
    rz q4, 2.704350
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.493806
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.142692
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.538500 | rz q4, 0.074716 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.215538 }
    qwait 7
    rz q4, 2.366195
    qwait 7
    { rz q5, -0.634980 | rz q6, 0.785398 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.304112
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.827265 | ry q5, 1.674571 }
    qwait 7
    ry q4, -1.142645
    qwait 7
    rz q4, 0.827265
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.564013
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.557684 | rz q5, -1.658384 }
    qwait 7
    ry q4, -0.316529
    qwait 7
    rz q4, 4.037339
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.946438
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.615404
    qwait 7
    ry q4, -1.423146
    qwait 7
    rz q4, 1.615404
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -1.895989
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.325193 | rz q4, 3.212053 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.388574 }
    qwait 7
    rz q4, -1.391053
    qwait 7
    rz q5, 1.520843
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.942892
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.229895 | ry q5, 1.477189 }
    qwait 7
    ry q4, -1.476998
    qwait 7
    rz q4, -1.229895
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.636033
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.659093 | rz q5, -0.872758 }
    qwait 7
    ry q4, -2.163702
    qwait 7
    rz q4, -2.151962
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.456869
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.779867
    qwait 7
    ry q4, -1.548794
    qwait 7
    rz q4, 0.779867
    qwait 7


.QCirc4
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    h q2
    qwait 30
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    { h q4 | h q5 }
    qwait 30
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    h q6
    qwait 30
    { h q7 | x q1 | x q3 }
    { h q1 | h q3 | x q7 }
    h q7

.QCirc3
    { rz q4, -2.495565 | rz q5, -1.095612 | rz q6, 0.265150 | rz q7, -0.392699 }
    qwait 7
    ry q4, -1.046381
    qwait 7
    rz q4, -0.634842
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.574113
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.663604 | ry q5, 2.180982 }
    qwait 7
    ry q4, -1.337541
    qwait 7
    rz q4, 0.663604
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.270123
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.560313 | rz q5, 2.141438 }
    qwait 7
    ry q4, -2.345810
    qwait 7
    rz q4, 0.217847
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.835336
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.573939
    qwait 7
    ry q4, -1.161760
    qwait 7
    rz q4, -0.573939
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.792581
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -1.778400
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.309606 | rz q4, 0.867198 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.020460 }
    qwait 7
    rz q4, -0.892549
    qwait 7
    { rz q5, -0.978970 | ry q6, 1.486933 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.042658
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.771181 | ry q5, 1.644840 }
    qwait 7
    ry q4, -0.386977
    qwait 7
    rz q4, 0.771181
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.504899
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.662837 | rz q5, 0.160840 }
    qwait 7
    ry q4, -1.694500
    qwait 7
    rz q4, -3.616169
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.807003
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.523538
    qwait 7
    ry q4, -1.195233
    qwait 7
    rz q4, 0.523538
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.346126
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.150052
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.589344 | rz q4, -4.033427 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.661051 }
    qwait 7
    rz q4, -0.217231
    qwait 7
    { rz q5, -0.679055 | rz q6, -0.568080 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.623385
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.573731 | ry q5, 2.071674 }
    qwait 7
    ry q4, -0.475009
    qwait 7
    rz q4, 1.573731
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.764902
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.904202 | rz q5, 0.246450 }
    qwait 7
    ry q4, -1.576334
    qwait 7
    rz q4, 3.300418
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.446510
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -3.121304
    qwait 7
    ry q4, -1.150659
    qwait 7
    rz q4, 3.121304
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.678844
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.184890
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.600579 | rz q4, 2.234130 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.090960 }
    qwait 7
    rz q4, 1.062383
    qwait 7
    rz q5, 0.164323
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.743454
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.629366 | ry q5, 1.152369 }
    qwait 7
    ry q4, -0.512242
    qwait 7
    rz q4, 1.629366
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.797232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.651534 | rz q5, 1.091160 }
    qwait 7
    ry q4, -2.240981
    qwait 7
    rz q4, 2.205052
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.777808
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 2.741933
    qwait 7
    ry q4, -1.561898
    qwait 7
    rz q4, -2.741933
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.857984
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.392699
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.730732
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, -1.070810
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.849024
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, 0.285412 | rz q5, -0.346171 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, -0.849024 | rz q4, 2.422630 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.054241 }
    qwait 7
    rz q4, -0.670996
    qwait 7
    { cnot q4,q5 | rz q6, 0.040519 | ry q7, 0.261799 }
    qwait 15
    rz q5, -2.395018
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.330937 | ry q5, 1.739765 }
    qwait 7
    ry q4, -1.254475
    qwait 7
    rz q4, 2.330937
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.618025
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -2.169652 | rz q5, 0.126237 }
    qwait 7
    ry q4, -2.868867
    qwait 7
    rz q4, 2.683293
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.920065
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.083853
    qwait 7
    ry q4, -1.399634
    qwait 7
    rz q4, 1.083853
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.810583
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 1.374535
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.527623 | rz q4, -5.305886 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.764960 }
    qwait 7
    rz q4, 0.785715
    qwait 7
    { rz q5, -0.264883 | ry q6, 1.025571 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.987388
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.990355 | ry q5, 1.862818 }
    qwait 7
    ry q4, -0.392324
    qwait 7
    rz q4, -1.990355
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.827526
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.779818 | rz q5, 0.417135 }
    qwait 7
    ry q4, -1.301020
    qwait 7
    rz q4, -1.688079
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.817636
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.537353
    qwait 7
    ry q4, -0.105530
    qwait 7
    rz q4, 0.537353
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.386772
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.325953
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.964752 | rz q4, 0.589048 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.364848 }
    qwait 7
    rz q4, 4.476448
    qwait 7
    { rz q5, -0.862498 | rz q6, -0.749385 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.949294
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.830300 | ry q5, 1.652079 }
    qwait 7
    ry q4, -0.962399
    qwait 7
    rz q4, 0.830300
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.567936
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.400688 | rz q5, -1.608724 }
    qwait 7
    ry q4, -0.392400
    qwait 7
    rz q4, 2.556896
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.535112
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.631783
    qwait 7
    ry q4, -1.010089
    qwait 7
    rz q4, 2.631783
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.995045
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.425068
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 1.656585 | rz q4, -1.259555 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.413129 }
    qwait 7
    rz q4, -0.376948
    qwait 7
    rz q5, -0.023320
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.375551
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.124097 | ry q5, 1.630461 }
    qwait 7
    ry q4, -0.211290
    qwait 7
    rz q4, 0.124097
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.680158
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -5.829541 | rz q5, 0.242793 }
    qwait 7
    ry q4, -2.443439
    qwait 7
    rz q4, 0.018165
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.876220
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 1.413556
    qwait 7
    ry q4, -0.974064
    qwait 7
    rz q4, -1.413556
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q6,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q4,q7
    qwait 15
    ry q7, 0.261799
    qwait 7
    cnot q5,q7
    qwait 15
    { ry q7, 0.261799 | rz q5, 1.438258 }
    qwait 7
    cnot q4,q7
    qwait 15
    { ry q7, 0.261799 | rz q4, 3.477399 }
    qwait 7
    { cnot q6,q7 | ry q4, -1.335230 }
    qwait 7
    rz q4, 1.300499
    qwait 7
    { cnot q4,q5 | rz q6, -0.785398 | rz q7, -0.000000 }
    qwait 15
    rz q5, -0.801232
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.104663 | ry q5, 1.300200 }
    qwait 7
    ry q4, -1.513998
    qwait 7
    rz q4, 1.104663
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.817306
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.537000 | rz q5, -0.525194 }
    qwait 7
    ry q4, -2.102438
    qwait 7
    rz q4, -1.622373
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.334422
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, 0.438354
    qwait 7
    ry q4, -1.454119
    qwait 7
    rz q4, -0.438354
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -0.085948
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.484849 | rz q4, 3.350364 }
    qwait 7
    { cnot q5,q6 | ry q4, -2.676777 }
    qwait 7
    rz q4, 2.930095
    qwait 7
    { rz q5, 0.954045 | ry q6, 1.614267 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.745842
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 2.944517 | ry q5, 1.438536 }
    qwait 7
    ry q4, -1.291884
    qwait 7
    rz q4, -2.944517
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.852927
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.249836 | rz q5, -0.086264 }
    qwait 7
    ry q4, -2.002135
    qwait 7
    rz q4, -2.140359
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.840127
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.964859
    qwait 7
    ry q4, -1.544692
    qwait 7
    rz q4, 2.964859
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.309438
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, -0.036398
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 1.254285 | rz q4, 4.735940 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.080950 }
    qwait 7
    rz q4, -1.398253
    qwait 7
    { rz q5, 0.141644 | rz q6, -0.392699 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.581510
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 3.000507 | ry q5, 2.303325 }
    qwait 7
    ry q4, -1.345787
    qwait 7
    rz q4, -3.000507
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.768309
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.022805 | rz q5, -1.365775 }
    qwait 7
    ry q4, -2.559101
    qwait 7
    rz q4, 1.595668
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.372495
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.209858
    qwait 7
    ry q4, -0.713527
    qwait 7
    rz q4, 1.209858
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 1.718203
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, -0.159657
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.151992 | rz q4, -2.103083 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.642351 }
    qwait 7
    rz q4, -1.494416
    qwait 7
    rz q5, -0.071267
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.653073
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.387850 | ry q5, 0.437715 }
    qwait 7
    ry q4, -0.891440
    qwait 7
    rz q4, 0.387850
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.234582
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -4.048179 | rz q5, 1.259357 }
    qwait 7
    ry q4, -2.212950
    qwait 7
    rz q4, -0.379861
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -0.726894
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.204942
    qwait 7
    ry q4, -1.154988
    qwait 7
    rz q4, 0.204942
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -1.250684
    qwait 7
    cnot q5,q7
    qwait 15
    rz q7, -0.338033
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q6,q7
    qwait 15
    rz q7, 0.000000
    qwait 7
    cnot q4,q7
    qwait 15
    rz q7, -0.221786
    qwait 7
    cnot q5,q7
    qwait 15
    { rz q7, -1.134436 | rz q5, 1.175158 }
    qwait 7
    cnot q4,q7
    qwait 15
    { rz q7, 0.000000 | rz q4, 0.311756 }
    qwait 7
    { cnot q6,q7 | ry q4, -0.913364 }
    qwait 7
    rz q4, 5.950218
    qwait 7
    { cnot q4,q5 | rz q6, -0.392699 }
    qwait 15
    rz q5, 0.505238
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.562177 | ry q5, 1.229257 }
    qwait 7
    ry q4, -0.920386
    qwait 7
    rz q4, -0.562177
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.351218
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.714317 | rz q5, -0.815124 }
    qwait 7
    ry q4, -1.273729
    qwait 7
    rz q4, 2.687247
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 1.756678
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.191286
    qwait 7
    ry q4, -1.322072
    qwait 7
    rz q4, 1.191286
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, 0.560325
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.367070
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, -1.604025 | rz q4, 3.443813 }
    qwait 7
    { cnot q5,q6 | ry q4, -0.528964 }
    qwait 7
    rz q4, -2.730648
    qwait 7
    { rz q5, 0.333271 | ry q6, 1.783616 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 2.086082
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.945221 | ry q5, 1.423641 }
    qwait 7
    ry q4, -0.446899
    qwait 7
    rz q4, 0.945221
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.452590
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -3.227600 | rz q5, 0.879420 }
    qwait 7
    ry q4, -0.800360
    qwait 7
    rz q4, 0.895195
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.175390
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -2.704350
    qwait 7
    ry q4, -1.291475
    qwait 7
    rz q4, 2.704350
    qwait 7
    cnot q4,q6
    qwait 15
    ry q6, 0.493806
    qwait 7
    cnot q5,q6
    qwait 15
    ry q6, 0.142692
    qwait 7
    cnot q4,q6
    qwait 15
    { ry q6, 0.538500 | rz q4, 0.074716 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.215538 }
    qwait 7
    rz q4, 2.366195
    qwait 7
    { rz q5, -0.634980 | rz q6, 0.785398 }
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -2.304112
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -0.827265 | ry q5, 1.674571 }
    qwait 7
    ry q4, -1.142645
    qwait 7
    rz q4, 0.827265
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.564013
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 0.557684 | rz q5, -1.658384 }
    qwait 7
    ry q4, -0.316529
    qwait 7
    rz q4, 4.037339
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.946438
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -1.615404
    qwait 7
    ry q4, -1.423146
    qwait 7
    rz q4, 1.615404
    qwait 7
    cnot q4,q6
    qwait 15
    rz q6, -1.895989
    qwait 7
    cnot q5,q6
    qwait 15
    rz q6, 0.785398
    qwait 7
    cnot q4,q6
    qwait 15
    { rz q6, 0.325193 | rz q4, 3.212053 }
    qwait 7
    { cnot q5,q6 | ry q4, -1.388574 }
    qwait 7
    rz q4, -1.391053
    qwait 7
    rz q5, 1.520843
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, 0.942892
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, 1.229895 | ry q5, 1.477189 }
    qwait 7
    ry q4, -1.476998
    qwait 7
    rz q4, -1.229895
    qwait 7
    cnot q4,q5
    qwait 15
    ry q5, 0.636033
    qwait 7
    cnot q4,q5
    qwait 15
    { rz q4, -1.659093 | rz q5, -0.872758 }
    qwait 7
    ry q4, -2.163702
    qwait 7
    rz q4, -2.151962
    qwait 7
    cnot q4,q5
    qwait 15
    rz q5, -1.456869
    qwait 7
    cnot q4,q5
    qwait 15
    rz q4, -0.779867
    qwait 7
    ry q4, -1.548794
    qwait 7
    rz q4, 0.779867
    qwait 7


.QCirc4
    { h q0 | h q1 | h q2 | h q3 | h q4 | h q5 | h q6 | h q7 }
    { x q0 | x q1 | x q2 | x q3 | x q4 | x q5 | x q6 | x q7 }
    { h q7 | toffoli q0,q1,q5 }
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    toffoli q5,q1,q8
    qwait 31
    toffoli q0,q1,q5
    qwait 31
    { toffoli q2,q3,q1 | x q0 }
    h q0
    qwait 30
    toffoli q5,q1,q8
    qwait 31
    toffoli q2,q3,q1
    qwait 31
    { toffoli q5,q1,q8 | x q2 }
    h q2
    qwait 30
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    toffoli q6,q8,q1
    qwait 31
    toffoli q3,q1,q7
    qwait 31
    { toffoli q4,q5,q3 | toffoli q6,q8,q1 }
    qwait 31
    { toffoli q3,q1,q7 | x q4 | x q5 }
    { h q4 | h q5 }
    qwait 30
    toffoli q6,q8,q1
    qwait 31
    { toffoli q3,q1,q7 | x q6 }
    h q6
    qwait 30
    { h q7 | x q1 | x q3 }
    { h q1 | h q3 | x q7 }
    h q7
