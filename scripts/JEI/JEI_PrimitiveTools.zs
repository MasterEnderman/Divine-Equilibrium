#modloaded primitivetools
#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.CraftTweaker.Functions.disableItems;

static JEI_PrimitiveTools as IIngredient[] = [
    <primitivetools:plant_fiber>,
    <primitivetools:cordage_fiber>,
    <primitivetools:cordage_vine>,
    <primitivetools:leather_strip>,
    <primitivetools:wooden_club>,
    <primitivetools:bone_needle>,
    <primitivetools:primitive_knife_cwf>,
    <primitivetools:primitive_hoe_cwf>,
    <primitivetools:primitive_hammer_swf>,
    <primitivetools:primitive_hammer_dwf>,
    <primitivetools:primitive_hammer_gwf>,
    <primitivetools:primitive_knife_cwv>,
    <primitivetools:primitive_hatchet_cwv>,
    <primitivetools:primitive_pick_cwv>,
    <primitivetools:primitive_spade_cwv>,
    <primitivetools:primitive_hoe_cwv>,
    <primitivetools:primitive_hammer_swv>,
    <primitivetools:primitive_hammer_dwv>,
    <primitivetools:primitive_hammer_gwv>,
    <primitivetools:primitive_knife_cwl>,
    <primitivetools:primitive_hatchet_cwl>,
    <primitivetools:primitive_pick_cwl>,
    <primitivetools:primitive_spade_cwl>,
    <primitivetools:primitive_hoe_cwl>,
    <primitivetools:primitive_hammer_swl>,
    <primitivetools:primitive_hammer_dwl>,
    <primitivetools:primitive_hammer_gwl>,
    <primitivetools:primitive_hoe_cbf>,
    <primitivetools:primitive_hammer_sbf>,
    <primitivetools:primitive_hammer_dbf>,
    <primitivetools:primitive_hammer_gbf>,
    <primitivetools:primitive_knife_cbv>,
    <primitivetools:primitive_hatchet_cbv>,
    <primitivetools:primitive_pick_cbv>,
    <primitivetools:primitive_spade_cbv>,
    <primitivetools:primitive_hoe_cbv>,
    <primitivetools:primitive_hammer_sbv>,
    <primitivetools:primitive_hammer_dbv>,
    <primitivetools:primitive_hammer_gbv>,
    <primitivetools:primitive_knife_cbl>,
    <primitivetools:primitive_hatchet_cbl>,
    <primitivetools:primitive_pick_cbl>,
    <primitivetools:primitive_spade_cbl>,
    <primitivetools:primitive_hoe_cbl>,
    <primitivetools:primitive_hammer_sbl>,
    <primitivetools:primitive_hammer_dbl>,
    <primitivetools:primitive_hammer_gbl>,
    <primitivetools:primitive_spear_cwf>,
    <primitivetools:primitive_spear_cwv>,
    <primitivetools:primitive_spear_cwl>,
];

disableItems(JEI_PrimitiveTools);
