#modloaded inworldcrafting
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
    },
    <hwell:myst_rod> : {
        <liquid:liquid_souls> : {
            "true" : [
                [<naturesaura:ancient_stick>]
            ]
        }
    },
    <hwell:dust_block> : {
        <liquid:water> : {
            "false" : [
                [<hwell:dust>*4]
            ]
        }
    },
    <hwell:mutation_paste>*2 : {
        <liquid:water> : {
            "false" : [
                [<minecraft:dye:9>,<minecraft:clay_ball>,<hwell:myst_dust>]
            ]
        }
    },
    <soulus:gear_bone> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<minecraft:bone>*4],
                [<soulus:bone_normal>*4]
            ]
        }
    },
    <soulus:gear_bone_dry> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_dry>*4]
            ]
        }
    },
    <soulus:gear_bone> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_normal>*4]
            ]
        }
    },
    <soulus:gear_bone_fungal> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_fungal>*4]
            ]
        }
    },
    <soulus:gear_bone_frozen> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_frozen>*4]
            ]
        }
    },
    <soulus:gear_bone_ender> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_ender>*4]
            ]
        }
    },
    <soulus:gear_bone_nether> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<soulus:bone_nether>*4]
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
