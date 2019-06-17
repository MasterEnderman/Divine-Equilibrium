#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.inworldcrafting.FluidToItem;

var FluidToItemMap as IIngredient[][][string][ILiquidStack][IItemStack] = {
    <minecraft:clay_ball> : {
        <liquid:water> : {
            "true" : [
                [<contenttweaker:pebble>]
            ]
        }
    }
};

for output, data in FluidToItemMap {
    for fluid, data2 in data {
        for consume, recipes in data2 {
            for recipe in recipes {
                if (consume == "true") {
                    FluidToItem.transform(output, fluid, recipe, true);
                } else {
                    FluidToItem.transform(output, fluid, recipe);
                }
            }
        }
    }
}
