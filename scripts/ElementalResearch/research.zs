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
wood.airCost = 5;
wood.earthCost = 20;
wood.experienceGiven = 3;
wood.addGivenStage("wood");
wood.build();

var fire_1 = Util.createEntry("Fire 1");
fire_1.setIcon(<minecraft:flint_and_steel>);
fire_1.fireCost = 50;
fire_1.experienceGiven = 2;
fire_1.addRequiredStage("wood");
fire_1.addGivenStage("fire_1");
fire_1.build();

var earth_1 = Util.createEntry("Earth 1");
earth_1.setIcon(<minecraft:dirt>);
earth_1.earthCost = 50;
earth_1.experienceGiven = 2;
earth_1.addRequiredStage("wood");
earth_1.addGivenStage("earth_1");
earth_1.build();

var air_1 = Util.createEntry("Air 1");
air_1.setIcon(<minecraft:feather>);
air_1.airCost = 50;
air_1.experienceGiven = 2;
air_1.addRequiredStage("wood");
air_1.addGivenStage("air_1");
air_1.build();

var water_1 = Util.createEntry("Water 1");
water_1.setIcon(<minecraft:bucket>);
water_1.waterCost = 50;
water_1.experienceGiven = 2;
water_1.addRequiredStage("wood");
water_1.addGivenStage("water_1");
water_1.build();

var solidified_fire = Util.createEntry("Solidified Fire");
solidified_fire.setIcon(<contenttweaker:solidified_fire_knowledge>);
solidified_fire.fireCost = 10;
solidified_fire.saleQuantity = -1;
solidified_fire.addOutputs([<contenttweaker:solidified_fire_knowledge>]);
solidified_fire.addRequiredStage("fire_1");
solidified_fire.build();

var solidified_water = Util.createEntry("Solidified Water");
solidified_water.setIcon(<contenttweaker:solidified_water_knowledge>);
solidified_water.waterCost = 10;
solidified_water.saleQuantity = -1;
solidified_water.addOutputs([<contenttweaker:solidified_water_knowledge>]);
solidified_water.addRequiredStage("water_1");
solidified_water.build();

var solidified_air = Util.createEntry("Solidified Air");
solidified_air.setIcon(<contenttweaker:solidified_air_knowledge>);
solidified_air.airCost = 10;
solidified_air.saleQuantity = -1;
solidified_air.addOutputs([<contenttweaker:solidified_air_knowledge>]);
solidified_air.addRequiredStage("air_1");
solidified_air.build();

var solidified_earth = Util.createEntry("Solidified Earth");
solidified_earth.setIcon(<contenttweaker:solidified_earth_knowledge>);
solidified_earth.earthCost = 10;
solidified_earth.saleQuantity = -1;
solidified_earth.addOutputs([<contenttweaker:solidified_earth_knowledge>]);
solidified_earth.addRequiredStage("earth_1");
solidified_earth.build();