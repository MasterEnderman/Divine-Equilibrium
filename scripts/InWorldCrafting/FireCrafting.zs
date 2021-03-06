#modloaded inworldcrafting
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.inworldcrafting.FireCrafting;

var FireCraftingMap as IIngredient[][IItemStack] = {
    <minecraft:bone_block> : [<minecraft:skull:3>, <minecraft:skull>],
    <minecraft:cobblestone> : [<contenttweaker:pebble>],
    <primitivetools:primitive_pick_cbf>.withTag({ench: [{lvl: 1 as short, id: 34 as short},{lvl: 1 as short, id: 20 as short}], display: {Name: "§3Scorched Primitive Pickaxe"}}) : [<primitivetools:primitive_pick_cbf>],
    <primitivetools:primitive_spade_cbf>.withTag({ench: [{lvl: 1 as short, id: 34 as short},{lvl: 1 as short, id: 20 as short}], display: {Name: "§3Scorched Primitive Shovel"}}) : [<primitivetools:primitive_spade_cbf>],
    <primitivetools:primitive_hatchet_cbf>.withTag({ench: [{lvl: 1 as short, id: 34 as short},{lvl: 1 as short, id: 20 as short}], display: {Name: "§3Scorched Primitive Axe"}}) : [<primitivetools:primitive_hatchet_cbf>],
    <primitivetools:primitive_knife_cbf>.withTag({ench: [{lvl: 1 as short, id: 34 as short},{lvl: 1 as short, id: 20 as short}], display: {Name: "§3Scorched Primitive Knife"}}) : [<primitivetools:primitive_knife_cbf>],
    <cannibalism:playerfleshcooked> : [<cannibalism:playerflesh>],
    <bonetorch:bonetorch> : [<soulus:bone_normal>,<soulus:bone_dry>,<soulus:bone_fungal>,<soulus:bone_frozen>],
    <minecraft:flint> : [<ore:gravel>],
    <hwell:shard_p> : [<contenttweaker:solidified_fire_knowledge>],
    <hwell:shard_o> : [<contenttweaker:solidified_water_knowledge>],
    <hwell:shard_au> : [<contenttweaker:solidified_air_knowledge>],
    <hwell:shard_n> : [<contenttweaker:solidified_earth_knowledge>],
    <hwell:scorch_glass> : [<hwell:scorch_grit>],
    <hwell:shard_ca> : [<hwell:moonstone>],
    <naturesaura:gold_powder>*2 : [<naturesaura:gold_leaf>],
    <soulus:bone_meal_nether> : [<minecraft:dye:15>],
    <hwell:heavy_ingot> : [<hwell:heavy_mesh>],
    <minecraft:glass> : [<hwell:dust_block>,<minecraft:sand>,<minecraft:sand:1>],
    <hwell:smooth_azurite> : [<hwell:azurite>],
    <mysticalworld:cooked_venison> : [<mysticalworld:venison>],
    <hwell:citrinic_sand> : [<hwell:citrinic_stone>],
    <embers:dust_ash> : [<owncrops:dark_seed>],
    <defiledlands:defilement_powder> : [<evilcraft:dark_gem_crushed>],
    <soulus:emerald_burnt> : [<minecraft:emerald>],
    <evilcraft:burning_gem_stone> : [<evilcraft:dark_block>],
    <hwell:shard_c> : [<forbidden_arcanus:dark_stone>],
    <minecraft:skull> : [<minecraft:skull:2>,<minecraft:skull:4>,<minecraft:skull:5>,<minecraft:skull:1>],
    <minecraft:deadbush> : [<ore:treeSapling>]
};

var burntime as int = 120;

for output, inputs in FireCraftingMap {
    for input in inputs {
        FireCrafting.addRecipe(output, input, burntime); 
    }
}
