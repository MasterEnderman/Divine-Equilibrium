#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.dropt.Dropt;

print("Loading wood.zs");

var woodMap as IItemStack[string] = {
    "minecraft:log" : <minecraft:planks>,
    "minecraft:log:1" : <minecraft:planks:1>,
    "minecraft:log:2" : <minecraft:planks:2>,
    "minecraft:log:3" : <minecraft:planks:3>,
    "minecraft:log2" : <minecraft:planks:4>,
    "minecraft:log2:1" : <minecraft:planks:5>,
    "corvus:frankinsence_log" : <corvus:frankinsence_planks>,
    "forbidden_arcanus:edelwood_log" : <forbidden_arcanus:edelwood_planks>,
    "forbidden_arcanus:cherrywood_log" : <forbidden_arcanus:cherrywood_planks>,
    "forbidden_arcanus:mysterywood_log" : <forbidden_arcanus:mysterywood_planks>,
    "hwell:myst_log" : <hwell:myst_planks>,
    "naturesaura:ancient_log" : <naturesaura:ancient_planks>
};

var index as int = 0;

for log, plank in woodMap {
    Dropt.list("wood"~index)
        .add(Dropt.rule()
            .matchBlocks([log])
            .matchHarvester(Dropt.harvester()
                .type("PLAYER")
                .gameStages("ANY", ["wood"])
                .mainHand("WHITELIST", [<cannibalism:flintknife>])
            )
            .addDrop(Dropt.drop()
                .items([plank],Dropt.range(2,4))
            )
        )
        .add(Dropt.rule()
            .matchDrops([plank])
            .matchHarvester(Dropt.harvester()
                .type("PLAYER")
                .gameStages("ANY", ["wood"])
                .mainHand("WHITELIST", [<cannibalism:flintknife>])
            )
            .addDrop(Dropt.drop()
                .items([<minecraft:stick>],Dropt.range(1,2))
            )
        );
    index += 1;
}
