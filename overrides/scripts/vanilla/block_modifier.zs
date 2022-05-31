import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;


val redstone = <item:minecraft:redstone>;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var holdItem = event.getItemStack();

    if (holdItem == redstone) {
        event.cancel();
    }
});