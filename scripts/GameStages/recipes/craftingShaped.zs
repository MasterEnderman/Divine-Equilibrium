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
        "gaia" : {
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
                ],
                [
                    [null,<ore:flakeFlint>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <primitivetools:primitive_hatchet_cwf> : {
        "gaia" : {
            1 : [
                [
                    [<primitivetools:flint_flake>,<roots:wildroot>],
                    [<ore:stickWood>,<primitivetools:flint_shard>]
                ]
            ]
        }
    },
    <primitivetools:primitive_pick_cwf> : {
        "gaia" : {
            1 : [
                [
                    [<primitivetools:flint_point>,<roots:wildroot>],
                    [<ore:stickWood>,<primitivetools:flint_shard>]
                ]
            ]
        }
    },
    <primitivetools:primitive_spade_cwf> : {
        "gaia" : {
            1 : [
                [
                    [null,<primitivetools:flint_flake>],
                    [<ore:stickWood>,<roots:wildroot>]
                ]
            ]
        }
    },
    <minecraft:stonebrick:3> : {
        "null" : {
            4 : [
                [
                    [<minecraft:stonebrick>,<minecraft:stonebrick>],
                    [<minecraft:stonebrick>,<minecraft:stonebrick>]
                ]
            ]
        }
    },
    <naturesaura:ancient_bark> : {
        "null" : {
            3 : [
                [
                    [<naturesaura:ancient_log>,<naturesaura:ancient_log>],
                    [<naturesaura:ancient_log>,<naturesaura:ancient_log>]
                ]
            ]
        }
    }
};

for item, data in recipeMapShaped {
    var name = transformString(item);
    recipes.remove(item);
    for stage, recipedata in data {
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
    if (data.keySet[data.keySet.length - 1] != "null") {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(data.keySet[data.keySet.length - 1], item);
    } else {
        ItemStages.removeItemStage(item);
    }
}
