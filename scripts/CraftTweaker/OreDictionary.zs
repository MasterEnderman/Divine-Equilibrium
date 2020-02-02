#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var oredictManager as IItemStack[][string][IOreDictEntry] = {
    <ore:stickWood> : {
        "remove" : [<naturesaura:ancient_stick>,<evilcraft:dark_stick>]
    },
    <ore:allFlowers> : {
        "add" : [<corvus:lily_toxic>,<corvus:blazing_tulip>,<corvus:blood_rose>,<corvus:stunning_dahlia>,<corvus:bloom_of_death>]
    },
    <ore:rootsBark> : {
        "remove" : [<roots:bark_wildwood>],
        "add" : [<contenttweaker:bark_mysterywood>,<contenttweaker:bark_cherrywood>,<contenttweaker:bark_ancient>]
    },
    <ore:string> : {
        "remove" : [<mysticalworld:silk_thread>]
    },
    <ore:dyeRed> : {
        "remove" : [<evilcraft:hardened_blood_shard>]
    },
    <ore:logWood> : {
        "remove" : [<evilcraft:undead_log>]
    },
    <ore:plankWood> : {
        "remove" : [<evilcraft:undead_plank>]
    }
};

for dict, data in oredictManager {
    for key, items in data {
        for item in items {
            if (key == "remove") {
                dict.remove(item);
            }
            if (key == "add") {
                dict.add(item);
            }
        }
    }
}
