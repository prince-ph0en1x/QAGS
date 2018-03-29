import json

m = [ [0.0,1.0], [1.0,0.0], [1.0,0.0], [0.0,0.0] ]
q = 50

instructions = {}
g1 = ['prepz','x','h']
gq = {'duration': 1}
gq.update({'matrix': m})
for gi in range(0,len(g1)):
    for qi in range(0,q):    
        gqname = g1[gi]+' q'+str(qi)
        instructions.update({gqname:gq})

fullJson = {"eqasm_compiler" : "none"}
fullJson.update({"hardware_settings": {"qubit_number": 50,"cycle_time" : 5}})
fullJson.update({"resources": {}})
fullJson.update({"topology": {}})
fullJson.update({"instructions": instructions})

with open("gateConfig.json",'w') as file:
    json.dump(fullJson,file,indent=2,sort_keys=True)
file.close()

