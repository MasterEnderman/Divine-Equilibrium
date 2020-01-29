#modloaded hwell
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_HearthWell as IIngredient[] = [
    <hwell:myst_fertilizer>,
    <hwell:empty_rod>,
    <hwell:rod_myst_2>,
    <hwell:rod_myst_1>,
    <hwell:rod_blaze_3>,
    <hwell:rod_blaze_2>,
    <hwell:rod_blaze_1>,
    <hwell:loot_blaze>,
    <hwell:loot_creeper>,
    <hwell:loot_enderman>,
    <hwell:loot_ghast>,
    <hwell:loot_shulker>,
    <hwell:loot_skeleton>,
    <hwell:loot_slime>,
    <hwell:loot_spider>,
    <hwell:loot_witch>,
    <hwell:loot_wither>,
    <hwell:loot_zombie>,
    <hwell:loot_guardian>,
    <hwell:burst_seed_crystal>,
    <hwell:burst_seed_sand>,
    <hwell:burst_seed_endstone>,
    <hwell:burst_seed_snow>,
    <hwell:burst_seed_netherrack>,
    <hwell:burst_seed_quartz>,
    <hwell:burst_seed_prismarine>,
    <hwell:burst_seed_stone>,
    <hwell:burst_seed_gravel>,
];

disableItems(JEI_HearthWell);
