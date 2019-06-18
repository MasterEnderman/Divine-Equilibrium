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
            .items([<minecraft:bone>],Dropt.range(4,7))
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
    );
