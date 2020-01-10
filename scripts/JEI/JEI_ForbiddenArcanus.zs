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
    <forbidden_arcanus:seed_bullet>,
    <forbidden_arcanus:rune_bag>,
    <forbidden_arcanus:dark_rune_bag>,
    <forbidden_arcanus:mystical_dagger>
];

disableItems(JEI_ForbiddenArcanus);
