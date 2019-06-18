#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.hwell.addTubeRecipe;

//mods.hwell.addTubeRecipe(IItemStack input, FluidStack output)

var tubeMap as IItemStack[][ILiquidStack] = {
    <liquid:water>*1000 : [
        <forbidden_arcanus:mysterywood_leaves>
    ]
};

for fluid, inputs in tubeMap {
    for item in inputs {
        addTubeRecipe(item,fluid);
    }
}
