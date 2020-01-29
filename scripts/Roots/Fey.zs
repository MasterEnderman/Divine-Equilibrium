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
    <roots:runic_shears>,
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
        "bonfire" : [<contenttweaker:solidified_fire_knowledge>,<roots:bark_oak>,<roots:bark_jungle>,<roots:wildroot>,<minecraft:cobblestone>],
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
        "sylvan_helmet" : [<naturesaura:infused_iron_helmet>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<corvus:stunning_dahlia>]
    },
    <roots:sylvan_chestplate> : {
        "sylvan_chestplate" : [<naturesaura:infused_iron_chest>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<corvus:stunning_dahlia>]
    },
    <roots:sylvan_leggings> : {
        "sylvan_leggings" : [<naturesaura:infused_iron_pants>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<corvus:stunning_dahlia>]
    },
    <roots:sylvan_boots> : {
        "sylvan_boots" : [<naturesaura:infused_iron_shoes>,<roots:fey_leather>,<naturesaura:infused_stone>,<rootsclassic:verdantsprig>,<corvus:stunning_dahlia>]
    },
    <naturesaura:infused_iron_sword> : {
        "infused_iron_sword" : [<primitivetools:primitive_knife_cbf>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:token_joy>,<mysticalworld:antlers>]
    },
    <naturesaura:infused_iron_axe> : {
        "infused_iron_axe" : [<primitivetools:primitive_hatchet_cbf>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:token_joy>,<mysticalworld:antlers>]
    },
    <naturesaura:infused_iron_pickaxe> : {
        "infused_iron_pickaxe" : [<primitivetools:primitive_pick_cbf>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:token_joy>,<mysticalworld:antlers>]
    },
    <naturesaura:infused_iron_shovel> : {
        "infused_iron_shovel" : [<primitivetools:primitive_spade_cbf>,<naturesaura:infused_iron>,<naturesaura:infused_iron>,<naturesaura:token_joy>,<mysticalworld:antlers>]
    },
    <roots:runic_shears> : {
        "runic_shears" : [<hwell:heavy_shears>,<rootsclassic:runicfocus:1>,<mysticalworld:amethyst_gem>,<mysticalworld:amethyst_gem>,<corvus:bloom_of_death>]
    },
    <roots:living_pickaxe> : {
        "living_pickaxe" : [<naturesaura:infused_iron_pickaxe>,<contenttweaker:terra_ingot>,<naturesaura:token_sorrow>,<rootsclassic:runicfocus:1>,<roots:bark_oak>]
    },
    <roots:living_axe> : {
        "living_axe" : [<naturesaura:infused_iron_axe>,<contenttweaker:terra_ingot>,<naturesaura:token_sorrow>,<rootsclassic:runicfocus:1>,<roots:bark_oak>]
    },
    <roots:living_shovel> : {
        "living_shovel" : [<naturesaura:infused_iron_shovel>,<contenttweaker:terra_ingot>,<naturesaura:token_sorrow>,<rootsclassic:runicfocus:1>,<roots:bark_oak>]
    },
    <roots:living_sword> : {
        "living_sword" : [<naturesaura:infused_iron_sword>,<contenttweaker:terra_ingot>,<naturesaura:token_sorrow>,<rootsclassic:runicfocus:1>,<roots:bark_oak>]
    },
};

for output, recipes in feyRecipes {
    for name, inputs in recipes {
        Fey.addRecipe(name, output, inputs);
    }
}
