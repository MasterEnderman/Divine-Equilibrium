#modloaded gamestages
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.GameStages.GS_Initialization.stageItems;

// stage Ingredients

var itemsToStage as IIngredient[][string] = {
    "null" : [
        <hwell:core_stone>,
        <corvus:candle>,
        <contenttweaker:charred_cobblestone>,
        <contenttweaker:flesh_block>,
        <minecraft:dirt>,
        <hwell:core_stone>
    ],
    "fire_1" : [
        <corvus:candle>
    ]
};

for stage, ingredients in itemsToStage {
    stageItems(stage,ingredients);
}
