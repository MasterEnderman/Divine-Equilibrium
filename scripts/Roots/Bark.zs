#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.roots.Bark;

var mapBark as IItemStack[][int][IItemStack] = {
    <contenttweaker:bark_mysterywood> : {
        4 : [<forbidden_arcanus:mysterywood_log>],
        5 : [<forbidden_arcanus:mysterywood>]
    },
    <contenttweaker:bark_cherrywood> : {
        4 : [<forbidden_arcanus:cherrywood_log>],
        5 : [<forbidden_arcanus:cherrywood>]
    },
    <contenttweaker:bark_ancient> : {
        4 : [<naturesaura:ancient_log>],
        5 : [<naturesaura:ancient_bark>]
    }
};

var index_0 as int = 0;
var index_1 as int = 0;
var index_2 as int = 0;

for output, data in mapBark {
    index_1 = 0;
    for amount, inputs in data {
        index_2 = 0;
        for block in inputs {
            var name as string = "ct_bark_"~index_0~"_"~index_1~"_"~index_2;
            Bark.addRecipe(name, block, output * amount);
            index_2 += 1;
        }
        index_1 += 1;
    }
    index_0 += 1;
}
