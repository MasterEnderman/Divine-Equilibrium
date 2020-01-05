#modloaded mysticalworld
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_MysticalWorld as IIngredient[] = [
    <mysticalworld:iron_dust>,
    <mysticalworld:iron_dust_tiny>,
    <mysticalworld:gold_dust>,
    <mysticalworld:gold_dust_tiny>,
    <mysticalworld:copper_ingot>,
    <mysticalworld:copper_nugget>,
    <mysticalworld:copper_dust>,
    <mysticalworld:copper_dust_tiny>,
    <mysticalworld:silver_ingot>,
    <mysticalworld:silver_nugget>,
    <mysticalworld:silver_dust>,
    <mysticalworld:silver_dust_tiny>,
    <mysticalworld:copper_axe>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:copper_pickaxe>,
    <mysticalworld:copper_shovel>,
    <mysticalworld:copper_sword>,
    <mysticalworld:silver_axe>,
    <mysticalworld:silver_hoe>,
    <mysticalworld:silver_pickaxe>,
    <mysticalworld:silver_shovel>,
    <mysticalworld:silver_sword>,
    <mysticalworld:copper_block>,
    <mysticalworld:copper_ore>,
    <mysticalworld:silver_block>,
    <mysticalworld:silver_ore>,
    <mysticalworld:spindle>
];

disableItems(JEI_MysticalWorld);

