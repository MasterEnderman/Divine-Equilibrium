import os

"""
This Python programm generates a Script, which generates an Item 
for every entry in a list utilizing ContentTweaker functions.
~ written by _MasterEnderman_
"""

items = {
    # __init__
    "null" : {
        "Pebble" : "pebble"
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
