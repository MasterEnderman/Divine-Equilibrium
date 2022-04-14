#modloaded roots
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;
import scripts.functions.toString;

import mods.roots.Mortar;

var mortarRemove as IItemStack[] = [
    <minecraft:dye:12>,
    <roots:flour>,
    <minecraft:dye:15>,
    <minecraft:sugar>,
    <mysticalworld:iron_dust>,
    <mysticalworld:gold_dust>,
    <mysticalworld:copper_dust>,
    <mysticalworld:silver_dust>,
    <mysticalworld:silk_thread>
];

for item in mortarRemove {
    Mortar.removeRecipe(item);
}

var spellChange as IIngredient[][string] = {
    "spell_growth_infusion" : [<roots:petals>,<naturesaura:gold_leaf>,<forbidden_arcanus:arcane_crystal_dust>,<corvus:blazing_tulip>,<mysticalworld:carapace>]
};

for spell, recipe in spellChange {
    Mortar.changeSpell(spell, recipe);
}

var mapMortar as IIngredient[][][int][IItemStack] = {
    <minecraft:dye:15> : {
        2 : [
            [<ore:bone>]
        ]
    },
    <forbidden_arcanus:arcane_crystal_dust> : {
        1 : [
            [<forbidden_arcanus:arcane_crystal>]
        ]
    },
    <forbidden_arcanus:mundabitur_dust> : {
        3 : [
            [<forbidden_arcanus:arcane_crystal_dust>,<soulus:dust_stone>,<roots:runic_dust>,<arcaneworld:sapphire>,<corvus:crystal_quartz>]
        ]
    },
    <naturesaura:gold_powder> : {
        2 : [
            [<naturesaura:gold_leaf>]
        ]
    },
    <mysticalworld:silk_thread> : {
        2 : [
            [<mysticalworld:silk_cocoon>]
        ]
    }
};

for output, data in mapMortar {
    for amount, recipes in data {
        for recipe in recipes {
            Mortar.addRecipe("mortar_recipe_"~toString(output),output*amount, recipe);
        }
    }
}
