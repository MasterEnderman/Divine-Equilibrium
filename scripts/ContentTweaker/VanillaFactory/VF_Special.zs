#priority 1000
#loader contenttweaker

import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_Special");

//salad
var salad_leaf = VanillaFactory.createItemFood("salad_leaf",6);
salad_leaf.setSaturation(0.8);
salad_leaf.textureLocation = ResourceLocation.create("contenttweaker:items/food/salad_leaf");
salad_leaf.onItemFoodEaten = function(item, world, player) {
    Commands.call("give @p minecraft:bowl", player, world, false, true);
};
salad_leaf.register();
