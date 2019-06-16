#norun
#modloaded orestages
#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.orestages.OreStages;

var oreStages as IIngredient[][IItemStack][string] = {
    "primal_materials" : {
        <minecraft:stone> : [
            <minecraft:dirt>,
            <ore:logWood>
        ]
    }
};

for stage, data in oreStages {
    for block, ores in data {
        for ore in ores {
            OreStages.addReplacement(stage, ore, block);
        }
    }
}
