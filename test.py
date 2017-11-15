from openql import openql as ql
import os

def test():
    config_fn = os.path.join('test_cfg_none.json')
    platform  = ql.Platform('platform_none', config_fn)
    num_qubits = 17
    p = ql.Program('aProgram', num_qubits, platform)
    k = ql.Kernel('aKernel', platform)

    k.x(0) # x will be dcomposed
    k.gate("x",0); # x will be dcomposed
    k.gate("y",0); # decomposition not available, will use custom gate
    k.gate("s",1); # decomposition as well as custom gate not available, will use default gate
    k.gate("roty90",0) # any name can be used for composite gate

    k.gate("cnot", 0, 1) # cnot will be decomposed
    k.gate("cnot", [2, 3]) # same as above but with a list of qubits

    # add the kernel to the program
    p.add_kernel(k)

    # compile the program
    p.compile(False, "ASAP", False)

if __name__ == '__main__':
    test()
