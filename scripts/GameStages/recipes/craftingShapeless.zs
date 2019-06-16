#norun
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

var recipeMapShapeless as IIngredient[][][int][string][IItemStack] = {
    <contenttweaker:cordage_fiber> : {
        "primal_materials" : {
            1 : [
                [
                    <pyrotech:material:12>,<pyrotech:material:12>,
                    <pyrotech:material:12>,<pyrotech:material:12>
                ]
            ]
        }
    }
};

for item, data in recipeMapShapeless {
    var name = transformString(item);
    var stages as string[] = [];
    recipes.remove(item);
    for stage, recipedata in data {
        stages += stage;
        for amount, recipelist in recipedata {
            var index as int = 0;
            for recipe in recipelist {
                var recipename = "ct_shapeless_"~name~"_"~stage~"_"~index;
                if (stage == "null") {
                    recipes.addShapeless(recipename, item*amount, recipe);
                    print("Adding Recipe "~recipename);
                } else {
                    Recipes.addShapeless(recipename, stage, item*amount, recipe);
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

