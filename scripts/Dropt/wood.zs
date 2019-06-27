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

var woodMap as string[][IItemStack] = {
    <minecraft:planks> : ["minecraft:log","minecraft:log:4","minecraft:log:8"],
    <minecraft:planks:1> : ["minecraft:log:1","minecraft:log:5","minecraft:log:9"],
    <minecraft:planks:2> : ["minecraft:log:2","minecraft:log:6","minecraft:log:10"],
    <minecraft:planks:3> : ["minecraft:log:3","minecraft:log:7","minecraft:log:11"],
    <minecraft:planks:4> : ["minecraft:log2","minecraft:log2:4","minecraft:log2:8"],
    <minecraft:planks:5> : ["minecraft:log2:1","minecraft:log2:5","minecraft:log2:9"],
    <corvus:frankinsence_planks> : ["corvus:frankinsence_log","corvus:frankinsence_log:1","corvus:frankinsence_log:2"],
    <forbidden_arcanus:edelwood_planks> : ["forbidden_arcanus:edelwood_log","forbidden_arcanus:edelwood_log:4","forbidden_arcanus:edelwood_log:8"],
    <forbidden_arcanus:cherrywood_planks> : ["forbidden_arcanus:cherrywood_log","forbidden_arcanus:cherrywood_log:4","forbidden_arcanus:cherrywood_log:8"],
    <forbidden_arcanus:mysterywood_planks> : ["forbidden_arcanus:mysterywood_log","forbidden_arcanus:mysterywood_log:4","forbidden_arcanus:mysterywood_log:8"],
    <hwell:myst_planks> : ["hwell:myst_log","hwell:myst_log:4","hwell:myst_log:8"],
    <naturesaura:ancient_planks> : ["naturesaura:ancient_log","naturesaura:ancient_log:1","naturesaura:ancient_log:2","naturesaura:ancient_bark","naturesaura:ancient_bark:1","naturesaura:ancient_bark:2"],
};

var index as int = 0;

for plank, log in woodMap {
    Dropt.list("wood"~index)
        .add(Dropt.rule()
            .matchBlocks(log)
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
