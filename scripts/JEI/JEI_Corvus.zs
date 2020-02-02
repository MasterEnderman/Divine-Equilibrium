#modloaded corvus
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_Corvus as IIngredient[] = [
    <corvus:mud>,
    <corvus:twilight_garget>,
    <corvus:special_stick>,
    <corvus:feral_claw>,
    <corvus:flora_of_vitality>,
];

disableItems(JEI_Corvus);

