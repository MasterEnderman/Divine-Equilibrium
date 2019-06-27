#modloaded gamestages
#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.ItemStages;
import mods.recipestages.Recipes;

print("Creating static Gamestages in GS_Initialization.zs");

//Chapter -1

//disabled - disables unused stuff
static stageDisabled as string = "disabled";


//Custom Functions
function stageItems(stage as string, itemlist as IIngredient[]){
    for item in itemlist {
        if (stage == "null") {
            ItemStages.removeItemStage(item);
        } else {
            ItemStages.removeItemStage(item);
            ItemStages.addItemStage(stage, item);
        }
    }
}

function stageDisableItems(itemlist as IIngredient[]){
    for item in itemlist {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage("disabled", item);
    }
}

function stageDisableItem(item as IItemStack){
    ItemStages.removeItemStage(item);
    ItemStages.addItemStage("disabled", item);
}

//Debug
Recipes.setPrintContainers(true);
