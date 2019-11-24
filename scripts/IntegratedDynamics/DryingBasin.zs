#modloaded integrateddynamics
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

var duration as int = 20*10;

var mapFluidToItem as ILiquidStack[][IItemStack] = {
    <corvus:frankincense_tears> : [
        <liquid:frankencense_essence>*500
    ]
};

var mapItemToItem as IItemStack[][IItemStack] = {
    <naturesaura:gold_leaf> : [
        <forbidden_arcanus:mysterywood_leaves:*>
    ],
    <minecraft:dirt> : [
        <hwell:fullgrass_block>
    ]
};

var mapItemAndFluidToItem as IItemStack[][ILiquidStack][IItemStack] = {
    <minecraft:clay_ball> : {
        <liquid:water>*500 : [
            <contenttweaker:pebble>,
            <primitivetools:flint_shard>,
            <primitivetools:flint_flake>,
            <primitivetools:flint_point>
        ]
    }
};

var mapItemAndFluidToFluid as IItemStack[][ILiquidStack][ILiquidStack] = {

};

for output, fluids in mapFluidToItem {
    for fluid in fluids {
        DryingBasin.addRecipe(null, fluid, output, null, duration);
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
