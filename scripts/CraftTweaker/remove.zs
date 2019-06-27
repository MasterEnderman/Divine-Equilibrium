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
    <hwell:dust>
];

for item in removeAll {
    recipes.remove(item);
}

var removeShaped as IIngredient[] = [

];

for item in removeShaped {
    recipes.removeShaped(item);
}

var removeShapeless as IIngredient[] = [

];

for item in removeShapeless {
    recipes.removeShapeless(item);
}
