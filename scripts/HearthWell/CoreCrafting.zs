#modloaded hwell
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.hwell.addCustomCoreRecipe as addCCR;

//mods.hwell.addCustomCoreRecipe(String coreRegistryName, String shardRegName, IItemStack[] outputs, IItemStack[] inputs)

var coreCrafting as IItemStack[][IItemStack][string][string] = {
	"core_stone" : {
		"shard_p" : {
			<hwell:scorch_grit> : [null],
		},
		"shard_n" : {
			<hwell:fullgrass_block> : [null],
		},
		"shard_o" : {
			<hwell:azurite> : [null],
		},
		"shard_au" : {
			<hwell:moonstone> : [null],
		},
		"shard_ca" : {
			<minecraft:bone_block> : [<minecraft:glass>, <minecraft:stained_glass:*>]
		},
		"shard_c" : {
			<forbidden_arcanus:runestone> : [null]
		}
	}
};

for core, data in coreCrafting {
    for shard, recipes in data {
        for output, inputs in recipes {
            addCCR(core, shard, [output], inputs);
        }
    }
}
