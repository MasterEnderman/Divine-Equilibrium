import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

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

];

for item in removeShapeless {
    recipes.removeShapeless(item);
}
