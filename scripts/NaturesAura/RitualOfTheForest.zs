#modloaded naturesaura

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
    <forbidden_arcanus:mysterywood_sapling> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "frankinsence" : [<hwell:shard_n>,<rootsclassic:growthsalve>,<soulus:bone_meal_nether>,<soulus:dust_stone>,<soulus:dust_wood>,<soulus:dust_wood>,<soulus:dust_wood>,<soulus:dust_wood>]
        }
    },
    <theoneprobe:probe_goggles> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "probe" : [<soulus:gear_bone>,<hwell:heavy_ingot>,<minecraft:glass>,<minecraft:glass>]
        }
    },
    <corvus:oil_growth> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "growth_oil" : [<corvus:frankincense_tears>,waterBottle,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>,<rootsclassic:growthsalve>,<rootsclassic:growthsalve>,<rootsclassic:growthsalve>,<rootsclassic:growthsalve>]
        }
    },
    <corvus:oil_protective> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "protective_oil" : [<forbidden_arcanus:soul>,waterBottle,<hwell:shard_ca>,<hwell:shard_ca>,<corvus:frankincense_tears>,<corvus:frankincense_tears>,<corvus:frankincense_tears>,<corvus:frankincense_tears>]
        }
    },
    <potionfingers:ring>.withTag({effect: "corvus:breath_of_gaia", display: {Name: "§3Ring of Gaia"}}) : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "tulip" : [<corvus:oil_protective>,<contenttweaker:heavy_ring>,otherBottle,otherBottle,<hwell:smooth_azurite>,<hwell:smooth_azurite>,<hwell:smooth_azurite>,<hwell:smooth_azurite>]
        }
    },
    <dimensionaledibles:custom_apple>.withTag({dimID: 939, x: 0, y: 128, z: 0, appleName: "Gaia"}) : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "gaia_apple" : [<contenttweaker:solidified_fire_knowledge>,<contenttweaker:solidified_earth_knowledge>,<contenttweaker:solidified_water_knowledge>,<contenttweaker:solidified_air_knowledge>,<rootsclassic:blackcurrant>,<rootsclassic:blackcurrant>,<rootsclassic:blackcurrant>,<rootsclassic:blackcurrant>]
        }
    },
    <contenttweaker:heavy_ring> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "heavy_ring" : [<hwell:heavy_ingot>,<hwell:heavy_ingot>,<hwell:heavy_ingot>,<hwell:heavy_ingot>,<hwell:shard_p>,<hwell:shard_p>,<hwell:shard_p>,<hwell:shard_p>]
        }
    },
    <potionfingers:ring>.withTag({effect: "minecraft:haste", display: {Name: "§6Ring of Haste"}}) : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "haste_ring" : [<forbidden_arcanus:soul>,<contenttweaker:heavy_ring>,<forbidden_arcanus:bone_axe>,<forbidden_arcanus:bone_pickaxe>,<hwell:shard_ca>,<hwell:shard_ca>,<hwell:shard_ca>,<hwell:shard_ca>]
        }
    }
};

var time as int = 200;

for output, data in treeRitualMap {
    recipes.remove(output);
    TreeRitual.removeRecipe(output);
    for sapling, recipes in data {
        for name, recipe in recipes {
            TreeRitual.addRecipe(name, sapling, output, time, recipe);
        }
    }
}
