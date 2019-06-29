#modloaded potionfingers
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_PotionFingers as IIngredient[] = [
    <potionfingers:ring:1>.withTag({effect: "minecraft:speed"}),
    <potionfingers:ring:1>.withTag({effect: "minecraft:haste"}),
    <potionfingers:ring:1>.withTag({effect: "minecraft:resistance"}),
    <potionfingers:ring:1>.withTag({effect: "minecraft:jump_boost"}),
    <potionfingers:ring:1>.withTag({effect: "minecraft:strength"}),
    <potionfingers:ring:1>.withTag({effect: "minecraft:regeneration"}),
];

disableItems(JEI_PotionFingers);
