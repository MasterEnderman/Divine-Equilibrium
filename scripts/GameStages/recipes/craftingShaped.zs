#priority 110

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.ItemStages;
import mods.recipestages.Recipes;

var recipeMapShaped as IIngredient[][][][int][string][IItemStack] = {
    <contenttweaker:head_stone_pickaxe> : {
        "tools_1" : {
            1 : [
                [
                    [<ore:cobblestone>,<ore:cobblestone>],
                    [null,<ore:cobblestone>]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_axe> : {
        "tools_1" : {
            1 : [
                [
                    [<ore:cobblestone>,<ore:cobblestone>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_sword> : {
        "gaia" : {
            1 : [
                [
                    [null,<ore:cobblestone>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <contenttweaker:head_stone_shovel> : {
        "tools_1" : {
            1 : [
                [
                    [null,<contenttweaker:pebble>],
                    [<ore:cobblestone>,null]
                ],
                [
                    [null,<ore:flakeFlint>],
                    [<ore:cobblestone>,null]
                ]
            ]
        }
    },
    <primitivetools:primitive_hatchet_cwf> : {
        "gaia" : {
            1 : [
                [
                    [<primitivetools:flint_flake>,<roots:wildroot>],
                    [<ore:stickWood>,<primitivetools:flint_shard>]
                ]
            ]
        }
    },
    <primitivetools:primitive_pick_cwf> : {
        "gaia" : {
            1 : [
                [
                    [<primitivetools:flint_point>,<roots:wildroot>],
                    [<ore:stickWood>,<primitivetools:flint_shard>]
                ]
            ]
        }
    },
    <primitivetools:primitive_spade_cwf> : {
        "gaia" : {
            1 : [
                [
                    [null,<primitivetools:flint_flake>],
                    [<ore:stickWood>,<roots:wildroot>]
                ]
            ]
        }
    },
    <minecraft:stonebrick:3> : {
        "null" : {
            4 : [
                [
                    [<minecraft:stonebrick>,<minecraft:stonebrick>],
                    [<minecraft:stonebrick>,<minecraft:stonebrick>]
                ]
            ]
        }
    },
    <naturesaura:ancient_bark> : {
        "null" : {
            3 : [
                [
                    [<naturesaura:ancient_log>,<naturesaura:ancient_log>],
                    [<naturesaura:ancient_log>,<naturesaura:ancient_log>]
                ]
            ]
        }
    },
    <hwell:burst_seed_dirt> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
                    [<minecraft:dirt>,<hwell:shard_n>,<minecraft:dirt>],
                    [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>]
                ]
            ]
        }
    },
    <hwell:burst_seed_cobblestone> : {
        "gaia_finish" : {
            1 : [
                [
                    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
                    [<ore:cobblestone>,<hwell:shard_n>,<ore:cobblestone>],
                    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]
                ]
            ]
        }
    },
    <evilcraft:golden_string> : {
        "gaia_finish" : {
            1 : [
                [
                    [<naturesaura:gold_powder>,<mysticalworld:silk_thread>,<naturesaura:gold_powder>],
                    [<mysticalworld:silk_thread>,<mysticalworld:silk_thread>,<mysticalworld:silk_thread>],
                    [<naturesaura:gold_powder>,<mysticalworld:silk_thread>,<naturesaura:gold_powder>]
                ]
            ]
        }
    },
    <arcaneworld:ritual_table> : {
        "gaia_finish" : {
            1 : [
                [
                    [<defiledlands:stone_defiled>,<defiledlands:stone_defiled>,<defiledlands:stone_defiled>],
                    [<evilcraft:golden_string>,<evilcraft:blood_infusion_core>,<evilcraft:golden_string>],
                    [<hwell:asul_block>,<hwell:asul_block>,<hwell:asul_block>]
                ]
            ]
        }
    },
    <evilcraft:blood_infuser> : {
        "gaia_finish" : {
            1 : [
                [
                    [<evilcraft:bloody_cobblestone>,<evilcraft:bloody_cobblestone>,<evilcraft:bloody_cobblestone>],
                    [<evilcraft:bloody_cobblestone>,bloodCrystal["full"],<evilcraft:bloody_cobblestone>],
                    [<evilcraft:bloody_cobblestone>,<evilcraft:bloody_cobblestone>,<evilcraft:bloody_cobblestone>]
                ]
            ]
        }
    },
    <minecraft:furnace> : {
        "gaia_finish" : {
            1 : [
                [
                    [<mysticalworld:mud_brick>,<mysticalworld:mud_brick>,<mysticalworld:mud_brick>],
                    [<mysticalworld:mud_brick>,null,<mysticalworld:mud_brick>],
                    [<minecraft:stonebrick>,<roots:bonfire>,<minecraft:stonebrick>]
                ]
            ]
        }
    },
    <mysticalworld:wet_mud_block> : {
        "gaia" : {
            8 : [
                [
                    [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
                    [<minecraft:dirt>,<minecraft:water_bucket>,<minecraft:dirt>],
                    [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>]
                ]
            ]
        }
    },
    <minecraft:dispenser> : {
        "null" : {
            1 : [
                [
                    [<mysticalworld:mud_brick>,<mysticalworld:mud_brick>,<mysticalworld:mud_brick>],
                    [<mysticalworld:mud_brick>,<minecraft:bow>,<mysticalworld:mud_brick>],
                    [<minecraft:stonebrick>,<ore:dustRedstone>,<minecraft:stonebrick>]
                ],
                [
                    [null,<ore:stickWood>,<ore:string>],
                    [<ore:stickWood>,<minecraft:dropper>,<ore:string>],
                    [null,<ore:stickWood>,<ore:string>]
                ]
            ]
        }
    },
    <minecraft:dropper> : {
        "null" : {
            1 : [
                [
                    [<mysticalworld:mud_brick>,<mysticalworld:mud_brick>,<mysticalworld:mud_brick>],
                    [<mysticalworld:mud_brick>,null,<mysticalworld:mud_brick>],
                    [<minecraft:stonebrick>,<ore:dustRedstone>,<minecraft:stonebrick>]
                ]
            ]
        }
    },
    <forbidden_arcanus:skull> : {
        "null" : {
            1 : [
                [
                    [<soulus:bone_normal>,<soulus:bone_normal>,<soulus:bone_normal>],
                    [<soulus:bone_normal>,null,<soulus:bone_normal>],
                    [<soulus:bone_normal>,<soulus:bone_normal>,<soulus:bone_normal>]
                ]
            ]
        }
    },
    <evilcraft:blood_orb> : {
        "gaia_finish" : {
            1 : [
                [
                    [<forbidden_arcanus:dark_runic_glass>,<forbidden_arcanus:dark_runic_glass>,<forbidden_arcanus:dark_runic_glass>],
                    [<forbidden_arcanus:dark_runic_glass>,<hwell:asul_block>,<forbidden_arcanus:dark_runic_glass>],
                    [<forbidden_arcanus:dark_runic_glass>,<forbidden_arcanus:dark_runic_glass>,<forbidden_arcanus:dark_runic_glass>]
                ]
            ]
        }
    },
    <forbidden_arcanus:bone_sword> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:bone_block>],
                    [<minecraft:bone_block>],
                    [<ore:bone>]
                ]
            ]
        }
    },
    <forbidden_arcanus:bone_shovel> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:bone_block>],
                    [<ore:bone>],
                    [<ore:bone>]
                ]
            ]
        }
    },
    <forbidden_arcanus:bone_pickaxe> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:bone_block>,<minecraft:bone_block>,<minecraft:bone_block>],
                    [null,<ore:bone>,null],
                    [null,<ore:bone>,null]
                ]
            ]
        }
    },
    <forbidden_arcanus:bone_axe> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:bone_block>,<minecraft:bone_block>],
                    [null,<ore:bone>],
                    [null,<ore:bone>]
                ]
            ]
        }
    },
    <forbidden_arcanus:bone_hoe> : {
        "gaia_finish" : {
            1 : [
                [
                    [<minecraft:bone_block>,<minecraft:bone_block>],
                    [null,<ore:bone>],
                    [null,<ore:bone>]
                ]
            ]
        }
    },
    <minecraft:hopper> : {
        "gaia_finish" : {
            1 : [
                [
                    [<ore:ingotHeavy>,<soulus:gear_bone>,<ore:ingotHeavy>],
                    [<ore:ingotHeavy>,<ore:chestWood>,<ore:ingotHeavy>],
                    [null,<ore:ingotHeavy>,null]
                ]
            ]
        }
    }
};

for item, data in recipeMapShaped {
    var name = transformString(item);
    recipes.remove(item);
    for stage, recipedata in data {
        for amount, recipelist in recipedata {
            var index as int = 0;
            for recipe in recipelist {
                var recipename = "ct_shaped_"~name~"_"~stage~"_"~index;
                if (stage == "null") {
                    recipes.addShaped(recipename, item*amount,recipe);
                    print("Adding Recipe "~recipename);
                } else {
                    Recipes.addShaped(recipename, stage, item*amount,recipe);
                    print("Adding Recipe "~recipename~" in stage "~stage);
                }
                index += 1;
            }
        }
    }
    if (data.keySet[data.keySet.length - 1] != "null") {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(data.keySet[data.keySet.length - 1], item);
    } else {
        ItemStages.removeItemStage(item);
    }
}
