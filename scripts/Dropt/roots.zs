#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.dropt.Dropt;

print("Loading roots.zs");

Dropt.list("dropt")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([<rootsclassic:nightshade>])
        .addDrop(Dropt.drop()
        )
    )
    .add(Dropt.rule()
        .matchDrops([<rootsclassic:blackcurrant>])
        .addDrop(Dropt.drop()
        )
    )
    .add(Dropt.rule()
        .matchDrops([<rootsclassic:redcurrant>])
        .addDrop(Dropt.drop()
        )
    )
    .add(Dropt.rule()
        .matchDrops([<rootsclassic:whitecurrant>])
        .addDrop(Dropt.drop()
        )
    )
    .add(Dropt.rule()
        .matchDrops([<rootsclassic:elderberry>])
        .addDrop(Dropt.drop()
        )
    );
