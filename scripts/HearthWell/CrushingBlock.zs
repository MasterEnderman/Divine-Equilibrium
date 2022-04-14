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
    <forbidden_arcanus:skull> : {
        <forbidden_arcanus:soul> : 0.9,
        <forbidden_arcanus:dark_soul> : 0.1
    },
    <hwell:fullgrass_block> : {
        <rootsclassic:growthsalve>*2 : 1.0
    },
    <minecraft:stick> : {
        <soulus:dust_wood> : 1.0
    },
    <contenttweaker:bark_cherrywood> : {
        <soulus:dust_wood> : 1.0
    },
    <contenttweaker:bark_mysterywood> : {
        <soulus:dust_wood> : 1.0
    },
    <contenttweaker:bark_ancient> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_oak> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_spruce> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_birch> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_jungle> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_dark_oak> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_acacia> : {
        <soulus:dust_wood> : 1.0
    },
    <roots:bark_wildwood> : {
        <soulus:dust_wood> : 1.0
    },
    <minecraft:flint> : {
        <soulus:dust_stone> : 1.0
    },
    <contenttweaker:pebble> : {
        <hwell:dust>*1 : 0.2,
        <hwell:dust>*2 : 0.5,
        <hwell:dust>*3 : 0.2,
        <hwell:dust>*4 : 0.1
    },
    <minecraft:cobblestone> : {
        <minecraft:gravel> : 1.0
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
    <hwell:smooth_azurite> : {
        <contenttweaker:azurite>*2 : 0.2, 
        <contenttweaker:azurite>*3 : 0.5, 
        <contenttweaker:azurite>*4 : 0.3
    },
    <contenttweaker:heart_token> : {
        <scalinghealth:heartdust>*2 : 0.1,
        <scalinghealth:heartdust>*4 : 0.3,
        <scalinghealth:heartdust>*6 : 0.2,
        <scalinghealth:heartdust>*8 : 0.3,
        <scalinghealth:heartdust>*10 : 0.1
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
    <mysticalworld:charred_planks> : {
        <mysticalworld:charred_button> : 1.0
    },
    <hwell:crystal_block> : {
        <hwell:crystal>*6 : 0.2,
        <hwell:crystal>*7 : 0.3,
        <hwell:crystal>*8 : 0.4,
        <hwell:crystal>*9 : 0.1
    },
    <evilcraft:dark_gem> : {
        <evilcraft:dark_gem_crushed> : 0.7,
        <evilcraft:dark_gem_crushed>*2 : 0.3
    },
    bloodCrystal["full"] : {
        <soulus:crystal_blood_broken> : 1.0
    },
    <soulus:crystal_blood_broken> : {
        <evilcraft:condensed_blood>*8 : 0.3,
        <evilcraft:condensed_blood>*10 : 0.3,
        <evilcraft:condensed_blood>*12 : 0.3,
        <evilcraft:condensed_blood>*14 : 0.1
    },
    <soulus:crystal_dark> : {
        <forbidden_arcanus:corrupti_dust>*2 : 0.5,
        <forbidden_arcanus:corrupti_dust>*3 : 0.3,
        <forbidden_arcanus:corrupti_dust>*4 : 0.2
    },
    <minecraft:coal> : {
        <contenttweaker:pellet>*8 : 1.0
    },
    <minecraft:coal:1> : {
        <contenttweaker:pellet>*8 : 1.0
    },
    <evilcraft:blood_waxed_coal> : {
        <contenttweaker:pellet>*16 : 1.0
    },
    <contenttweaker:golem_corpse> : {
        <forbidden_arcanus:soul> : 0.5,
        <forbidden_arcanus:dark_soul> : 0.5
    },
    <forbidden_arcanus:mysterywood_sapling> : {
        <minecraft:stick> : 0.5,
        <naturesaura:gold_leaf> : 0.3
    },
    <corvus:lily_toxic> : {
        <rootsclassic:growthsalve> : 1.0
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
