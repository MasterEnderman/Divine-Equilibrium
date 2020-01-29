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

var liquid_darkness as Fluid = VanillaFactory.createFluid("liquid_darkness",1118481);
liquid_darkness.setDensity(300);
liquid_darkness.setLuminosity(0);
liquid_darkness.setTemperature(10);
liquid_darkness.register();

