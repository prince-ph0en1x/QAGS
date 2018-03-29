qubits 2

.init

h q0
h q1

#display

.quamdq(3)

ry q0,-0.927295
rz q0,-1.570796
rz q1,-1.570796
cnot q0,q1
rz q1,-1.570796
cnot q0,q1
ry q1,0.927295
cnot q0,q1
ry q1,0.927295
cnot q0,q1
rz q0,3.141593
ry q0,-0.927295
rz q0,-3.141593

#display

h q0
h q1
x q0
x q1

h q1
cnot q0,q1
h q1

x q0
x q1
h q0
h q1

display