#modloaded embers
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_Embers as IIngredient[] = [
    <embers:block_caminite_brick_slab_double>,
    <embers:ashen_stone_slab_double>,
    <embers:ashen_brick_slab_double>,
    <embers:ashen_tile_slab_double>,
];

disableItems(JEI_Embers);
