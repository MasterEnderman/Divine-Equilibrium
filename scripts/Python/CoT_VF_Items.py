import os

"""
This Python programm generates a Script, which generates an Item 
for every entry in a list utilizing ContentTweaker functions.
~ written by _MasterEnderman_
"""

items = {
    # __init__
    "null" : {
        "Pebble" : "pebble",
        "Azurite Pebble" : "azurite",
        "Fuel Pellet" : "pellet",
        "Heavy Ring" : "heavy_ring"
    },
    "bark" : {
        "Mysterywood Bark" : "bark_mysterywood",
        "Cherrywood Bark" : "bark_cherrywood",
        "Ancient Bark" : "bark_ancient"
    },
    "icon" : {
        "Primitive Crafting Icon" : "primcraft"
    },
    "materials" : {
        "Terra Ingot" : "terra_ingot"
    },
    "solidified_knowledge" : {
        "Solidified Fire Knowledge" : "solidified_fire_knowledge",
        "Solidified Water Knowledge" : "solidified_water_knowledge",
        "Solidified Air Knowledge" : "solidified_air_knowledge",
        "Solidified Earth Knowledge" : "solidified_earth_knowledge"
    },
    "tools" : {
        "The Hwaxun" : "hwaxun",
        "Stone Pickaxe Head" : "head_stone_pickaxe",
        "Stone Axe Head" : "head_stone_axe",
        "Stone Shovel Head" : "head_stone_shovel",
        "Stone Sword Blade" : "head_stone_sword"
    }
}

head = """#priority 1000
#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_Items");\n
"""

with open(os.getcwd()+r"\.minecraft\scripts\ContentTweaker\VanillaFactory\VF_Items.zs", "r+") as f:
    f.truncate(0)
    f.write(head)
    for key, value in items.items():
        f.write("//"+key+"\n")
        for lang, name in value.items():
            f.write("var "+name+' as Item = VanillaFactory.createItem("'+name+'");\n')
            f.write(name+'.setLocalizedNameSupplier(function(itemStack) {return "'+lang+'";});\n')
            if (key != "null"):
                f.write(name+'.textureLocation = ResourceLocation.create("contenttweaker:items/'+key+"/"+name+'");\n')
            f.write(name+".register();\n\n")
