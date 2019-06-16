#priority 1000
#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_Items");

//null
var pebble as Item = VanillaFactory.createItem("pebble");
pebble.setLocalizedNameSupplier(function(itemStack) {return "Pebble";});
pebble.register();

