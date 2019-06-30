#modloaded potionfingers
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_RootsClassic as IIngredient[] = [
    <rootsclassic:druidknife>,
    <rootsclassic:dustpetal>,
    <rootsclassic:pestle>,
    <rootsclassic:staff>,
    <rootsclassic:crystalstaff>,
    <rootsclassic:oaktreebark>,
    <rootsclassic:sprucetreebark>,
    <rootsclassic:birchtreebark>,
    <rootsclassic:jungletreebark>,
    <rootsclassic:acaciatreebark>,
    <rootsclassic:darkoaktreebark>,
    <rootsclassic:livingpickaxe>,
    <rootsclassic:livingaxe>,
    <rootsclassic:livingsword>,
    <rootsclassic:livinghoe>,
    <rootsclassic:livingshovel>,
    <rootsclassic:druidrobeshead>,
    <rootsclassic:druidrobeschest>,
    <rootsclassic:druidrobeslegs>,
    <rootsclassic:druidrobesboots>,
    <rootsclassic:druidarmorhead>,
    <rootsclassic:druidarmorchest>,
    <rootsclassic:druidarmorlegs>,
    <rootsclassic:druidarmorboots>,
    <rootsclassic:manaresearchicon>,
    <rootsclassic:mortar>,
    <rootsclassic:altar>,
    <rootsclassic:brazier>,
    <rootsclassic:imbuer>,
];

disableItems(JEI_RootsClassic);
