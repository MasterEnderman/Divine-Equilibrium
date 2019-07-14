#modloaded scalinghealth
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_ScalingHealth as IIngredient[] = [
    <scalinghealth:crystalore>,
    <scalinghealth:heartcontainer>,
    <scalinghealth:crystalshard>,
];

disableItems(JEI_ScalingHealth);

