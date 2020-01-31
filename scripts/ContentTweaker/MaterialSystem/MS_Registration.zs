#priority 99999
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

import scripts.ContentTweaker.MaterialSystem.MS_Definition.addDefaultMoltenData;
import scripts.ContentTweaker.MaterialSystem.MS_Definition.addDefaultOreData;
import scripts.ContentTweaker.MaterialSystem.MS_Definition.materials;

print("Loading MS_Registration");

//brass

var brassFluidData as MaterialPartData = materials.brass.registerPart("molten").getData();
addDefaultMoltenData(brassFluidData);


//thaumium

var thaumiumFluidData as MaterialPartData = materials.thaumium.registerPart("molten").getData();
addDefaultMoltenData(thaumiumFluidData);

