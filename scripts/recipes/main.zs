import crafttweaker.api.GenericRecipesManager;



craftingTable.addShapeless("unsuper_armourer", <item:armourers_workshop:armourer>, [<item:armourers_workshop:advanced-skin-builder>]);
craftingTable.addShapeless("super_armourer", <item:armourers_workshop:advanced-skin-builder>, [<item:armourers_workshop:armourer>]);

craftingTable.addShaped("origin_orb", <item:origins:orb_of_origin>, [
    [<item:minecraft:amethyst_shard>, <item:minecraft:ender_eye>, <item:minecraft:amethyst_shard>],
    [<item:minecraft:ender_eye>, <item:minecraft:nether_star>, <item:minecraft:ender_eye>],
    [<item:minecraft:amethyst_shard>, <item:minecraft:ender_eye>, <item:minecraft:amethyst_shard>]
]);

craftingTable.addShaped("splicing_table", <item:hexdebug:splicing_table>, [
    [<item:hexcasting:edified_planks>, <item:hexcasting:charged_amethyst>, <item:hexcasting:edified_planks>],
    [<item:minecraft:amethyst_shard>, <item:hexcasting:focus>, <item:minecraft:amethyst_shard>],
    [<item:hexcasting:slate_block>, <item:minecraft:gold_ingot>, <item:hexcasting:slate_block>]
]);

GenericRecipesManager.INSTANCE.remove(<item:createaddition:electrum_amulet>);
GenericRecipesManager.INSTANCE.remove(<item:ae2:spatial_anchor>);
