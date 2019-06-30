#priority 1000
#loader contenttweaker

import mods.contenttweaker.Commands;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Player;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.World;

print("Loading VF_Special");

//salad
var salad_leaf = VanillaFactory.createItemFood("salad_leaf",6);
salad_leaf.setSaturation(0.8);
salad_leaf.textureLocation = ResourceLocation.create("contenttweaker:items/food/salad_leaf");
salad_leaf.onItemFoodEaten = function(item, world, player) {
    Commands.call("give @p minecraft:bowl", player, world, false, true);
};
salad_leaf.register();

//apple
var apple_gaia as Item = VanillaFactory.createItem("apple_gaia");
apple_gaia.setLocalizedNameSupplier(function(itemStack) {return "Gaia Fruit";});
apple_gaia.textureLocation = ResourceLocation.create("contenttweaker:items/food/apple_gaia");
apple_gaia.itemRightClick = function(item, world, player, hand) {
    if (world.getDimension() == 0) {
        Commands.call("tpp @p 939 0 140 0", player, world, false, true);
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(60, 1));
    }
    return "Pass";
};
apple_gaia.register();
