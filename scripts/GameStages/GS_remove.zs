#modloaded gamestages
#priority 5

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.GameStages.GS_Initialization.stageDisabled as stage;
import scripts.GameStages.GS_Initialization.stageDisableItem;
import scripts.GameStages.GS_Initialization.stageDisableItems;

import scripts.JEI.JEI_Minecraft.JEI_Minecraft as Minecraft;

print("Disabling Items.");

// create list of JEI lists

var ItemsToDisable as IIngredient[][] = [
    Minecraft
];

for list in ItemsToDisable {
    stageDisableItems(list);
}
