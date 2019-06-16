#modloaded jei crafttweaker
#priority 250

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
    }
}

function transformString(item as IIngredient){
    var x as string = item.commandString.replace(":","_").replace("/","_").replace("<","").replace(">","");
    return x;
}
