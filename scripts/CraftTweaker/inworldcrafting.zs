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
    <forbidden_arcanus:bone_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Name: "Hardened Bone Pickaxe"}}) : [<forbidden_arcanus:bone_pickaxe>],
    <cannibalism:playerfleshcooked> : [<cannibalism:playerflesh>],
    <bonetorch:bonetorch> : [<minecraft:bone>],
    <minecraft:flint> : [<ore:gravel>],
    <hwell:shard_p> : [<contenttweaker:solidified_fire_knowledge>],
    <hwell:shard_o> : [<contenttweaker:solidified_water_knowledge>],
    <hwell:shard_au> : [<contenttweaker:solidified_air_knowledge>],
    <hwell:shard_n> : [<contenttweaker:solidified_earth_knowledge>],
    <hwell:scorch_glass> : [<hwell:scorch_grit>]
};

var burntime as int = 120;

for output, inputs in FireCraftingMap {
    for input in inputs {
        FireCrafting.addRecipe(output, input, burntime);
    }
}
