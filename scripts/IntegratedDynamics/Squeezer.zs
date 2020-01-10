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
    },
    <liquid:water> : {
        <contenttweaker:azurite> : 1000
    },
    <liquid:evilcraftblood> : {
        <minecraft:rotten_flesh> : 50,
        <cannibalism:playerflesh> : 100,
        <cannibalism:villagerflesh> : 100,
        <evilcraft:condensed_blood> : 500,
        <evilcraft:undead_leaves> : 100,
        <evilcraft:undead_sapling> : 200
    }
};

var mapItemToItem as IItemStack[][IItemStack] = {
    <roots:runic_dust>*2 : [<roots:runestone>,<roots:runestone_brick>,<roots:runestone_brick_alt>,<roots:chiseled_runestone>],
    <naturesaura:gold_powder>*3 : [<naturesaura:gold_leaf>],
    <hwell:crystal>*9 : [<hwell:crystal_block>]
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
