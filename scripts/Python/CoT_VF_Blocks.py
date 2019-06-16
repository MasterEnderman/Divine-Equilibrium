import os

"""
This Python programm generates a Script, which generates a Block 
for every entry in a list utilizing ContentTweaker functions.
~ written by _MasterEnderman_
"""

#blockmaterial = [Air,Grass,Ground,Wood,Rock,Iron,Anvil,Water,Lava,Leaves,Plants,Vine,Sponge,Cloth,Fire,Sand,Circuits,Carpet,Glass,Redstone_Light,TNT,Coral,Ice,Packed_Ice,Crafted_Snow,Cactus,Clay,Gourd,Dragon_Egg,Portal,Cake,Web]
#soundtypes = [Wood,Ground,Plant,Stone,Metal,Glass,Cloth,Sand,Snow,Ladder,Anvil,Slime?]

blocks = {
    # ID // Material // Hardness // Resistence // Tool // Tool Lvl // Sound
    "null" : [
        ["spawn_chamber", "rock", 10, 30, "pickaxe", 0, "stone"],
        ["charred_cobblestone", "rock", 2, 30, "pickaxe", 0, "stone"],
        ["flesh_block", "rock", 2, 10, "pickaxe", 0, "ground"]
    ]
}

head = """#priority 1000
#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_Blocks");\n
"""

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\VanillaFactory\VF_Blocks.zs", "r+") as f:
    f.truncate(0)
    f.write(head)
    for key, value in blocks.items():
        for i in value:
            f.write("var "+i[0]+' = VanillaFactory.createBlock("'+i[0]+'", <blockmaterial:'+i[1]+'>);\n')
            if (key != "null"):
                f.write(i[0]+'.textureLocation = ResourceLocation.create("contenttweaker:blocks/'+key+"/"+i[0]+'");\n')
            f.write(i[0]+'.setBlockHardness('+str(float(i[2]))+');\n')
            f.write(i[0]+'.setBlockResistance('+str(float(i[3]))+');\n')
            f.write(i[0]+'.setToolClass("'+i[4]+'");\n')
            f.write(i[0]+'.setToolLevel('+str(int(i[5]))+');\n')
            f.write(i[0]+'.setBlockSoundType(<soundtype:'+i[6]+'>);\n')
            f.write(i[0]+'.register();\n\n')
