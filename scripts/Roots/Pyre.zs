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
    <roots:cloud_berry>,
    <roots:moonglow_leaf>,
    <roots:pereskia>,
];

for item in pyreRemove {
    Pyre.removeRecipe(item);
}

var pyreMap as IIngredient[][string][IItemStack] = {
    <minecraft:stone>*4 : {
        "blaze_to_stone" : [<corvus:blazing_tulip>,<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]
    },
    <roots:cloud_berry> : {
        "cloud_berry" : [<forbidden_arcanus:mundabitur_dust>,<minecraft:tallgrass:1>,<forbidden_arcanus:cherrywood_leaves>,<roots:terra_moss>,<corvus:crystal_quartz>]
    },
    <roots:moonglow_leaf> : {
        "moonglow_leaf" : [<forbidden_arcanus:mundabitur_dust>,<corvus:wormwood>,<arcaneworld:sapphire>,<minecraft:glass>,<corvus:crystal_quartz>]
    },
    <corvus:wormwood> : {
        "wormwood" : [<forbidden_arcanus:mundabitur_dust>,<roots:terra_moss>,<roots:wildwood_leaves>,<rootsclassic:verdantsprig>,<corvus:crystal_quartz>]
    },
    <roots:pereskia> : {
        "pereskia" : [<forbidden_arcanus:mundabitur_dust>,<corvus:stunning_dahlia>,<minecraft:melon>,<mysticalworld:amethyst_gem>,<corvus:crystal_quartz>]
    },
    /*
    <roots:ritual_wild_growth> : {
        "ritual_wild_growth" : [<roots:wildroot>,<roots:spirit_herb>,<roots:bark_oak>,<roots:bark_jungle>,<rootsclassic:verdantsprig>]
    }
    */
};

for output, recipes in pyreMap {
    for name, input in recipes {
        Pyre.addRecipe(name, output, input);
    }
}
