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
    <minecraft:dye:15>,
    <soulus:dust_wood>,
    <soulus:dust_stone>,
    <corvus:candle>,
    <rootsclassic:growthsalve>,
    <hwell:core_stone>,
    <soulus:bone_meal_nether>,
    <hwell:crushing_block>,
    <hwell:dust_block>,
    <hwell:dust>,
    <hwell:scorch_grit>,
    <hwell:fullgrass_block>,
    <hwell:azurite>,
    <hwell:moonstone>,
    <integrateddynamics:squeezer>,
    <integrateddynamics:drying_basin>,
    <potionfingers:ring>,
    <ore:plankWood>,
    <ore:stickWood>,
    <soulus:bone_chunk_normal>,
    <soulus:bone_chunk_dry>,
    <soulus:bone_chunk_fungal>,
    <soulus:bone_chunk_frozen>,
    <soulus:bone_chunk_scale>,
    <soulus:bone_chunk_ender>,
    <soulus:bone_chunk_nether>,
    <minecraft:blaze_powder>,
    <roots:bonfire>,
    <minecraft:leather_helmet>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_leggings>,
    <minecraft:leather_boots>,
    <naturesaura:infused_iron_helmet>,
    <naturesaura:infused_iron_chest>,
    <naturesaura:infused_iron_pants>,
    <naturesaura:infused_iron_shoes>,
    <minecraft:crafting_table>,
    <forbidden_arcanus:mundabitur_dust>,
    <naturesaura:infused_iron_sword>,
    <naturesaura:infused_iron_axe>,
    <naturesaura:infused_iron_pickaxe>,
    <naturesaura:infused_iron_shovel>,
    <minecraft:leather>,
    <minecraft:furnace>,
    <soulus:gear_bone>,
    <soulus:gear_bone_dry>,
    <soulus:gear_bone_fungal>,
    <soulus:gear_bone_frozen>,
    <naturesaura:gold_powder>,
    <scalinghealth:heartdust>,
    <corvus:candle_rage>,
    <corvus:candle_growth>,
    <corvus:candle_wind>,
    <tombstone:decorative_grave_simple>,
    <tombstone:decorative_grave_normal>,
    <tombstone:decorative_grave_cross>,
    <tombstone:decorative_tombstone>,
    <roots:staff>,
    <naturesaura:ancient_stick>,
    <mysticalworld:silk_thread>,
    <questbook:itemquestbook>,
    <hwell:crystal>,
    <soulus:emerald_coated>,
    <hwell:asul_block>,
    <hwell:raw_asul_block>,
    <evilcraft:blood_infusion_core>,
    <minecraft:bone_block>,
    <forbidden_arcanus:edelwood_log>,
    <forbidden_arcanus:dark_rune>,
    <forbidden_arcanus:rune>,
    <forbidden_arcanus:corrupti_dust>,
    <forbidden_arcanus:cloth>,
    <evilcraft:promise>,
    <evilcraft:effortless_ring>,
    <patchouli:guide_book>,
    <soulus:dust_midnight>,
    <hwell:asul_machine_case>,
    <evilcraft:vengeance_ring>,
    <minecraft:deadbush>
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
    "soot"
];

for mod in removeModList {
    removeAllRecipesFromMod(mod);
}
