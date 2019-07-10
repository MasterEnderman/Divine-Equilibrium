#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.roots.Fey;

var feyRemove as IItemStack[] = [
    <roots:runestone>,
    <roots:sylvan_helmet>,
    <roots:sylvan_chestplate>,
    <roots:sylvan_leggings>,
    <roots:sylvan_boots>,
];

for item in feyRemove {
    Fey.removeRecipe(item);
}

var feyRecipes as IIngredient[][string][IItemStack] = {
    <roots:runestone>*3 : {
        "runestone" : [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>,<arcaneworld:sapphire>,<hwell:citrinic_sand>]
    },
    <rootsclassic:verdantsprig> : {
        "verdant" : [<roots:terra_moss>,<roots:bark_oak>,<roots:bark_jungle>,<minecraft:vine>,<hwell:shard_n>]
    },
    <roots:bonfire> : {
        "bonfire" : [<contenttweaker:solidified_fire_knowledge>,<roots:bark_oak>,<roots:bark_jungle>,<roots:wildroot>,<minecraft:cobblestone>]
    },
    <minecraft:leather_helmet> : {
        "leather_helmet" : [<hwell:shard_n>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>]
    },
    <minecraft:leather_chestplate> : {
        "leather_chestplate" : [<hwell:shard_p>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>]
    },
    <minecraft:leather_leggings> : {
        "leather_leggings" : [<hwell:shard_au>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>]
    },
    <minecraft:leather_boots> : {
        "leather_boots" : [<hwell:shard_o>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>,<mysticalworld:pelt>]
    },
    <naturesaura:infused_iron_helmet> : {
        "infused_iron_helmet" : [<minecraft:leather_helmet>,<mysticalworld:carapace>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:infused_iron>]
    },
    <naturesaura:infused_iron_chest> : {
        "infused_iron_chest" : [<minecraft:leather_chestplate>,<mysticalworld:carapace>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:infused_iron>]
    },
    <naturesaura:infused_iron_pants> : {
        "infused_iron_pants" : [<minecraft:leather_leggings>,<mysticalworld:carapace>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:infused_iron>]
    },
    <naturesaura:infused_iron_shoes> : {
        "infused_iron_shoes" : [<minecraft:leather_boots>,<mysticalworld:carapace>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:infused_iron>]
    },
    <roots:sylvan_helmet> : {
        "sylvan_helmet" : [<naturesaura:infused_iron_helmet>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<rootsclassic:growthsalve>]
    },
    <roots:sylvan_chestplate> : {
        "sylvan_chestplate" : [<naturesaura:infused_iron_chest>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<rootsclassic:growthsalve>]
    },
    <roots:sylvan_leggings> : {
        "sylvan_leggings" : [<naturesaura:infused_iron_pants>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<rootsclassic:growthsalve>]
    },
    <roots:sylvan_boots> : {
        "sylvan_boots" : [<naturesaura:infused_iron_shoes>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<rootsclassic:growthsalve>]
    },
};

for output, recipes in feyRecipes {
    for name, inputs in recipes {
        Fey.addRecipe(name, output, inputs);
    }
}
