#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.hwell.removeCrushingBlockRecipe;
import mods.hwell.addCrushingBlockRecipe;

//mods.hwell.removeCrushingBlockRecipe(IItemStack input);

var crushingRemove as IItemStack[] = [
    <hwell:crystal>,
    <hwell:crystal_nether>,
    <hwell:myst_rod>,
    <hwell:heavy_nugget>,
    <hwell:citrinic_sand>,
    <minecraft:tallgrass:1>,
    <hwell:meat_block>,
    <minecraft:ladder>,
    <minecraft:sandstone>,
    <minecraft:stone>,
    <minecraft:cobblestone>,
    <hwell:locked_light>
];

for item in crushingRemove {
    removeCrushingBlockRecipe(item);
}

//mods.hwell.addCrushingBlockRecipe(IItemStack input, IItemStack[] outputs, double[] probabilities);

var crushingAdd as double[IItemStack][IItemStack] = {
    <minecraft:skull:3> : {
        <forbidden_arcanus:soul> : 0.9,
        <forbidden_arcanus:dark_soul> : 0.1
    },
    <hwell:fullgrass_block> : {
        <rootsclassic:growthsalve>*2 : 1.0
    },
    <minecraft:stick> : {
        <soulus:dust_wood> : 1.0
    },
    <minecraft:flint> : {
        <soulus:dust_stone> : 1.0
    }
};

for input, outputs in crushingAdd {
    var drops as IItemStack[] = [];
    var probabilities as double[] = [];
    for item, chance in outputs {
        drops += item;
        probabilities += chance;
    }
    addCrushingBlockRecipe(input, drops, probabilities);
}
