#modloaded minecraft
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

JEI.hideCategory("minecraft.anvil");

static JEI_Minecraft as IIngredient[] = [
    <minecraft:monster_egg>,
    <minecraft:monster_egg:1>,
    <minecraft:monster_egg:2>,
    <minecraft:monster_egg:3>,
    <minecraft:monster_egg:4>,
    <minecraft:monster_egg:5>,
    <minecraft:anvil:1>,
    <minecraft:anvil:2>,
    <minecraft:end_portal_frame>,
    <minecraft:command_block>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:firework_charge>,
    <minecraft:mob_spawner>,
    <minecraft:farmland>,
    <minecraft:brown_mushroom_block>,
    <minecraft:red_mushroom_block>,
    <minecraft:barrier>,
    <minecraft:grass_path>,
    <minecraft:structure_void>,
    <minecraft:structure_block>,
    <minecraft:filled_map>,
    <minecraft:written_book>,
    <minecraft:fireworks>,
    <minecraft:command_block_minecart>,
    <minecraft:knowledge_book>,
    <minecraft:map>,
    <minecraft:iron_shovel>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_axe>,
    <minecraft:iron_sword>,
    <minecraft:wooden_sword>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_sword>,
    <minecraft:stone_shovel>,
    <minecraft:stone_axe>,
    <minecraft:stone_pickaxe>,
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_pickaxe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_sword>,
    <minecraft:golden_shovel>,
    <minecraft:golden_pickaxe>,
    <minecraft:golden_axe>,
    <minecraft:wooden_hoe>,
    <minecraft:stone_hoe>,
    <minecraft:iron_hoe>,
    <minecraft:diamond_hoe>,
    <minecraft:golden_hoe>,
    <minecraft:chainmail_helmet>,
    <minecraft:chainmail_chestplate>,
    <minecraft:chainmail_leggings>,
    <minecraft:chainmail_boots>,
    <minecraft:iron_helmet>,
    <minecraft:iron_chestplate>,
    <minecraft:iron_leggings>,
    <minecraft:iron_boots>,
    <minecraft:diamond_helmet>,
    <minecraft:diamond_chestplate>,
    <minecraft:diamond_leggings>,
    <minecraft:diamond_boots>,
    <minecraft:golden_helmet>,
    <minecraft:golden_chestplate>,
    <minecraft:golden_leggings>,
    <minecraft:golden_boots>,
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}),
    <minecraft:potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:potion>.withTag({Potion: "minecraft:leaping"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_leaping"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),
    <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:slowness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:healing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:regeneration"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_regeneration"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strength"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_strength"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}),
    <minecraft:potion>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_weakness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:luck"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_leaping"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_leaping"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:fire_resistance"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_healing"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:harming"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:poison"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_poison"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_poison"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_regeneration"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_strength"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_strength"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:luck"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_night_vision"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:leaping"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_leaping"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_leaping"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:fire_resistance"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_swiftness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water_breathing"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_water_breathing"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:healing"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_healing"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:harming"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:poison"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_poison"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_poison"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:regeneration"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_regeneration"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strength"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_strength"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_strength"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_weakness"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:luck"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_night_vision"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:leaping"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_leaping"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_leaping"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:fire_resistance"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_swiftness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:slowness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:water_breathing"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_water_breathing"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:healing"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_healing"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:harming"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:poison"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_poison"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_poison"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:regeneration"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_regeneration"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_regeneration"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strength"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_strength"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_strength"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_weakness"}),
    <minecraft:tipped_arrow>.withTag({Potion: "minecraft:luck"}),
];

disableItems(JEI_Minecraft);
