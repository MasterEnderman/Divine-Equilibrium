#modloaded inworldcrafting
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.inworldcrafting.FluidToFluid;

// FluidToFluid.transform(ILiquidStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);

var FluidToFluidMap as IIngredient[][][string][ILiquidStack][ILiquidStack] = {
    <liquid:liquid_darkness> : {
        <liquid:evilcraftblood> : {
            "true" : [
                [endBottle,<evilcraft:dark_gem_crushed>*3]
            ]
        }
    }
};

for output, data in FluidToFluidMap {
    for fluid, data2 in data {
        for consume, recipes in data2 {
            for recipe in recipes {
                if (consume == "true") {
                    FluidToFluid.transform(output, fluid, recipe, true);
                } else {
                    FluidToFluid.transform(output, fluid, recipe);
                }
            }
        }
    }
}
