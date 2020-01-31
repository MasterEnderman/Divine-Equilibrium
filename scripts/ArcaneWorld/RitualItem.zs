#modloaded arcaneworld
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.ArcaneWorld;

// ArcaneWorld.createRitualCreateItem(name,displayName, new RitualCreateItem(CraftTweakerMC.getItemStack(result), getIngredients(inputs)));

var itemMap as IIngredient[][string][string][IItemStack] = {
    <evilcraft:promise> : {
        "Craft Promise of Tenacity I" : {
            "evilcraft_upgrade_1" : [<evilcraft:promise_acceptor>,<evilcraft:bowl_of_promises:2>,<soulus:crystal_dark>,<hwell:shard_c>,<hwell:shard_ca>]
        }
    },
    <evilcraft:effortless_ring> : {
        "Craft Effortless Ring" : {
            "effortless_ring" : [<evilcraft:vengeance_ring>,<evilcraft:promise:3>,<evilcraft:promise:4>,<forbidden_arcanus:rune>,<forbidden_arcanus:dark_rune>]
        }
    },
    <soulus:dust_midnight>*4 : {
        "Craft Star Dust" : {
            "star_dust" : [<soulus:crystal_dark>,<arcanearchives:radiant_dust>,<arcanearchives:radiant_dust>,<arcanearchives:radiant_dust>,<arcanearchives:radiant_dust>]
        }
    },
    <hwell:asul_machine_case> : {
        "Craft Asul Machine Case" : {
            "asul_machine_case" : [<hwell:asul_block>,<hwell:heavy_block>,<minecraft:furnace>,<soulus:gear_bone>,<forbidden_arcanus:soul>]
        }
    }
};

for output, data_0 in itemMap {
    for display, data_1 in data_0 {
        for name, recipe in data_1 {
            ArcaneWorld.createRitualCreateItem(name,display,output,recipe);
        }
    }
}
