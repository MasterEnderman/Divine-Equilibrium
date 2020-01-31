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
    <corvus:frankinsence_sapling> : {
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
            "gaia_ring" : [<corvus:oil_protective>,<contenttweaker:heavy_ring>,endBottle,endBottle,<hwell:smooth_azurite>,<hwell:smooth_azurite>,<hwell:smooth_azurite>,<hwell:smooth_azurite>]
        }
    },
    <contenttweaker:apple_gaia> : {
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
            "haste_ring" : [<forbidden_arcanus:soul>,<contenttweaker:heavy_ring>,<primitivetools:primitive_hatchet_cbf>,<primitivetools:primitive_pick_cbf>,<hwell:shard_ca>,<hwell:shard_ca>,<hwell:shard_ca>,<hwell:shard_ca>]
        }
    },
    <roots:imbuer> : {
        <minecraft:sapling:3> : {
            "imbuer" : [<roots:terra_moss>,<hwell:citrinic_stone>,<hwell:shard_p>,<hwell:shard_p>,<roots:bark_oak>,<roots:bark_jungle>,<roots:bark_oak>,<roots:bark_jungle>]
        }
    },
    <roots:component_pouch> : {
        <minecraft:sapling:3> : {
            "pouch_basic" : [<corvus:wiser_gem>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>,<hwell:shard_au>,<hwell:shard_n>,<hwell:shard_p>,<hwell:shard_o>]
        }
    },
    <roots:fey_crafter> : {
        <minecraft:sapling> : {
            "fey_crafter" : [<corvus:wiser_gem>,<naturesaura:wood_stand>,<arcaneworld:sapphire>,<mysticalworld:amethyst_gem>,<forbidden_arcanus:arcane_crystal_dust>,<forbidden_arcanus:arcane_crystal_dust>,<forbidden_arcanus:arcane_crystal_dust>,<forbidden_arcanus:arcane_crystal_dust>]
        }
    },
    <roots:grove_stone> : {
        <minecraft:sapling> : {
            "grove_stone" : [<hwell:citrinic_sand>,<roots:wildroot>,<roots:terra_moss>,<roots:terra_moss>,<minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>]
        }
    },
    <forbidden_arcanus:cherrywood_sapling> : {
        <minecraft:sapling:3> : {
            "cherry_sapling" : [<minecraft:apple>,<mysticalworld:amethyst_gem>,<rootsclassic:verdantsprig>,<rootsclassic:verdantsprig>,<roots:runic_dust>,<roots:runic_dust>,<roots:runic_dust>,<roots:runic_dust>]
        }
    },
    <naturesaura:token_joy> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "token_joy" : [overworldBottle,<corvus:crystal_quartz>,<rootsclassic:verdantsprig>,<roots:wildroot>,<soulus:bone_normal>,<soulus:bone_dry>,<soulus:bone_fungal>,<soulus:bone_frozen>]
        }
    },
    <arcaneworld:ritual_table> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "ritual_table" : [<mysticalworld:amethyst_gem>,<naturesaura:infused_iron>,<arcaneworld:sapphire>,<arcaneworld:sapphire>,<corvus:wiser_gem>,<corvus:wiser_gem>,<corvus:wiser_gem>,<corvus:wiser_gem>]
        }
    },
    <naturesaura:token_sorrow> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "token_sorrow" : [overworldBottle,<roots:bark_wildwood>,<roots:bark_wildwood>,<roots:bark_wildwood>,<soulus:bone_normal>,<soulus:bone_dry>,<soulus:bone_fungal>,<soulus:bone_frozen>]
        }
    },
    <treetweaker:ritualtree> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "small_ancient_sapling" : [<rootsclassic:verdantsprig>,<roots:cloud_berry>,<naturesaura:token_sorrow>,<naturesaura:token_sorrow>,<roots:wildewheet>,<mysticalworld:aubergine>,<roots:moonglow_leaf>,<roots:spirit_herb>]
        }
    },
    <rootsclassic:runicfocus> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "runicfocus" : [<rootsclassic:verdantsprig>,<minecraft:diamond>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<roots:runestone>,<roots:runestone>,<roots:runestone>,<roots:runestone>]
        }
    },
    <naturesaura:auto_crafter> : {
        <treetweaker:ritualtree> : {
            "auto_crafter" : [<soulus:gear_bone>,<soulus:gear_bone_dry>,<soulus:gear_bone_fungal>,<soulus:gear_bone_frozen>,<rootsclassic:runicfocus:1>,<rootsclassic:runicfocus:1>,<rootsclassic:runicfocus:1>,<rootsclassic:runicfocus:1>],
            "auto_crafter_2" : [<soulus:gear_bone>,<hwell:core_stone>,<hwell:core_stone>,<hwell:core_stone>,<contenttweaker:bark_ancient>,<contenttweaker:bark_ancient>,<contenttweaker:bark_ancient>,<contenttweaker:bark_ancient>]
        }
    },
    <contenttweaker:heart_token> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "heart_void" : [<cannibalism:playerflesh>,<hwell:shard_n>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>,<naturesaura:gold_leaf>]
        }
    },
    <minecraft:skull:3> : {
        <forbidden_arcanus:mysterywood_sapling> : {
            "player_skull" : [<soulus:bone_normal>,<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>]
        }
    },
    <roots:staff> : {
        <minecraft:sapling:3> : {
            "roots_staff" : [<roots:wildroot>,<roots:wildroot>,<roots:wildroot>,<roots:wildroot>,<roots:terra_moss>,<roots:terra_moss>,<roots:terra_moss>,<roots:terra_moss>]
        }
    },
    <naturesaura:nature_altar> : {
        <forbidden_arcanus:cherrywood_sapling> : {
            "nature_altar" : [<rootsclassic:verdantsprig>,<naturesaura:gold_brick>,<hwell:shard_n>,<hwell:shard_n>,<roots:runestone>,<roots:runestone>,<roots:runestone>,<roots:runestone>]
        }
    },
    <naturesaura:ancient_sapling> : {
        <treetweaker:ritualtree> : {
            "ancient_sapling" : [<evilcraft:dark_gem_crushed>,<evilcraft:dark_gem_crushed>,<hwell:mutation_paste>,<hwell:mutation_paste>,<naturesaura:gold_powder>,<naturesaura:gold_powder>,<naturesaura:gold_powder>,<naturesaura:gold_powder>]
        }
    },
    <forbidden_arcanus:mortem_helmet> : {
        <treetweaker:edelwoodtree> : {
            "bone_fabric_helmet" : [<forbidden_arcanus:skull>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>]
        }
    },
    <forbidden_arcanus:mortem_chestplate> : {
        <treetweaker:edelwoodtree> : {
            "bone_fabric_chestplate" : [<soulus:bone_normal>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>]
        }
    },
    <forbidden_arcanus:mortem_leggings> : {
        <treetweaker:edelwoodtree> : {
            "bone_fabric_leggings" : [<soulus:bone_normal>,<soulus:bone_normal>,<soulus:bone_normal>,<soulus:bone_normal>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>]
        }
    },
    <forbidden_arcanus:mortem_boots> : {
        <treetweaker:edelwoodtree> : {
            "bone_fabric_boots" : [<soulus:bone_normal>,<minecraft:leather>,<forbidden_arcanus:cloth>,<forbidden_arcanus:cloth>]
        }
    },
    <treetweaker:ritualtree> : {
        <treetweaker:edelwoodtree> : {
            "ritualtree_dupe" : [<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>,<naturesaura:ancient_log>]
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
