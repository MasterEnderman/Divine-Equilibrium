#modloaded jei crafttweaker
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

function disableItems(itemlist as IIngredient[]){
    for item in itemlist {
        furnace.remove(item);
        JEI.removeAndHide(item);
        for entry in item.items {
            for ore in entry.ores {
                ore.remove(entry);
            }
        }
    }
}

function transformString(item as IIngredient){
    var x as string = item.commandString.replace(":","_").replace("/","_").replace("<","").replace(">","");
    return x;
}

function removeAllRecipesFromMod(modname as string){
    for item in loadedMods[modname].items {
        recipes.remove(item);
    }
}
