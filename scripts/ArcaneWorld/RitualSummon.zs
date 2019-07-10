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

//createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)

var summonMap as IIngredient[][string][string][string] = {
    "Summon Harvester Boss" : {
        "harvester_boss" : {
            "harvestersnight:harvester" : [<naturesaura:token_joy>,<contenttweaker:solidified_water_knowledge>,<contenttweaker:solidified_air_knowledge>,<contenttweaker:solidified_earth_knowledge>,<contenttweaker:solidified_fire_knowledge>]
        }
    }
};

for display, data in summonMap {
    for name, data2 in data {
        for mob, recipe in data2 {
            ArcaneWorld.createRitualSummon(name, display, mob, recipe);
        }
    }
}
