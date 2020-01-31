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
    },
    <evilcraft:blood_potash> : {
        0 : {
            100 : {
                10 : <minecraft:dye:15>
            }
        }
    },
    <evilcraft:bowl_of_promises:2> : {
        0 : {
            10000 : {
                100 : <evilcraft:bowl_of_promises>
            }
        }
    },
    <evilcraft:promise_acceptor> : {
        0 : {
            10000 : {
                100 : <hwell:heavy_block>
            }
        }
    },
    <forbidden_arcanus:dark_rune> : {
        1 : {
            2000 : {
                20 : <forbidden_arcanus:rune>
            }
        }
    },
    <evilcraft:blood_orb:1> : {
        1 : {
            5000 : {
                50 : <evilcraft:blood_orb>
            }
        }
    },
    <evilcraft:vengeance_ring> : {
        1 : {
            5000 : {
                50 : <contenttweaker:heavy_ring>
            }
        }
    },
    <harvestersnight:harvester_scythe> : {
        1 : {
            20000 : {
                200 : <forbidden_arcanus:bone_hoe>
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
