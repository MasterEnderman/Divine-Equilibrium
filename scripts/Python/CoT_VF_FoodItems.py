import os

"""
This Python programm generates a Script, which generates a Food Item 
for every entry in a list utilizing ContentTweaker functions.
~ written by _MasterEnderman_
"""

foods = {
    # Name // healAmount // saturation [Default: 0.6]
    "apple" : {
        "mystical" : {
            "hunger" : 4,
            "saturation" : 0.9
        }
    }
}

head = """#priority 1000
#loader contenttweaker

import mods.contenttweaker.ItemFood;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_FoodItems");\n
"""

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\VanillaFactory\VF_FoodItems.zs", "r+") as f:
    f.truncate(0)
    f.write(head)
    for category, types in foods.items():
        f.write("//"+category+"\n")
        for food, data in types.items():
            itemname = category+"_"+food
            f.write("var "+itemname+' = VanillaFactory.createItemFood("'+itemname+'",'+str(data["hunger"])+');\n')
            f.write(itemname+".setSaturation("+str(data["saturation"])+");\n")
            f.write(itemname+'.textureLocation = ResourceLocation.create("contenttweaker:items/food/'+itemname+'");\n')
            f.write(itemname+".register();\n\n")
