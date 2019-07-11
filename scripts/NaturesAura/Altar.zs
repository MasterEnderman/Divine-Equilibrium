#modloaded naturesaura

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.naturesaura.Altar;

var altarMap as IIngredient[string][IItemStack][IIngredient] = {
    null : {
        <naturesaura:infused_iron> : {
            "infused_iron" : <hwell:heavy_ingot>
        },
        <naturesaura:infused_stone> : {
            "infused_stone" : <hwell:moonstone>
        },
        <rootsclassic:runicfocus:1> : {
            "runicfocus" : <rootsclassic:runicfocus>
        }
    }
};

var aura as int = 250;
var time as int = 200;

for catalyst, data in altarMap {
    for output, recipes in data {
        Altar.removeRecipe(output);
        for name, input in recipes {
            Altar.addRecipe(name, input, output, catalyst, aura, time);
        }
    }
}
