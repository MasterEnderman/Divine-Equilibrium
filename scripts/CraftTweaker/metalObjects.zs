#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Loading metalObjects");

global metalObjects as IOreDictEntry[string][string] = {
    "brass" : {
    },
    "thaumium" : {
    }
};