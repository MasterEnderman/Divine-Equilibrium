#priority 1000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

print("Loading VF_Fluids");

var frankencense_essence as Fluid = VanillaFactory.createFluid("frankencense_essence",12741923);
frankencense_essence.setDensity(1000);
frankencense_essence.setLuminosity(1);
frankencense_essence.setTemperature(290);
frankencense_essence.register();

