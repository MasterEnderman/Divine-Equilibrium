#modloaded gamestages
#priority 40

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.GameStages.GS_Initialization.fixAutocrafter;

var containerList as string[] = [
    "de.ellpeck.naturesaura.blocks.tiles.TileEntityAutoCrafter$1"
];

var gamestagesList as string[] = [
    "wood",
    "earth_1",
    "water_1",
    "fire_1",
    "air_1",
    "tools_1",
    "tools_2",
    "gaia",
    "earth_2",
    "water_2",
    "fire_2",
    "air_2",
    "crafting_1"
];

fixAutocrafter(containerList, gamestagesList);
