#modloaded gamestages
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.GameStages.GS_Initialization.stageItems;

import mods.recipestages.Recipes;

// stage Ingredients

var itemsToStage as IIngredient[][string] = {
    "null" : [
        <hwell:core_stone>,
        <corvus:candle>,
        <contenttweaker:charred_cobblestone>,
        <contenttweaker:flesh_block>,
        <minecraft:dirt>,
        <hwell:core_stone>,
        <elementalresearch:research_book>
    ],
    "fire_1" : [
        <corvus:candle>,
        <minecraft:clay_ball>,
        <hwell:scorch_grit>,
        <hwell:scorch_glass>,
        <hwell:heavy_ingot>,

    ],
    "gaia" : [
        <mysticalworld:carapace>,
        <mysticalworld:pelt>,
        <mysticalworld:antlers>,
        <mysticalworld:venison>,
        <mysticalworld:cooked_venison>,
        <minecraft:leather_helmet>,
        <minecraft:leather_chestplate>,
        <minecraft:leather_leggings>,
        <minecraft:leather_boots>,
        <naturesaura:infused_iron_helmet>,
        <naturesaura:infused_iron_chest>,
        <naturesaura:infused_iron_pants>,
        <naturesaura:infused_iron_shoes>,
        <naturesaura:token_joy>,
        <naturesaura:infused_iron>,
        <naturesaura:nature_altar>,
        <naturesaura:infused_stone>,
        <roots:grove_stone>,
        <roots:fey_crafter>,
        <roots:mortar>,
        <roots:bonfire>,
        <roots:imbuer>,
        <roots:staff>,
        <roots:pestle>,
        <rootsclassic:verdantsprig>,
        <roots:bark_oak>,
        <roots:bark_spruce>,
        <roots:bark_birch>,
        <roots:bark_jungle>,
        <roots:bark_dark_oak>,
        <roots:bark_acacia>,
        <roots:component_pouch>,
        <roots:runic_dust>,
        <roots:terra_moss>,
        <roots:petals>,
        <roots:wildroot>,
        <corvus:crystal_quartz>,
        <arcaneworld:sapphire>,
        <minecraft:diamond>,
        <corvus:wiser_gem>,
        <mysticalworld:amethyst_gem>,
    ]
};

for stage, ingredients in itemsToStage {
    stageItems(stage,ingredients);
}
