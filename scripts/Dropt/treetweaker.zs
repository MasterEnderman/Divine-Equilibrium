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
            .selector(Dropt.weight(3))
            .items([<rootsclassic:nightshade>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(3))
            .items([<treetweaker:mystwillow>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<hwell:myst_dust>])
        )
    );
