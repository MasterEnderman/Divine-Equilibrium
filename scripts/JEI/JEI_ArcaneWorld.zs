#modloaded arcaneworld
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_ArcaneWorld as IIngredient[] = [
    <arcaneworld:ore_amethyst>,
    <arcaneworld:ore_amethyst_nether>,
    <arcaneworld:block_amethyst>,
    <arcaneworld:amethyst>,
    // Biome Crystal
    <arcaneworld:biome_crystal>,
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:ocean"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:plains"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:desert"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:extreme_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:forest"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:taiga"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:swampland"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:river"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:hell"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:sky"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:frozen_ocean"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:frozen_river"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:ice_flats"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:ice_mountains"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:mushroom_island"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:mushroom_island_shore"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:beaches"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:desert_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:forest_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:taiga_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:smaller_extreme_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:jungle"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:jungle_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:jungle_edge"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:deep_ocean"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:stone_beach"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:cold_beach"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:birch_forest"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:birch_forest_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:roofed_forest"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:taiga_cold"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:taiga_cold_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:redwood_taiga"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:redwood_taiga_hills"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:extreme_hills_with_trees"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:savanna"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:savanna_rock"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:mesa"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:mesa_rock"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:mesa_clear_rock"}),
    <arcaneworld:biome_crystal>.withTag({biome: "minecraft:void"}),
    <arcaneworld:biome_crystal>.withTag({biome: "integrateddynamics:biome_meneglin"}),
    <arcaneworld:biome_crystal>.withTag({biome: "arcaneworld:arcane_void"}),
    // Porion Orb
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:night_vision"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_night_vision"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:invisibility"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_invisibility"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:leaping"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_leaping"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_leaping"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:fire_resistance"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:swiftness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_swiftness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_swiftness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:slowness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_slowness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:water_breathing"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_water_breathing"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:healing"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_healing"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:harming"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_harming"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:poison"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_poison"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_poison"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:regeneration"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_regeneration"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_regeneration"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strength"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_strength"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:strong_strength"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:weakness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:long_weakness"}),
    <arcaneworld:potion_orb>.withTag({Potion: "minecraft:luck"}),
    <arcaneworld:potion_orb>.withTag({Potion: "soulus:sleepy"}),
];

disableItems(JEI_ArcaneWorld);
