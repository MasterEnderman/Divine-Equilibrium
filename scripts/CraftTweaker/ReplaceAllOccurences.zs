#norun
#priority 11

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var replaceAllOccurences as IIngredient[IIngredient] = {
    <scalinghealth:heartcontainer> : <contenttweaker:heart_token>,
};

for old, new in replaceAllOccurences {
    recipes.replaceAllOccurences(old, new);
}
