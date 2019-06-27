#priority 1000
#loader contenttweaker

import mods.contenttweaker.ItemFood;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_FoodItems");

//apple
var apple_mystical = VanillaFactory.createItemFood("apple_mystical",4);
apple_mystical.setSaturation(0.9);
apple_mystical.textureLocation = ResourceLocation.create("contenttweaker:items/food/apple_mystical");
apple_mystical.register();

