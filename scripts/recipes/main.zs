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
GenericRecipesManager.INSTANCE.remove(<item:turtlematic:chunk_vial>);

craftingTable.addShapeless("communism", <item:numismatics:cog>, [<item:spectrum:downstone_fragments>]);
craftingTable.addShapeless("capitalism", <item:spectrum:downstone_fragments>, [<item:numismatics:cog>]);

for cable in ["_smart_cable", "_covered_cable", "_glass_cable", "_covered_dense_cable", "_smart_dense_cable"] {
    for color in ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] {
        GenericRecipesManager.INSTANCE.addJsonRecipe("dye_blowing/ae2/"+color+"/"+cable, {
            "type": "garnished:"+color+"_dye_blowing",
            "ingredients": [
                {
                    "item": "ae2:fluix"+cable
                }
            ],
            "results": [
                {
                    "item": "ae2:"+color+cable,
                    "count": 1
                }
            ]
        });
    }
}

for cable in ["smart_cable", "covered_cable", "glass_cable", "covered_dense_cable", "smart_dense_cable"] {
    GenericRecipesManager.INSTANCE.addJsonRecipe("washing/ae2/"+cable, {
        "type": "create:splashing",
        "ingredients": [
            {
                "tag": "ae2:"+cable
            }
        ],
        "results": [
            {
                "item": "ae2:fluix_"+cable
            }
        ]
    });
}


