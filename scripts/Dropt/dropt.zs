#priority 900

import mods.dropt.Dropt;

print("Loading dropt.zs");

Dropt.list("blocks")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([<minecraft:bone_block>])
        .addDrop(Dropt.drop()
            .items([<minecraft:bone>],Dropt.range(4,7))
        )
    )
    .add(Dropt.rule()
        .matchDrops([<contenttweaker:charred_cobblestone>])
        .addDrop(Dropt.drop()
            .items([<minecraft:gravel>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<minecraft:flint>])
        .addDrop(Dropt.drop()
            .items([<minecraft:gravel>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<contenttweaker:spawn_chamber>])
        .addDrop(Dropt.drop()
        )
    );
