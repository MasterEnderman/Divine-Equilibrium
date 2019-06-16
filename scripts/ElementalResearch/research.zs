#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.elementalresearch.Util;

var wood = Util.createEntry("Wood");
wood.setIcon(<minecraft:log>);
wood.airCost = 5;
wood.earthCost = 20;
wood.experienceGiven = 3;
wood.addGivenStage("wood");
wood.build();
