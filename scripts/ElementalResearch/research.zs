#modloaded elementalresearch
#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Functions.transformString;

import mods.elementalresearch.Util;

var wood = Util.createEntry("Wood");
wood.setIcon(<minecraft:log>);
wood.description = "Unlocks a new Gamestage";
wood.airCost = 5;
wood.earthCost = 20;
wood.experienceGiven = 3;
wood.addGivenStage("wood");
wood.build();

var heart = Util.createEntry("Recover Hearts");
heart.setIcon(<betterquesting:extra_life>);
heart.description = "Resets the Health of the Player";
heart.airCost = 10;
heart.earthCost = 100;
heart.fireCost = 10;
heart.saleQuantity = -1;
heart.multiplierPerPurchase = 1.5;
heart.addRequiredStage("wood");
heart.addCommand("unhealthydying setmaxhealth @p 20");
heart.build();

var fire_1 = Util.createEntry("Fire 1");
fire_1.setIcon(<minecraft:flint_and_steel>);
fire_1.description = "Unlocks a new Gamestage";
fire_1.fireCost = 20;
fire_1.experienceGiven = 2;
fire_1.addRequiredStagesWithModifier("OR", 1.4, ["air_1", "water_1", "earth_1", "wood"]);
fire_1.addGivenStage("fire_1");
fire_1.build();

var earth_1 = Util.createEntry("Earth 1");
earth_1.setIcon(<minecraft:grass>);
earth_1.description = "Unlocks a new Gamestage";
earth_1.earthCost = 100;
earth_1.experienceGiven = 2;
earth_1.addRequiredStagesWithModifier("OR", 1.4, ["air_1", "fire_1", "water_1", "wood"]);
earth_1.addGivenStage("earth_1");
earth_1.build();

var air_1 = Util.createEntry("Air 1");
air_1.setIcon(<minecraft:feather>);
air_1.description = "Unlocks a new Gamestage";
air_1.airCost = 20;
air_1.experienceGiven = 2;
air_1.addRequiredStagesWithModifier("OR", 1.4, ["water_1", "fire_1", "earth_1", "wood"]);
air_1.addGivenStage("air_1");
air_1.build();

var water_1 = Util.createEntry("Water 1");
water_1.setIcon(<minecraft:water_bucket>);
water_1.description = "Unlocks a new Gamestage";
water_1.waterCost = 20;
water_1.experienceGiven = 2;
water_1.addRequiredStagesWithModifier("OR", 1.4, ["air_1", "fire_1", "earth_1", "wood"]);
water_1.addGivenStage("water_1");
water_1.build();

var solidified_fire = Util.createEntry("Solidified Fire");
solidified_fire.setIcon(<contenttweaker:solidified_fire_knowledge>);
solidified_fire.description = "Solidifies an Element into a solid Item.";
solidified_fire.fireCost = 10;
solidified_fire.saleQuantity = -1;
solidified_fire.addOutputs([<contenttweaker:solidified_fire_knowledge>]);
solidified_fire.addRequiredStage("fire_1");
solidified_fire.build();

var solidified_water = Util.createEntry("Solidified Water");
solidified_water.setIcon(<contenttweaker:solidified_water_knowledge>);
solidified_water.description = "Solidifies an Element into a solid Item.";
solidified_water.waterCost = 10;
solidified_water.saleQuantity = -1;
solidified_water.addOutputs([<contenttweaker:solidified_water_knowledge>]);
solidified_water.addRequiredStage("water_1");
solidified_water.build();

var solidified_air = Util.createEntry("Solidified Air");
solidified_air.setIcon(<contenttweaker:solidified_air_knowledge>);
solidified_air.description = "Solidifies an Element into a solid Item.";
solidified_air.airCost = 10;
solidified_air.saleQuantity = -1;
solidified_air.addOutputs([<contenttweaker:solidified_air_knowledge>]);
solidified_air.addRequiredStage("air_1");
solidified_air.build();

var solidified_earth = Util.createEntry("Solidified Earth");
solidified_earth.setIcon(<contenttweaker:solidified_earth_knowledge>);
solidified_earth.description = "Solidifies an Element into a solid Item.";
solidified_earth.earthCost = 20;
solidified_earth.saleQuantity = -1;
solidified_earth.addOutputs([<contenttweaker:solidified_earth_knowledge>]);
solidified_earth.addRequiredStage("earth_1");
solidified_earth.build();

var crafting_1 = Util.createEntry("More Efficient Recipes I");
crafting_1.setIcon(<contenttweaker:primcraft>);
crafting_1.description = "Unlocks Recipe Alternatives for Basic Ingredients.";
crafting_1.airCost = 40;
crafting_1.fireCost = 40;
crafting_1.earthCost = 200;
crafting_1.waterCost = 40;
crafting_1.experienceGiven = 10;
crafting_1.addRequiredStages("AND", ["earth_1","air_1","fire_1","water_1"]);
crafting_1.addGivenStage("crafting_1");
crafting_1.addGivenStage("tools_1");
crafting_1.addGivenStage("inventorycrafting");
crafting_1.build();
