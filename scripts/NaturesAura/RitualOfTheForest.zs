import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.naturesaura.TreeRitual;

var treeRitualMap as IIngredient[][string][IIngredient][IItemStack] = {
    <naturesaura:eye> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "eye" : [<hwell:shard_o>,<hwell:heavy_ingot>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>]
        }
    },
    <corvus:frankinsence_sapling> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "frankinsence" : [<hwell:shard_n>,<rootsclassic:growthsalve>,<soulus:bone_meal_nether>,<soulus:dust_stone>,<soulus:dust_wood>,<soulus:dust_wood>,<soulus:dust_wood>,<soulus:dust_wood>]
        }
    }
};

var time as int = 200;

for output, data in treeRitualMap {
    TreeRitual.removeRecipe(output);
    for sapling, recipes in data {
        for name, recipe in recipes {
            TreeRitual.addRecipe(name, sapling, output, time, recipe);
        }
    }
}
