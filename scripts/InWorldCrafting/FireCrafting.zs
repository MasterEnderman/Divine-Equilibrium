#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.inworldcrafting.FireCrafting;

var FireCraftingMap as IIngredient[][IItemStack] = {
    <minecraft:bone_block> : [<minecraft:skull:3>],
    <minecraft:cobblestone> : [<contenttweaker:pebble>],
    <forbidden_arcanus:bone_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Name: "Scorched Bone Pickaxe"}}) : [<forbidden_arcanus:bone_pickaxe>],
    <forbidden_arcanus:bone_sword>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Name: "Scorched Bone Sword"}}) : [<forbidden_arcanus:bone_sword>],
    <forbidden_arcanus:bone_shovel>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Name: "Scorched Bone Shovel"}}) : [<forbidden_arcanus:bone_shovel>],
    <forbidden_arcanus:bone_axe>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Name: "Scorched Bone Axe"}}) : [<forbidden_arcanus:bone_axe>],
    <cannibalism:playerfleshcooked> : [<cannibalism:playerflesh>],
    <bonetorch:bonetorch> : [<minecraft:bone>],
    <minecraft:flint> : [<ore:gravel>],
    <hwell:shard_p> : [<contenttweaker:solidified_fire_knowledge>],
    <hwell:shard_o> : [<contenttweaker:solidified_water_knowledge>],
    <hwell:shard_au> : [<contenttweaker:solidified_air_knowledge>],
    <hwell:shard_n> : [<contenttweaker:solidified_earth_knowledge>],
    <hwell:scorch_glass> : [<hwell:scorch_grit>],
    <naturesaura:gold_powder>*2 : [<naturesaura:gold_leaf>],
    <claybucket:claybucket> : [<claybucket:unfiredclaybucket>]
};

var burntime as int = 120;

for output, inputs in FireCraftingMap {
    for input in inputs {
        FireCrafting.addRecipe(output, input, burntime); 
    }
}
