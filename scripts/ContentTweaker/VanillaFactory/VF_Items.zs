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

var azurite as Item = VanillaFactory.createItem("azurite");
azurite.setLocalizedNameSupplier(function(itemStack) {return "Azurite Pebble";});
azurite.register();

var pellet as Item = VanillaFactory.createItem("pellet");
pellet.setLocalizedNameSupplier(function(itemStack) {return "Fuel Pellet";});
pellet.register();

var heavy_ring as Item = VanillaFactory.createItem("heavy_ring");
heavy_ring.setLocalizedNameSupplier(function(itemStack) {return "Heavy Ring";});
heavy_ring.register();

var golem_corpse as Item = VanillaFactory.createItem("golem_corpse");
golem_corpse.setLocalizedNameSupplier(function(itemStack) {return "Golem Corpse";});
golem_corpse.register();

//bark
var bark_mysterywood as Item = VanillaFactory.createItem("bark_mysterywood");
bark_mysterywood.setLocalizedNameSupplier(function(itemStack) {return "Mysterywood Bark";});
bark_mysterywood.textureLocation = ResourceLocation.create("contenttweaker:items/bark/bark_mysterywood");
bark_mysterywood.register();

var bark_cherrywood as Item = VanillaFactory.createItem("bark_cherrywood");
bark_cherrywood.setLocalizedNameSupplier(function(itemStack) {return "Cherrywood Bark";});
bark_cherrywood.textureLocation = ResourceLocation.create("contenttweaker:items/bark/bark_cherrywood");
bark_cherrywood.register();

var bark_ancient as Item = VanillaFactory.createItem("bark_ancient");
bark_ancient.setLocalizedNameSupplier(function(itemStack) {return "Ancient Bark";});
bark_ancient.textureLocation = ResourceLocation.create("contenttweaker:items/bark/bark_ancient");
bark_ancient.register();

//icon
var primcraft as Item = VanillaFactory.createItem("primcraft");
primcraft.setLocalizedNameSupplier(function(itemStack) {return "Primitive Crafting Icon";});
primcraft.textureLocation = ResourceLocation.create("contenttweaker:items/icon/primcraft");
primcraft.register();

//materials
var terra_ingot as Item = VanillaFactory.createItem("terra_ingot");
terra_ingot.setLocalizedNameSupplier(function(itemStack) {return "Terra Ingot";});
terra_ingot.textureLocation = ResourceLocation.create("contenttweaker:items/materials/terra_ingot");
terra_ingot.register();

//solidified_knowledge
var solidified_fire_knowledge as Item = VanillaFactory.createItem("solidified_fire_knowledge");
solidified_fire_knowledge.setLocalizedNameSupplier(function(itemStack) {return "Solidified Fire Knowledge";});
solidified_fire_knowledge.textureLocation = ResourceLocation.create("contenttweaker:items/solidified_knowledge/solidified_fire_knowledge");
solidified_fire_knowledge.register();

var solidified_water_knowledge as Item = VanillaFactory.createItem("solidified_water_knowledge");
solidified_water_knowledge.setLocalizedNameSupplier(function(itemStack) {return "Solidified Water Knowledge";});
solidified_water_knowledge.textureLocation = ResourceLocation.create("contenttweaker:items/solidified_knowledge/solidified_water_knowledge");
solidified_water_knowledge.register();

var solidified_air_knowledge as Item = VanillaFactory.createItem("solidified_air_knowledge");
solidified_air_knowledge.setLocalizedNameSupplier(function(itemStack) {return "Solidified Air Knowledge";});
solidified_air_knowledge.textureLocation = ResourceLocation.create("contenttweaker:items/solidified_knowledge/solidified_air_knowledge");
solidified_air_knowledge.register();

var solidified_earth_knowledge as Item = VanillaFactory.createItem("solidified_earth_knowledge");
solidified_earth_knowledge.setLocalizedNameSupplier(function(itemStack) {return "Solidified Earth Knowledge";});
solidified_earth_knowledge.textureLocation = ResourceLocation.create("contenttweaker:items/solidified_knowledge/solidified_earth_knowledge");
solidified_earth_knowledge.register();

//tools
var hwaxun as Item = VanillaFactory.createItem("hwaxun");
hwaxun.setLocalizedNameSupplier(function(itemStack) {return "The Hwaxun";});
hwaxun.textureLocation = ResourceLocation.create("contenttweaker:items/tools/hwaxun");
hwaxun.register();

var head_stone_pickaxe as Item = VanillaFactory.createItem("head_stone_pickaxe");
head_stone_pickaxe.setLocalizedNameSupplier(function(itemStack) {return "Stone Pickaxe Head";});
head_stone_pickaxe.textureLocation = ResourceLocation.create("contenttweaker:items/tools/head_stone_pickaxe");
head_stone_pickaxe.register();

var head_stone_axe as Item = VanillaFactory.createItem("head_stone_axe");
head_stone_axe.setLocalizedNameSupplier(function(itemStack) {return "Stone Axe Head";});
head_stone_axe.textureLocation = ResourceLocation.create("contenttweaker:items/tools/head_stone_axe");
head_stone_axe.register();

var head_stone_shovel as Item = VanillaFactory.createItem("head_stone_shovel");
head_stone_shovel.setLocalizedNameSupplier(function(itemStack) {return "Stone Shovel Head";});
head_stone_shovel.textureLocation = ResourceLocation.create("contenttweaker:items/tools/head_stone_shovel");
head_stone_shovel.register();

var head_stone_sword as Item = VanillaFactory.createItem("head_stone_sword");
head_stone_sword.setLocalizedNameSupplier(function(itemStack) {return "Stone Sword Blade";});
head_stone_sword.textureLocation = ResourceLocation.create("contenttweaker:items/tools/head_stone_sword");
head_stone_sword.register();

