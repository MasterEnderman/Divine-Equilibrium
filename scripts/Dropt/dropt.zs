#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.dropt.Dropt;

print("Loading dropt.zs");

Dropt.list("dropt")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([<minecraft:bone_block>])
        .addDrop(Dropt.drop()
            .items([<soulus:bone_normal>],Dropt.range(4,7))
        )
    )
    .add(Dropt.rule()
        .matchDrops([<contenttweaker:charred_cobblestone>])
        .addDrop(Dropt.drop()
            .items([<minecraft:gravel>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<minecraft:flint>])
        .addDrop(Dropt.drop()
            .items([<minecraft:gravel>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<minecraft:golden_apple>])
        .addDrop(Dropt.drop()
            .items([<naturesaura:gold_leaf>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<contenttweaker:spawn_chamber>])
        .addDrop(Dropt.drop()
        )
    )
    .add(Dropt.rule()
        .matchDrops([<corvus:frankinsence_leaves:*>])
        .addDrop(Dropt.drop()
            .items([<corvus:frankinsence_leaves:0>])
        )
    )
    .add(Dropt.rule()
        .matchBlocks(["soulus:fossil_dirt"])
        .addDrop(Dropt.drop()
            .items([<soulus:bone_normal>],Dropt.range(1,4))
        )
    )
    .add(Dropt.rule()
        .matchBlocks(["soulus:fossil_dirt_frozen"])
        .addDrop(Dropt.drop()
            .items([<soulus:bone_frozen>],Dropt.range(1,4))
        )
    )
    .add(Dropt.rule()
        .matchBlocks(["soulus:fossil_dirt_fungal"])
        .addDrop(Dropt.drop()
            .items([<soulus:bone_fungal>],Dropt.range(1,4))
        )
    );
