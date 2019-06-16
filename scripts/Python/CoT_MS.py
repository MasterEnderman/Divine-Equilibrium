import os

"""
This Python programm generates a ZenScript, which automates the Creation of the required
files utilizing ContentTweaker's MaterialSystem.
~ written by _MasterEnderman_
"""

parts = [ #Custom Parts you want to add have to be specified here
    #Part name // Ore Dict name // TAG:type
    ["dust_small","dustSmall","CRAFTING"],
    ["dust_tiny","dustTiny","CRAFTING"],
    ["screw","screw","CRAFTING"],
    ["foil","foil","CRAFTING"],
    ["ring","ring","CRAFTING"],
    ["ingot_double","ingotDouble","CRAFTING"],
    ["plate_curved","plateCurved","CRAFTING"],
    ["nut","nut","CRAFTING"],
    ["gem","gem","GEM"],
    ["gem_chipped","gemChipped","GEM"],
    ["gem_exquisite","gemExquisite","GEM"],
    ["gem_flawed", "gemFlawed", "GEM"],
    ["gem_flawless", "gemFlawless", "GEM"],
    ["gem_dust","gemDust","GEM"],
    ["gem_dust_small","gemDustSmall","GEM"],
    ["gem_dust_tiny","gemDustTiny","GEM"]
]

materials = [ #Custom Materials you want to add have to be specified here
    #Material name // Localized Name // Color (hex) // Gem? // [Crafting(Ingot,Plate),Processing(Dust,Ore),Fluid]
    
]

crafting = [ #Default ContentTweaker values, disable a part by commenting it out
    #Part name // Ore Dict name
    ["block","block"],
	["nugget","nugget"],
	["ingot","ingot"],
	["plate","plate"],
    ["dense_plate","plateDense"],
	["gear","gear"],
    ["beam","beam"],
    ["bolt","bolt"],
    ["casing","casing"],
    ["rod","rod"],
	["dust","dust"]
]

processing = [ #Default ContentTweaker values, disable a part by commenting it out
    #Part name // Ore Dict name
    ["cluster","cluster"],
   	["clump","clump"],
   	["crushed_ore","oreCrushed"],
   	["dirty_dust","dustDirty"],
    ["crystal","crystal"],
    ["shard","shard"],
    ["ore","ore"]
]

gem = [  #Default ContentTweaker values, disable a part by commenting it out
    #Part name // Ore Dict name
    ["ore", "ore"]
]

for i in range(len(parts)):
    temp_list = [parts[i][0], parts[i][1]]
    if parts[i][2] == "CRAFTING":
        crafting.append(temp_list)
    elif parts[i][2] == "PROCESSING":
        processing.append(temp_list)
    elif parts[i][2] == "GEM":
    	gem.append(temp_list)

MS_Definition = """#priority 100000
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

print("Loading MS_Definition");\n
"""

funtions = """function addDefaultMoltenData(moltenData as MaterialPartData) {
	moltenData.addDataValue("density", "4000");
	moltenData.addDataValue("viscosity", "3000");
	moltenData.addDataValue("temperature", "1500");
	moltenData.addDataValue("vaporize", "false");
}

function addDefaultOreData(oreData as MaterialPartData) {
	oreData.addDataValue("variants", "minecraft:stone");
	oreData.addDataValue("hardness", "5");
	oreData.addDataValue("resistance", "15");
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("harvestLevel", "1");
}
"""

space = "    "

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\MaterialSystem\MS_Definition.zs", "r+") as f:
    f.truncate(0)
    f.write(MS_Definition)
    for i in range(len(parts)):
        f.write("var "+parts[i][0]+' = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("'+parts[i][0]+
            '").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName("'+parts[i][1]+
            '").build();\n')
    if len(materials) > 0:
        f.write("\nstatic materials as Material[string] = {\n")
        for i in range(len(materials)):
            if i == len(materials)-1:
                f.write(space+'"'+materials[i][0]+'": MaterialSystem.getMaterialBuilder().setName("'+materials[i][1]+
                    '").setColor('+str(int(materials[i][2].replace(r"#",""),16))+').build()\n')
            else:
                f.write(space+'"'+materials[i][0]+'": MaterialSystem.getMaterialBuilder().setName("'+materials[i][1]+
                    '").setColor('+str(int(materials[i][2].replace(r"#",""),16))+').build(),\n')
        f.write("};\n")
    f.write("\n"+funtions)

