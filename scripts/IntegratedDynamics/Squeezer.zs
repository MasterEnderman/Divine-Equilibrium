#modloaded integrateddynamics
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

var mapItemToFluid as int[IItemStack][ILiquidStack] = {
    <liquid:frankencense_essence> : {
        <corvus:frankinsence_sapling> : 500,
        <corvus:frankincense_tears> : 500,
        <corvus:frankinsence_leaves> : 10,
        <corvus:frankinsence_log> : 20
    }
};

var mapItemToItem as IItemStack[][IItemStack] = {

};

var mapItemToBoth as IItemStack[][ILiquidStack][IItemStack] = {

};

for output, input in mapItemToFluid {
    for item, amount in input {
        Squeezer.addRecipe(item, null, output*amount);
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