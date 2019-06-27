#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.integrateddynamics.Squeezer;

//mods.integrateddynamics.Squeezer.addRecipe(inputStack, outputStack, outputFluid);

var mapItemToFluid as IIngredient[][ILiquidStack] = {

};

var mapItemToItem as IIngredient[][IItemStack] = {

};

var mapItemToBoth as IIngredient[][ILiquidStack][IItemStack] = {

};

for output, input in mapItemToFluid {
    for item in input {
        Squeezer.addRecipe(item, null, output);
    }  
}

for output, input in mapItemToItem {
    for item in input {
        Squeezer.addRecipe(item, output, null);
    }
}

for output, data in mapItemToBoth {
    for fluid, input in data {
        for item in input {
            Squeezer.addRecipe(item, output, fluid);
        }
    }
}
