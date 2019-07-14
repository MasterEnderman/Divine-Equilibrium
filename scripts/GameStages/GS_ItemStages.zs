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
        <elementalresearch:research_book>,
        <primitivetools:primitive_pick_cbf>
    ],
    "wood" : [
        <minecraft:bowl>
    ],
    "fire_1" : [
        <corvus:candle>,
        <minecraft:clay_ball>,
        <hwell:scorch_grit>,
        <hwell:scorch_glass>,
        <hwell:heavy_ingot>,
        <minecraft:flint_and_steel>,
        <hwell:crushing_block>

    ],
    "air_1" : [
        <primitivetools:primitive_hatchet_cbf>
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
        <roots:runestone>,
        <roots:runestone_brick>,
        <roots:runestone_brick_alt>,
        <roots:chiseled_runestone>,
        <roots:runestone_stairs>,
        <roots:runestone_brick_stairs>,
        <roots:runestone_brick_alt_stairs>,
        <roots:runestone_slab>,
        <roots:runestone_wall>,
        <roots:runestone_button>,
        <roots:runestone_pressure_plate>,
        <roots:runestone_brick_slab>,
        <roots:runestone_brick_wall>,
        <roots:runestone_brick_button>,
        <roots:runestone_brick_pressure_plate>,
        <roots:runestone_brick_alt_slab>,
        <roots:runestone_brick_alt_wall>,
        <roots:runestone_brick_alt_button>,
        <roots:runestone_brick_alt_pressure_plate>,
    ],
    "tools_2" : [
        <naturesaura:infused_iron_pickaxe>,
        <naturesaura:infused_iron_axe>,
        <naturesaura:infused_iron_shovel>,
        <naturesaura:infused_iron_sword>,
    ],
    "earth_2" : [
        <roots:bark_wildwood>,
        <roots:wildwood_leaves>,
        <roots:wildwood_log>,
        <roots:wildwood_planks>,
        <roots:wildwood_sapling>,
        <roots:wildwood_stairs>,
        <roots:wildwood_rune>,
        <roots:wildwood_trapdoor>,
        <roots:wildwood_fence>,
        <roots:wildwood_ladder>,
        <roots:wildwood_slab>,
        <roots:wildwood_wall>,
        <roots:wildwood_button>,
        <roots:wildwood_pressure_plate>,
        <roots:living_pickaxe>,
        <roots:living_axe>,
        <roots:living_shovel>,
        <roots:living_sword>,
    ]
};

for stage, ingredients in itemsToStage {
    stageItems(stage,ingredients);
}
