#loader preinit

import mods.treetweaker.TreeFactory;

var mystWillow = TreeFactory.createTree("mystWillow");
mystWillow.setTreeType("WILLOW");
mystWillow.setLog("hwell:myst_log");
mystWillow.setLeaf("hwell:myst_leaves");
mystWillow.setDimWhitelist(-1);
mystWillow.setMinHeight(4);
mystWillow.addSapling();
mystWillow.register();

var ritualTree = TreeFactory.createTree("ritualTree");
ritualTree.setTreeType("OAK");
ritualTree.setLog("naturesaura:ancient_log:1");
ritualTree.setLeaf("naturesaura:ancient_leaves:3");
ritualTree.setDimWhitelist(-1);
ritualTree.setMinHeight(4);
ritualTree.addSapling();
ritualTree.register();

var edelwoodTree = TreeFactory.createTree("edelwoodTree");
edelwoodTree.setTreeType("OAK");
edelwoodTree.setLog("forbidden_arcanus:edelwood_log");
edelwoodTree.setLeaf("evilcraft:undead_leaves");
edelwoodTree.setDimWhitelist(-1);
edelwoodTree.setMinHeight(4);
edelwoodTree.addSapling();
edelwoodTree.register();
