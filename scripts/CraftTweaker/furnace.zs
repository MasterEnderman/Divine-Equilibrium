import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var removeMap as IIngredient[] = [
    <forbidden_arcanus:arcane_crystal_dust>,
    <minecraft:gold_nugget>,
    <minecraft:iron_nugget>,
    <defiledlands:umbrium_nugget>,
    <hwell:crystal_block>,
    <soulus:emerald_burnt>,
    <evilcraft:burning_gem_stone>,
    <forbidden_arcanus:dark_matter>,
    <forbidden_arcanus:dark_rune>
];

for item in removeMap {
    furnace.remove(item);
}

var furnaceMap as IIngredient[][IItemStack] = {
    <minecraft:leather> : [
        <forbidden_arcanus:rotten_leather>
    ],
};

for output, inputs in furnaceMap {
    furnace.remove(output);
    for item in inputs {
        furnace.addRecipe(output, item);
    }
}

var fuelMap as int[IItemStack] = {
    <contenttweaker:pellet> : 200
};

for item, burntime in fuelMap {
    furnace.setFuel(item, burntime);
}
