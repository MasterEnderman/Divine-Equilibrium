#modloaded gamestages
#priority 5

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.GameStages.GS_Initialization.stageDisabled as stage;
import scripts.GameStages.GS_Initialization.stageDisableItem;
import scripts.GameStages.GS_Initialization.stageDisableItems;

import scripts.JEI.JEI_Minecraft.JEI_Minecraft as Minecraft;
import scripts.JEI.JEI_ArcaneWorld.JEI_ArcaneWorld as ArcaneWorld;
import scripts.JEI.JEI_HearthWell.JEI_HearthWell as HearthWell;
import scripts.JEI.JEI_PrimitiveTools.JEI_PrimitiveTools as PrimitiveTools;
import scripts.JEI.JEI_RootsClassic.JEI_RootsClassic as RootsClassic;
import scripts.JEI.JEI_TheOneProbe.JEI_TheOneProbe as TheOneProbe;
import scripts.JEI.JEI_Soulus.JEI_Soulus as Soulus;
import scripts.JEI.JEI_ScalingHealth.JEI_ScalingHealth as ScalingHealth;
import scripts.JEI.JEI_Cannibalism.JEI_Cannibalism as Cannibalism;
import scripts.JEI.JEI_ClockworkPhase.JEI_ClockworkPhase as ClockworkPhase;
import scripts.JEI.JEI_MysticalWorld.JEI_MysticalWorld as MysticalWorld;
import scripts.JEI.JEI_MysticalMechanics.JEI_MysticalMechanics as MysticalMechanics;

print("Disabling Items.");

// create list of JEI lists

var ItemsToDisable as IIngredient[][] = [
    ArcaneWorld,
    Minecraft,
    RootsClassic,
    PrimitiveTools,
    HearthWell,
    MysticalMechanics,
    MysticalWorld,
    ClockworkPhase,
    Cannibalism,
    ScalingHealth,
    Soulus,
    TheOneProbe
];

for list in ItemsToDisable {
    stageDisableItems(list);
}
