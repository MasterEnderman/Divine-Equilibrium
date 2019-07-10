#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

var renameMap as string[IItemStack] = {
    <minecraft:leather_helmet> : "Pelt Cap",
    <minecraft:leather_chestplate> : "Pelt Tunic",
    <minecraft:leather_leggings> : "Pelt Pants",
    <minecraft:leather_boots> : "Pelt Boots"
};

for item, name in renameMap {
    item.displayName = name;
}

