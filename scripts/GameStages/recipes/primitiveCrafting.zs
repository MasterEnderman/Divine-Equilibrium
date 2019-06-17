#priority 110

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.ItemStages;
import mods.recipestages.Recipes;

import mods.primitivecrafting.addRecipe as primCraft;

var recipePrimitiveCrafting as IIngredient[][][int][string][IItemStack] = {
    <sharpbone:sharp_bone> : {
        "null" : {
            1 : [
                [<ore:bone>, <contenttweaker:pebble>],
                [<ore:bone>, <minecraft:flint>]
            ]
        }
    },
    <forbidden_arcanus:bone_pickaxe> : {
        "null" : {
            1 : [
                [<ore:bone>*2, <ore:cobblestone>*3]
            ]
        }
    },
    <cannibalism:flintknife> : {
        "null" : {
            1 : [
                [<sharpbone:sharp_bone>, <minecraft:flint>]
            ]
        }
    },
    <hwell:furnace_tube> : {
        "fire_1" : {
            1 : [
                [<hwell:scorch_glass>, <minecraft:flint>]
            ]
        }
    },
    <naturesaura:wood_stand>*4 : {
        "earth_1" : {
            1 : [
                [<minecraft:flint>, <ore:logWood>*4]
            ]
        }
    },
    <minecraft:bowl> : {
        "earth_1" : {
            1 : [
                [<minecraft:flint>, <ore:plankWood>]
            ]
        }
    },
    <minecraft:flint_and_steel> : {
        "fire_1" : {
            1 : [
                [<minecraft:flint>, <hwell:heavy_ingot>]
            ]
        }
    },
    <claybucket:unfiredclaybucket> : {
        "water_1" : {
            1 : [
                [<minecraft:bowl>, <minecraft:clay_ball>*3]
            ]
        }
    }
};

for output, data in recipePrimitiveCrafting {
    var name = transformString(output);
    var stages as string[] = [];
    recipes.remove(output);
    for stage, data2 in data {
        stages += stage;
        for amount, recipes in data2 {
            var index as int = 0;
            for recipe in recipes {
                var recipename = "ct_primCraft_"~name~"_"~stage~"_"~index;
                if (stage == "null") {
                    primCraft(output*amount, recipe[0], recipe[1], recipename);
                } else {
                    primCraft(output*amount, recipe[0], recipe[1], recipename, stage);
                }
                index += 1;
            }
        }
    }
    if (stages[0] != "null") {
        ItemStages.removeItemStage(output);
        ItemStages.addItemStage(stages[0], output);
    }
}
