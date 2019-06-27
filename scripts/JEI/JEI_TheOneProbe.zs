#modloaded theoneprobe
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_TheOneProbe as IIngredient[] = [
    <theoneprobe:probe>,
    <theoneprobe:creativeprobe>,
    <theoneprobe:diamond_helmet_probe>,
    <theoneprobe:gold_helmet_probe>,
    <theoneprobe:iron_helmet_probe>,
];

disableItems(JEI_TheOneProbe);

