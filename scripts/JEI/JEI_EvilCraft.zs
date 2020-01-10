#modloaded evilcraft
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_EvilCraft as IIngredient[] = [
    <evilcraft:nether_monster_block>,
    <evilcraft:nether_monster_block:1>,
    <evilcraft:nether_monster_block:2>,
    <evilcraft:environmental_accumulator>
];

disableItems(JEI_EvilCraft);