MS_Registration = """#priority 99999
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

import scripts.ContentTweaker.MaterialSystem.MS_Definition.addDefaultMoltenData;
import scripts.ContentTweaker.MaterialSystem.MS_Definition.addDefaultOreData;
import scripts.ContentTweaker.MaterialSystem.MS_Definition.materials;

print("Loading MS_Registration");
"""

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\MaterialSystem\MS_Registration.zs", "r+") as f:
    f.truncate(0)
    f.write(MS_Registration)
    for i in range(len(materials)):
        f.write("\n//"+materials[i][0]+"\n\n")
        if not materials[i][3]:
        	registerMetal = []
	        if materials[i][4][0]:
	            for j in range(len(crafting)):
	                registerMetal.append(crafting[j][0])
	        if materials[i][4][1]:
	            for k in range(len(processing)):
	                if processing[k][0] == "ore":
	                    f.write("var "+materials[i][0]+"OreData as MaterialPartData = " +
	                            "materials."+materials[i][0]+'.registerPart("ore").getData();\n')
	                    f.write("addDefaultOreData("+materials[i][0]+"OreData);\n\n")
	                else:
	                    registerMetal.append(processing[k][0])
	        if materials[i][4][2]:
	            f.write("var "+materials[i][0]+"FluidData as MaterialPartData = " +
	                    "materials."+materials[i][0]+'.registerPart("molten").getData();\n')
	            f.write("addDefaultMoltenData("+materials[i][0]+"FluidData);\n\n")
	        if materials[i][4][0] or materials[i][4][1]:
	            f.write('materials.'+materials[i][0]+'.registerParts(' +
	                    str(registerMetal).replace("'", '"')+' as string[]);\n')
        else:
            registerGem = []
            for k in range(len(gem)):
	                if gem[k][0] == "ore":
	                    f.write("var "+materials[i][0]+"OreData as MaterialPartData = " +
	                            "materials."+materials[i][0]+'.registerPart("ore").getData();\n')
	                    f.write(
	                        "addDefaultOreData("+materials[i][0]+"OreData);\n\n")
	                else:
	                    registerGem.append(gem[k][0])
            f.write('materials.'+materials[i][0]+'.registerParts('+str(registerGem).replace("'",'"')+' as string[]);\n')


metalObjects = """#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Loading metalObjects");

global metalObjects as IOreDictEntry[string][string] = {
"""

with open(os.getcwd()+r"\.minecraft\scripts\Crafttweaker\metalObjects.zs", "r+") as f:
    f.truncate(0)
    f.write(metalObjects)
    for i in range(len(materials)):
        if not materials[i][3]:
            f.write(space+'"'+materials[i][0]+'" : {\n')
            if materials[i][4][0]:
                for n in range(len(crafting)):
                    if n == len(crafting)-1 and not materials[i][4][1]:
                        f.write(space*2+'"'+crafting[n][0]+'" : <ore:' +
                            crafting[n][1]+materials[i][1].replace(" ","")+">\n")
                    else:
                        f.write(space*2+'"'+crafting[n][0]+'" : <ore:' +
                                crafting[n][1]+materials[i][1].replace(" ", "")+">,\n")
            if materials[i][4][1]:
                for n in range(len(processing)):
                    if n == len(processing)-1:
                        f.write(space*2+'"'+processing[n][0]+'" : <ore:' +
                                processing[n][1]+materials[i][1].replace(" ", "")+">\n")
                    else:
                        f.write(space*2+'"'+processing[n][0]+'" : <ore:' +
                                processing[n][1]+materials[i][1].replace(" ", "")+">,\n")
            if materials[i+1][3]:
                f.write(space+"}\n")
            else:
                f.write(space+"},\n")
    f.write("};")

gemObjects = """#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Loading gemObjects");

global gemObjects as IOreDictEntry[string][string] = {
"""

with open(os.getcwd()+r"\.minecraft\scripts\Crafttweaker\gemObjects.zs", "r+") as f:
    f.truncate(0)
    f.write(gemObjects)
    for i in range(len(materials)):
    	if materials[i][3]:
            f.write(space+'"'+materials[i][0]+'" : {\n')
            for n in range(len(gem)):
                if n == len(gem)-1:
                    f.write(space*2+'"'+gem[n][0]+'" : <ore:' +
                        gem[n][1]+materials[i][1].replace(" ","")+">\n")
                else:
                    f.write(space*2+'"'+gem[n][0]+'" : <ore:' +
                            gem[n][1]+materials[i][1].replace(" ", "")+">,\n")
            if i == len(materials)-1:
	            f.write(space+"}\n")
            else:
	            f.write(space+"},\n")
    f.write("};")
