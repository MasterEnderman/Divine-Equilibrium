#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.roots.Ritual;

//Ritual.modifyRitual("ritual_windwall", [<minecraft:feather>, <minecraft:glass>, <roots:cloud_berry>, <roots:cloud_berry>, <minecraft:web>]);

var ritualMap as IIngredient[][string] = {
    "ritual_wild_growth" : [<roots:wildroot>,<roots:spirit_herb>,<roots:bark_oak>,<roots:bark_jungle>,<rootsclassic:verdantsprig>]
};

for ritual, ingredients in ritualMap {
    Ritual.modifyRitual(ritual, ingredients);
}
