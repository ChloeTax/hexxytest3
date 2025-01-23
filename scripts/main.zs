import crafttweaker.api.GenericRecipesManager;


craftingTable.addShaped("super_armourer", <item:armourers_workshop:advanced-skin-builder>, [
    [<item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>],
    [<item:minecraft:nether_star>, <item:armourers_workshop:armourer>, <item:minecraft:nether_star>],
    [<item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>]
]);


GenericRecipesManager.INSTANCE.remove(<item:createaddition:electrum_amulet>);
