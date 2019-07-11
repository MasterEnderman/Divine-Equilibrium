#modloaded hwell
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
    <hwell:locked_light>,
    <minecraft:gravel>
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
    },
    <contenttweaker:pebble> : {
        <hwell:dust> : 1.0
    },
    <minecraft:cobblestone> : {
        <contenttweaker:pebble> : 1.0
    },
    <minecraft:gravel> : {
        <minecraft:flint>*2 : 1.0
    },
    <hwell:dust_block> : {
        <hwell:dust>*4 : 1.0
    },
    <soulus:bone_normal> : {
        <minecraft:dye:15> : 0.6,
        <minecraft:dye:15>*2 : 0.3,
        <minecraft:dye:15>*3 : 0.1
    },
    <roots:wildwood_planks> : {
        <roots:wildwood_button> : 1.0
    },
    <forbidden_arcanus:mysterywood_planks> : {
        <forbidden_arcanus:mysterywood_button> : 1.0
    },
    <forbidden_arcanus:edelwood_planks> : {
        <forbidden_arcanus:edelwood_button> : 1.0
    },
    <forbidden_arcanus:cherrywood_planks> : {
        <forbidden_arcanus:cherrywood_button> : 1.0
    },
    <minecraft:planks> : {
        <minecraft:wooden_button> : 1.0
    },
    <minecraft:planks:1> : {
        <minecraft:wooden_button> : 1.0
    },
    <minecraft:planks:2> : {
        <minecraft:wooden_button> : 1.0
    },
    <minecraft:planks:3> : {
        <minecraft:wooden_button> : 1.0
    },
    <minecraft:planks:4> : {
        <minecraft:wooden_button> : 1.0
    },
    <minecraft:planks:5> : {
        <minecraft:wooden_button> : 1.0
    },
    <corvus:frankinsence_planks> : {
        <minecraft:wooden_button> : 1.0
    },
    <hwell:myst_planks> : {
        <minecraft:wooden_button> : 1.0
    },
    <integrateddynamics:menril_planks> : {
        <minecraft:wooden_button> : 1.0
    },
    <naturesaura:ancient_planks> : {
        <minecraft:wooden_button> : 1.0
    },
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
