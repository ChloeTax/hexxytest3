import crafttweaker.api.GenericRecipesManager;



craftingTable.addShapeless("unsuper_armourer", <item:armourers_workshop:armourer>, [<item:armourers_workshop:advanced-skin-builder>]);
craftingTable.addShapeless("super_armourer", <item:armourers_workshop:advanced-skin-builder>, [<item:armourers_workshop:armourer>]);

craftingTable.addShaped("origin_orb", <item:armourers_workshop:advanced-skin-builder>, [
    [<item:minecraft:amethyst_shard>, <item:minecraft:ender_eye>, <item:minecraft:amethyst_shard>],
    [<item:minecraft:ender_eye>, <item:minecraft:nether_star>, <item:minecraft:ender_eye>],
    [<item:minecraft:amethyst_shard>, <item:minecraft:ender_eye>, <item:minecraft:amethyst_shard>]
]);


GenericRecipesManager.INSTANCE.remove(<item:createaddition:electrum_amulet>);
