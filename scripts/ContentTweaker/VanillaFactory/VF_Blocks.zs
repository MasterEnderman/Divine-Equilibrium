#priority 1000
#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

print("Loading VF_Blocks");

var spawn_chamber = VanillaFactory.createBlock("spawn_chamber", <blockmaterial:rock>);
spawn_chamber.setBlockHardness(10.0);
spawn_chamber.setBlockResistance(30.0);
spawn_chamber.setToolClass("pickaxe");
spawn_chamber.setToolLevel(0);
spawn_chamber.setBlockSoundType(<soundtype:stone>);
spawn_chamber.register();

var charred_cobblestone = VanillaFactory.createBlock("charred_cobblestone", <blockmaterial:rock>);
charred_cobblestone.setBlockHardness(2.0);
charred_cobblestone.setBlockResistance(30.0);
charred_cobblestone.setToolClass("pickaxe");
charred_cobblestone.setToolLevel(0);
charred_cobblestone.setBlockSoundType(<soundtype:stone>);
charred_cobblestone.register();

var flesh_block = VanillaFactory.createBlock("flesh_block", <blockmaterial:rock>);
flesh_block.setBlockHardness(2.0);
flesh_block.setBlockResistance(10.0);
flesh_block.setToolClass("pickaxe");
flesh_block.setToolLevel(0);
flesh_block.setBlockSoundType(<soundtype:ground>);
flesh_block.register();

