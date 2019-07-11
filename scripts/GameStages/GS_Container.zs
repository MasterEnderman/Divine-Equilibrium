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

fixAutocrafter(containerList, gamestagesList);
