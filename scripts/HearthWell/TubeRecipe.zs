#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.hwell.removeTubeRecipe;
import mods.hwell.addTubeRecipe;

//mods.hwell.removeTubeRecipe(IItemStack input)

var removeTube as IItemStack[] = [
    <minecraft:leaves>,
    <minecraft:leaves:1>,
    <minecraft:leaves:2>,
    <minecraft:leaves:3>,
    <minecraft:leaves2>,
    <minecraft:leaves2:1>,
    <minecraft:ice>,
    <minecraft:packed_ice>,
    <minecraft:cactus>,
    <minecraft:stone>,
    <minecraft:stone:1>,
    <minecraft:stone:2>,
    <minecraft:stone:3>,
    <minecraft:stone:4>,
    <minecraft:stone:5>,
    <minecraft:stone:6>,
    <minecraft:sandstone>,
    <minecraft:sandstone:1>,
    <minecraft:cobblestone>
];

for item in removeTube {
    removeTubeRecipe(item);
}

//mods.hwell.addTubeRecipe(IItemStack input, FluidStack output)

var tubeMap as IItemStack[][ILiquidStack] = {
    <liquid:water>*1000 : [
        <forbidden_arcanus:mysterywood_leaves>
    ]
};

for fluid, inputs in tubeMap {
    for item in inputs {
        addTubeRecipe(item,fluid);
    }
}
