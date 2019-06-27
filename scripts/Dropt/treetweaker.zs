#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.dropt.Dropt;

print("Loading treetweaker.zs");

Dropt.list("treetweaker")
    .priority(0)
    .add(Dropt.rule()
        .matchBlocks(["hwell:myst_leaves:0","hwell:myst_leaves:8"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(2))
            .items([<rootsclassic:nightshade>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(2))
            .items([<treetweaker:mystwillow>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(4))
            .items([<hwell:myst_dust>])
        )
    )
    .add(Dropt.rule()
        .matchBlocks(["corvus:frankinsence_leaves:0","corvus:frankinsence_leaves:2"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(3))
            .items([<rootsclassic:blackcurrant>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(3))
            .items([<corvus:frankinsence_sapling>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<corvus:frankincense_tears>])
        )
    );
