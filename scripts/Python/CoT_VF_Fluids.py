import os

"""
This Python programm generates a Script, which generates a Fluid 
for every entry in a list utilizing ContentTweaker funtions.
~ written by _MasterEnderman_
"""

fluids = [
    # Liquid Name // Color (hex) // Density (Walkspeed) [Default:1000] // Luminosity (Lightlevel) (int) [Default: 0] // Temperature (int) [Default: 300]
    ["frankencense_essence", "#C26D23", 1000, 1, 290]
]

head = """#priority 1000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

print("Loading VF_Fluids");\n
"""

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\VanillaFactory\VF_Fluids.zs", "r+") as f:
    f.truncate(0)
    f.write(head)
    for i in range(len(fluids)):
        f.write("var "+fluids[i][0]+' as Fluid = VanillaFactory.createFluid("'+fluids[i][0]+'",'+str(int(fluids[i][1].replace(r"#",""),16))+');\n')
        f.write(fluids[i][0]+".setDensity("+str(fluids[i][2])+");\n")
        f.write(fluids[i][0]+".setLuminosity("+str(fluids[i][3])+");\n")
        f.write(fluids[i][0]+".setTemperature("+str(fluids[i][4])+");\n")
        f.write(fluids[i][0]+".register();\n\n")
