#!/bin/bash

echo "@$ : Compiling Program with OpenQL"

python3 qg_v2p1.py

echo "@$ : Running qasm on QX Simulator"

../QXSim/qx_simulator_1.0.beta_linux_x86_64 test_output/qg.qasm