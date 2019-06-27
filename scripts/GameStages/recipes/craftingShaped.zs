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

var recipeMapShaped as IIngredient[][][][int][string][IItemStack] = {
    <contenttweaker:flesh_block> : {
        "null" : {
            1 : [
                [
                    [<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>],
                    [<cannibalism:playerflesh>,<contenttweaker:charred_cobblestone>,<cannibalism:playerflesh>],
                    [<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>]
                ]
            ]
        }
    },
    <minecraft:dirt> : {
        "null" : {
            1 : [
                [
                    [null,<minecraft:dye:15>,null],
                    [<minecraft:dye:15>,<contenttweaker:flesh_block>,<minecraft:dye:15>],
                    [null,<minecraft:dye:15>,null]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_pickaxe> : {
        "tools_1" : {
            1 : [
                [
                    [<ore:cobblestone>,<ore:cobblestone>],
                    [null,<ore:cobblestone>]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_axe> : {
        "tools_1" : {
            1 : [
                [
                    [<ore:cobblestone>,<ore:cobblestone>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_sword> : {
        "tools_1" : {
            1 : [
                [
                    [null,<ore:cobblestone>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_shovel> : {
        "tools_1" : {
            1 : [
                [
                    [null,<contenttweaker:pebble>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
};

for item, data in recipeMapShaped {
    var name = transformString(item);
    var stages as string[] = [];
    recipes.remove(item);
    for stage, recipedata in data {
        stages += stage;
        for amount, recipelist in recipedata {
            var index as int = 0;
            for recipe in recipelist {
                var recipename = "ct_shaped_"~name~"_"~stage~"_"~index;
                if (stage == "null") {
                    recipes.addShaped(recipename, item*amount,recipe);
                    print("Adding Recipe "~recipename);
                } else {
                    Recipes.addShaped(recipename, stage, item*amount,recipe);
                    print("Adding Recipe "~recipename~" in stage "~stage);
                }
                index += 1;
            }
        }
    }
    if (stages[0] != "null") {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stages[0], item);
    }
}
