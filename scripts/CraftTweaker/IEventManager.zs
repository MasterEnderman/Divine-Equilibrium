#priority 50

import crafttweaker.events.IEventManager;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommandSender;
import crafttweaker.server.IServer;
import crafttweaker.event.EntityLivingUseItemEvent.All;
import crafttweaker.event.EntityLivingUseItemEvent.Start;
import crafttweaker.event.EntityLivingUseItemEvent.Tick;
import crafttweaker.event.EntityLivingUseItemEvent.Stop;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;

import scripts.CraftTweaker.Functions.transformString;

/*
events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent){
    if(!event.endConquered && !event.player.world.remote) {
        server.commandManager.executeCommand(server, "/xp -5L " + event.player.name);
    }
});

events.onEntityLivingUseItemStart(function(event as crafttweaker.event.EntityLivingUseItemEvent.Start){
    if (event.isPlayer) {
        if (transformString(event.item) == transformString(<scalinghealth:heartcontainer>)) {
            var hearts as int = (event.player.maxHealth + 2);
            server.commandManager.executeCommand(server, "/unhealthydying setmaxhealth" + event.player.name + hearts);
        }
    }
});
*/
