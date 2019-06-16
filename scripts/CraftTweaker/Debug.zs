#norun
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var seedList = vanilla.seeds.seeds;

for item in seedList {
    print("Item: " ~ item.stack.displayName ~ " || Chance: " ~ item.percent ~ "%");
}
