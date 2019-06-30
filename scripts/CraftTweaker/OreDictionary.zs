#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var oredictManager as IItemStack[][string][IOreDictEntry] = {
    <ore:oreAmethyst> : {
        "remove" : [<arcaneworld:ore_amethyst>]
    },
    <ore:oreAmethyst> : {
        "remove" : [<arcaneworld:ore_amethyst_nether>]
    },
    <ore:blockAmethyst> : {
        "remove" : [<arcaneworld:block_amethyst>]
    },
    <ore:gemAmethyst> : {
        "remove" : [<arcaneworld:amethyst>]
    },
};

for dict, data in oredictManager {
    for key, items in data {
        for item in items {
            if (key == "remove") {
                dict.remove(item);
            }
            if (key == "add") {
                dict.add(item);
            }
        }
    }
}
