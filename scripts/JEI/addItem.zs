#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.jei.JEI;

print("Adding item to JEI");

JEI.addItem(<potionfingers:ring>.withTag({effect: "corvus:breath_of_gaia", display: {Name: "§3Ring of Gaia"}}));
JEI.addItem(<potionfingers:ring>.withTag({effect: "minecraft:haste", display: {Name: "§6Ring of Haste"}}));
JEI.addItem(<potionfingers:ring>.withTag({effect: "forbidden_arcanus:fly", display: {Name: "§dRing of Flight"}}));
