#priority 400

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// TL;DR Global variables need to start with "global" to be global!

global waterBottle as IItemStack = <minecraft:potion>.withTag({Potion: "minecraft:water"});

global otherBottle as IItemStack = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"});
global netherBottle as IItemStack = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"});
global overworldBottle as IItemStack = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"});
global endBottle as IItemStack = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"});

global appleGaia as IItemStack = <dimensionaledibles:custom_apple>.withTag({dimID: 939, x: 0, y: 140, z: 0, appleName: "Gaia"});

global ringGaia as IItemStack = <potionfingers:ring>.withTag({effect: "corvus:breath_of_gaia", display: {Name: "§3Ring of Gaia"}});
global ringHaste as IItemStack = <potionfingers:ring>.withTag({effect: "minecraft:haste", display: {Name: "§6Ring of Haste"}});
global ringFlight as IItemStack = <potionfingers:ring>.withTag({effect: "forbidden_arcanus:fly", display: {Name: "§dRing of Flight"}});
