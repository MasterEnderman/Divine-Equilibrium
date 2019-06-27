#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.integrateddynamics.DryingBasin;

//mods.integrateddynamics.DryingBasin.addRecipe(inputStack, inputFluid, outputStack, outputFluid, duration);

var duration as int = 400;

var mapFluidToItem as ILiquidStack[][IItemStack] = {

};

var mapItemToItem as IIngredient[][IItemStack] = {

};

var mapItemAndFluidToItem as IIngredient[][ILiquidStack][IItemStack] = {

};

var mapItemAndFluidToFluid as IIngredient[][ILiquidStack][ILiquidStack] = {

};

for output, fluids in mapFluidToItem {
    for fluid in fluids {
        DryingBasin.addRecipe(null, fluid, item, null, duration);
    }
}

for output, items in mapItemToItem {
    for item in items {
        DryingBasin.addRecipe(item, null, output, null, duration);
    }
}

for output, data in mapItemAndFluidToItem {
    for fluid, items in data {
        for item in items {
            DryingBasin.addRecipe(item, fluid, output, null, duration);
        }
    }
}

for output, data in mapItemAndFluidToFluid {
    for fluid, items in data {
        for item in items {
            DryingBasin.addRecipe(item, fluid, null, output, duration);
        }
    }
}
