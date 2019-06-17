import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

val seedList = vanilla.seeds.seeds;

for item in seedList {
    print("Item: " ~ item.stack.displayName ~ " || Chance: " ~ item.percent ~ "%");
    vanilla.seeds.removeSeed(item.stack);
}
