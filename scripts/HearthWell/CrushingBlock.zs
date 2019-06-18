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
    <hwell:crystal_nether>
];

for item in crushingRemove {
    removeCrushingBlockRecipe(item);
}
