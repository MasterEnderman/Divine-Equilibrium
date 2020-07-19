#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.roots.RunicShears;

var time as int = 60*20; // 1 minute cooldown

RunicShears.removeRecipe(<roots:fey_leather>);

RunicShears.addEntityRecipe("fey_leather", <roots:fey_leather>, <entity:mysticalworld:entity_deer>, time);
RunicShears.addEntityRecipe("pelt", <mysticalworld:pelt>, <entity:mysticalworld:entity_fox>, time);
