#loader preinit

import mods.treetweaker.TreeFactory;

var mystWillow = TreeFactory.createTree("mystWillow");
mystWillow.setTreeType("WILLOW");
mystWillow.setLog("hwell:myst_log");
mystWillow.setLeaf("hwell:myst_leaves");
mystWillow.setDimWhitelist(0);
mystWillow.setMinHeight(4);
mystWillow.addSapling();
mystWillow.register();
