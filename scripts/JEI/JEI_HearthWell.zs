#modloaded hwell
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_HearthWell as IIngredient[] = [
    <hwell:myst_fertilizer>,
    <hwell:empty_rod>,
    <hwell:rod_myst_2>,
    <hwell:rod_myst_1>,
    <hwell:rod_blaze_3>,
    <hwell:rod_blaze_2>,
    <hwell:rod_blaze_1>,
];

disableItems(JEI_HearthWell);
