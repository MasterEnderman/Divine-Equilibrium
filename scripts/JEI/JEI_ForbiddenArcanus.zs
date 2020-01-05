#modloaded forbidden_arcanus
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_ForbiddenArcanus as IIngredient[] = [
    <forbidden_arcanus:seed_bullet>
];

disableItems(JEI_ForbiddenArcanus);
