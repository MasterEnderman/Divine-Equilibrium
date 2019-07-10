#modloaded mysticalmechanics
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_MysticalMechanics as IIngredient[] = [
    <mysticalmechanics:gear_iron>
];

disableItems(JEI_MysticalMechanics);

