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
                [<contenttweaker:pebble>],
                [<primitivetools:flint_point>],
                [<primitivetools:flint_shard>],
                [<primitivetools:flint_flake>]
            ],
            "false" : [
                [<soulus:dust_stone>]
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
    <hwell:mutation_paste> : {
        <liquid:water> : {
            "true" : [
                [<naturesaura:ancient_leaves>,<minecraft:clay_ball>,<forbidden_arcanus:corrupti_dust>]
            ]
        }
    },
    <evilcraft:dark_gem> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<embers:dust_ash>*4]
            ]
        }
    },
    <minecraft:rotten_flesh> : {
        <liquid:water> : {
            "false" : [
                [<cannibalism:playerflesh>]
            ]
        }
    },
    <minecraft:flint> : {
        <liquid:water> : {
            "false" : [
                [<minecraft:gravel>]
            ]
        }
    },
    <hwell:raw_asul_block> : {
        <liquid:water> : {
            "true" : [
                [<defiledlands:dirt_defiled>,<minecraft:clay>,<hwell:smooth_azurite>]
            ]
        }
    },
    bloodCrystal["empty"] : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<evilcraft:dark_power_gem>,<soulus:bone_meal_nether>,<defiledlands:defilement_powder>,<naturesaura:gold_powder>]
            ]
        }
    },
    <evilcraft:bloody_cobblestone> : {
        <liquid:evilcraftblood> : {
            "true" : [
                [<minecraft:cobblestone>]
            ]
        }
    },
    <soulus:crystal_dark> : {
        <liquid:liquid_darkness> : {
            "true" : [
                [<soulus:crystal_blood_broken>,<forbidden_arcanus:dark_soul>]
            ]
        }
    },
    <forbidden_arcanus:dark_matter> : {
        <liquid:liquid_darkness> : {
            "true" : [
                [<evilcraft:burning_gem_stone>]
            ]
        }
    },
    <forbidden_arcanus:cloth> : {
        <liquid:liquid_darkness> : {
            "false" : [
                [<mysticalworld:silk_cocoon>,<minecraft:leather>,<evilcraft:golden_string>,<forbidden_arcanus:corrupti_dust>]
            ]
        }
    },
    <naturesaura:ancient_log> : {
        <liquid:frankencense_essence> : {
            "true" : [
                [<forbidden_arcanus:edelwood_log>,<roots:terra_moss>,<evilcraft:blood_potash>]
            ]
        }
    },
    <minecraft:rotten_flesh> : {
        <liquid:water> : {
            "true" : [
                [<cannibalism:playerflesh>]
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
