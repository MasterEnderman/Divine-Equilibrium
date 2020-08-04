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
wood.saleQuantity = 1;
wood.build();

var heart = Util.createEntry("Recover a Life");
heart.setIcon(<betterquesting:extra_life>);
heart.description = "Grants you one extra Life";
heart.airCost = 10;
heart.earthCost = 100;
heart.fireCost = 10;
heart.waterCost = 10;
heart.saleQuantity = -1;
heart.multiplierPerPurchase = 1.5;
heart.addRequiredStage("wood");
heart.addOutputs([<betterquesting:extra_life>]);
heart.build();

var fire_1 = Util.createEntry("Fire 1");
fire_1.setIcon(<minecraft:flint_and_steel>);
fire_1.description = "Unlocks a new Gamestage";
fire_1.fireCost = 5;
fire_1.experienceGiven = 2;
fire_1.addRequiredStage("wood");
fire_1.addGivenStage("fire_1");
fire_1.saleQuantity = 1;
fire_1.build();

var earth_1 = Util.createEntry("Earth 1");
earth_1.setIcon(<minecraft:grass>);
earth_1.description = "Unlocks a new Gamestage";
earth_1.earthCost = 20;
earth_1.experienceGiven = 2;
earth_1.addRequiredStage("wood");
earth_1.addGivenStage("earth_1");
earth_1.saleQuantity = 1;
earth_1.build();

var air_1 = Util.createEntry("Air 1");
air_1.setIcon(<minecraft:feather>);
air_1.description = "Unlocks a new Gamestage";
air_1.airCost = 20;
air_1.experienceGiven = 2;
air_1.addRequiredStage("wood");
air_1.addGivenStage("air_1");
air_1.saleQuantity = 1;
air_1.build();

var water_1 = Util.createEntry("Water 1");
water_1.setIcon(<minecraft:water_bucket>);
water_1.description = "Unlocks a new Gamestage";
water_1.waterCost = 5;
water_1.experienceGiven = 2;
water_1.addRequiredStage("wood");
water_1.addGivenStage("water_1");
water_1.saleQuantity = 1;
water_1.build();

var solidified_fire = Util.createEntry("Solidified Fire");
solidified_fire.setIcon(<contenttweaker:solidified_fire_knowledge>);
solidified_fire.description = "Solidifies an Element into a solid Item.";
solidified_fire.fireCost = 5;
solidified_fire.saleQuantity = -1;
solidified_fire.addOutputs([<contenttweaker:solidified_fire_knowledge>]);
solidified_fire.addRequiredStage("fire_1");
solidified_fire.build();

var solidified_water = Util.createEntry("Solidified Water");
solidified_water.setIcon(<contenttweaker:solidified_water_knowledge>);
solidified_water.description = "Solidifies an Element into a solid Item.";
solidified_water.waterCost = 5;
solidified_water.saleQuantity = -1;
solidified_water.addOutputs([<contenttweaker:solidified_water_knowledge>]);
solidified_water.addRequiredStage("water_1");
solidified_water.build();

var solidified_air = Util.createEntry("Solidified Air");
solidified_air.setIcon(<contenttweaker:solidified_air_knowledge>);
solidified_air.description = "Solidifies an Element into a solid Item.";
solidified_air.airCost = 20;
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
crafting_1.airCost = 50;
crafting_1.fireCost = 5;
crafting_1.earthCost = 200;
crafting_1.waterCost = 5;
crafting_1.experienceGiven = 10;
crafting_1.addRequiredStages("AND", ["earth_1","air_1","fire_1","water_1"]);
crafting_1.addGivenStage("crafting_1");
crafting_1.saleQuantity = 1;
crafting_1.build();

var tools_2 = Util.createEntry("Improved Tools");
tools_2.setIcon(<forbidden_arcanus:bone_pickaxe>);
tools_2.description = "Unlocks Recipes for Advanced Tools.";
tools_2.airCost = 300;
tools_2.fireCost = 5;
tools_2.earthCost = 1000;
tools_2.waterCost = 5;
tools_2.addRequiredStages("AND", ["tools_1","gaia"]);
tools_2.addGivenStage("tools_2");
tools_2.saleQuantity = 1;
tools_2.build();

var pyre = Util.createEntry("Pyre");
pyre.setIcon(<roots:bonfire>);
pyre.description = "It's not just a Campfire.";
pyre.airCost = 50;
pyre.fireCost = 25;
pyre.earthCost = 200;
pyre.addRequiredStages("AND", ["gaia_finish"]);
pyre.saleQuantity = -1;
pyre.addOutputs([<roots:bonfire>]);
pyre.addInputs([<forbidden_arcanus:mysterywood_log>*16,<contenttweaker:bark_mysterywood>*64,<minecraft:cobblestone>*16], true);
pyre.build();
