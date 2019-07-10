#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.roots.Pyre;

var pyreRemove as IItemStack[] = [

];

for item in pyreRemove {
    Pyre.removeRecipe(item);
}

var pyreMap as IIngredient[][string][IItemStack] = {
    <minecraft:stone>*4 : {
        "blaze_to_stone" : [<corvus:blazing_tulip>,<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]
    }
};

for output, recipes in pyreMap {
    for name, input in recipes {
        Pyre.addRecipe(name, output, input);
    }
}
