#modloaded evilcraft
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.evilcraft.BloodInfuser;

// inputStack, inputFluid, tier, outputStack, duration, xp
// mods.evilcraft.BloodInfuser.addRecipe(<minecraft:melon>, <liquid:evilcraftblood> * 100, 0, <minecraft:stick>, 10, 10);

var mapInfuser as IItemStack[int][int][int][IItemStack] = {
    <evilcraft:blood_infusion_core> : {
        0 : {
            5000 : {
                20 : bloodCrystal["full"]
            }
        }
    },
    <evilcraft:dark_power_gem> : {
        0 : {
            1000 : {
                20 : <evilcraft:dark_gem>
            }
        }
    },
    <evilcraft:bloody_cobblestone> : {
        0 : {
            500 : {
                10 : <minecraft:cobblestone>
            }
        }
    }
};

for output, data_0 in mapInfuser {
    for tier, data_1 in data_0 {
        for blood, data_2 in data_1 {
            for time, input in data_2 {
                BloodInfuser.addRecipe(input, <liquid:evilcraftblood> * blood, tier, output, time, 3);
            }
        }
    }
}
