#modloaded crafttweaker
#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;
import scripts.CraftTweaker.Functions.removeAllRecipesFromMod;

var removeAll as IIngredient[] = [
    // Corvus
    <corvus:candle_growth>,
    <corvus:candle_rage>,
    <corvus:candle_wind>,
    <corvus:candle>,
    // Defiled Lands
    <defiledlands:defilement_powder>,
    // EvilCraft
    <evilcraft:blood_infusion_core>,
    <evilcraft:effortless_ring>,
    <evilcraft:promise>,
    <evilcraft:vengeance_ring>,
    // Forbidden and Arcanus
    <forbidden_arcanus:cloth>,
    <forbidden_arcanus:corrupti_dust>,
    <forbidden_arcanus:dark_rune>,
    <forbidden_arcanus:edelwood_log>,
    <forbidden_arcanus:edelwood_planks>,
    <forbidden_arcanus:mundabitur_dust>,
    <forbidden_arcanus:rune>,
    // Hearth Well
    <hwell:asul_block>,
    <hwell:asul_machine_case>,
    <hwell:azurite>,
    <hwell:core_stone>,
    <hwell:crushing_block>,
    <hwell:crystal>,
    <hwell:dust_block>,
    <hwell:dust>,
    <hwell:fullgrass_block>,
    <hwell:moonstone>,
    <hwell:raw_asul_block>,
    <hwell:scorch_grit>,
    // Integrated Dynamcis
    <integrateddynamics:drying_basin>,
    <integrateddynamics:squeezer>,
    // Minecraft
    <minecraft:blaze_powder>,
    <minecraft:bone_block>,
    <minecraft:crafting_table>,
    <minecraft:deadbush>,
    <minecraft:dye:15>,
    <minecraft:furnace>,
    <minecraft:leather_boots>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_helmet>,
    <minecraft:leather_leggings>,
    <minecraft:leather>,
    // Mystical World
    <mysticalworld:silk_thread>,
    // Natures's Aura
    <naturesaura:ancient_stick>,
    <naturesaura:gold_powder>,
    <naturesaura:infused_iron_axe>,
    <naturesaura:infused_iron_chest>,
    <naturesaura:infused_iron_helmet>,
    <naturesaura:infused_iron_pants>,
    <naturesaura:infused_iron_pickaxe>,
    <naturesaura:infused_iron_shoes>,
    <naturesaura:infused_iron_shovel>,
    <naturesaura:infused_iron_sword>,
    // Ore Dicts
    <ore:plankWood>,
    <ore:stickWood>,
    // Patchouli
    <patchouli:guide_book>,
    // Potion Fingers
    <potionfingers:ring>,
    // Qusetbook
    <questbook:itemquestbook>,
    // Roots
    <roots:bonfire>,
    <roots:staff>,
    // Roots Classic
    <rootsclassic:growthsalve>,
    // Scaling Health
    <scalinghealth:heartdust>,
    // Soulus
    <soulus:bone_chunk_dry>,
    <soulus:bone_chunk_ender>,
    <soulus:bone_chunk_frozen>,
    <soulus:bone_chunk_fungal>,
    <soulus:bone_chunk_nether>,
    <soulus:bone_chunk_normal>,
    <soulus:bone_chunk_scale>,
    <soulus:bone_meal_nether>,
    <soulus:dust_midnight>,
    <soulus:dust_stone>,
    <soulus:dust_wood>,
    <soulus:emerald_coated>,
    <soulus:gear_bone_dry>,
    <soulus:gear_bone_frozen>,
    <soulus:gear_bone_fungal>,
    <soulus:gear_bone>,
    // Tombstone
    <tombstone:ankh_of_pray>,
    <tombstone:book_of_disenchantment>,
    <tombstone:crafting_ingredient:1>,
    <tombstone:crafting_ingredient:2>,
    <tombstone:crafting_ingredient>,
    <tombstone:dust_of_vanishing>,
    <tombstone:familiar_receptacle>,
    <tombstone:fishing_rod_of_misadventure>,
    <tombstone:lost_tablet>,
    <tombstone:scroll_buff:1>,
    <tombstone:scroll_buff:2>,
    <tombstone:scroll_buff:3>,
    <tombstone:scroll_buff:4>,
    <tombstone:scroll_buff:5>,
    <tombstone:scroll_buff:6>,
    <tombstone:scroll_buff>,
    <tombstone:scroll_of_knowledge>,
    <tombstone:soul_receptacle>,
    <tombstone:tablet_of_assistance>,
    <tombstone:tablet_of_cupidity>,
    <tombstone:tablet_of_home>,
    <tombstone:tablet_of_home>,
    <tombstone:tablet_of_recall>,
    <tombstone:tablet_of_recall>,
    <tombstone:voodoo_poppet>,
];

for item in removeAll {
    recipes.remove(item);
}

var removeShaped as IIngredient[] = [
    <hwell:citrinic_stone>
];

for item in removeShaped {
    recipes.removeShaped(item);
}

var removeShapeless as IIngredient[] = [
    <hwell:asul_ingot>
];

for item in removeShapeless {
    recipes.removeShapeless(item);
}

var removeModList as string[] = [
    "arcanearchives",
    "embers",
    "clockworkphase",
    "thaumcraft",
    "thaumicperiphery",
    "thaumicaugmentation",
    "tieredmagnets",
    "aetherworks",
    "soot",
    "aetheriumashenarmor"
];

for mod in removeModList {
    removeAllRecipesFromMod(mod);
}

recipes.removeShapeless(<minecraft:dye:1>,[<minecraft:beetroot>]);
