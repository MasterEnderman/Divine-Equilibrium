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

global ringGaia as IItemStack = <potionfingers:ring>.withTag({effect: "corvus:breath_of_gaia", display: {Name: "§3Ring of Gaia"}});
global ringHaste as IItemStack = <potionfingers:ring>.withTag({effect: "minecraft:haste", display: {Name: "§6Ring of Haste"}});
global ringFlight as IItemStack = <potionfingers:ring>.withTag({effect: "forbidden_arcanus:fly", display: {Name: "§dRing of Flight"}});

global trophyGaia as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 49, TrophyVariant: "classic", TrophyItem: {id: "contenttweaker:apple_gaia", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 146, TrophyName: "Fruit of Gaia", TrophyColorRed: 37});
global trophyFirstBoss as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 49, TrophyVariant: "classic", TrophyItem: {ForgeCaps: {"theeightfabledblades:fabledcapabilities": {inscrutableDamage: 0.0, hitCount: 0, isDelayingUseSkill: 0 as byte, isUpdated: 0 as byte, consecutiveStrikes: 0, swordMode: 0, endEnergy: 0.0, timer: 0, swordSign: 0, isUsingSign: 0 as byte, awakeningCounter: 0, currentEnergy: 0.0, lunarDamage: 0.0, isAwakened: 0 as byte, healthPercentage: 0.0, isUsingSkill: 0 as byte}}, id: "theeightfabledblades:heart_piercer", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 44, TrophyName: "Equilibrium for Gaia", TrophyColorRed: 179});
