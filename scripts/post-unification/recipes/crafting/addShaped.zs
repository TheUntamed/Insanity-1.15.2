#priority 9

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function addShapedRecipes() as void {
    logger.info("Prio Test: add-shaped");

    var shapedRecipes as IIngredient[][][IItemStack] = {
        
        /* 
        <item:> :
        [
            [, , ],
            [, , ],
            [, , ]
        ],
        */
        
        <item:astralsorcery:infused_wood_arch>*2 :
        [
            [<item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>]
        ],
        <item:astralsorcery:infused_wood_column>*2 :
        [
            [<item:astralsorcery:infused_wood_planks>],
            [<item:astralsorcery:infused_wood_planks>]
        ],
        <item:astralsorcery:infused_wood_engraved>*4 :
        [
            [<item:minecraft:air>, <item:astralsorcery:infused_wood_planks>, <item:minecraft:air>],
            [<item:astralsorcery:infused_wood_planks>, <item:minecraft:air>, <item:astralsorcery:infused_wood_planks>],
            [<item:minecraft:air>, <item:astralsorcery:infused_wood_planks>, <item:minecraft:air>]
        ],
        <item:astralsorcery:infused_wood_enriched>*4 :
        [
            [<item:minecraft:air>, <item:astralsorcery:infused_wood_planks>, <item:minecraft:air>],
            [<item:astralsorcery:infused_wood_planks>, <item:astralsorcery:aquamarine>, <item:astralsorcery:infused_wood_planks>],
            [<item:minecraft:air>, <item:astralsorcery:infused_wood_planks>, <item:minecraft:air>]
        ],
        <item:astralsorcery:infused_wood_stairs>*8 :
        [
            [<item:astralsorcery:infused_wood_planks>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>, <item:minecraft:air>],
            [<item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>]
        ],
        <item:astralsorcery:infused_wood_slab>*6 :
        [
            [<item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>, <item:astralsorcery:infused_wood_planks>]
        ],

        // Ingots to Plate with Hammer
        // <item:kubejs:lead_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/lead>],
        //     [<tag:forge:ingots/lead>]
        // ],
        // <item:kubejs:copper_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/copper>],
        //     [<tag:forge:ingots/copper>]
        // ],
        // <item:kubejs:silver_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/silver>],
        //     [<tag:forge:ingots/silver>]
        // ],
        // <item:kubejs:tin_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/tin>],
        //     [<tag:forge:ingots/tin>]
        // ],
        // <item:kubejs:aluminum_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/aluminum>],
        //     [<tag:forge:ingots/aluminum>]
        // ],
        // <item:kubejs:coal_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:gems/coal>],
        //     [<tag:forge:gems/coal>]
        // ],
        // <item:kubejs:gold_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/gold>],
        //     [<tag:forge:ingots/gold>]
        // ],
        // <item:kubejs:electrum_plate> :
        // [
        //     [<tag:forge:hammer/weak>],
        //     [<tag:forge:ingots/electrum>],
        //     [<tag:forge:ingots/electrum>]
        // ],
        // <item:kubejs:invar_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/invar>],
        //     [<tag:forge:ingots/invar>]
        // ],
        // <item:kubejs:redstone_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/redstone>],
        //     [<tag:forge:ingots/redstone>]
        // ],
        // <item:kubejs:quartz_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/quartz>],
        //     [<tag:forge:gems/quartz>]
        // ],
        // <item:kubejs:lapis_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/lapis>],
        //     [<tag:forge:gems/lapis>]
        // ],
        // <item:kubejs:nickel_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/nickel>],
        //     [<tag:forge:ingots/nickel>]
        // ],
        // <item:kubejs:ruby_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/ruby>],
        //     [<tag:forge:gems/ruby>]
        // ],
        // <item:kubejs:sapphire_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/sapphire>],
        //     [<tag:forge:gems/sapphire>]
        // ],
        // <item:kubejs:yellow_garnet_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/yellow_garnet>],
        //     [<tag:forge:gems/yellow_garnet>]
        // ],
        // <item:kubejs:peridot_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/peridot>],
        //     [<tag:forge:gems/peridot>]
        // ],
        // <item:kubejs:red_garnet_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:gems/red_garnet>],
        //     [<tag:forge:gems/red_garnet>]
        // ],
        // <item:kubejs:bronze_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/bronze>],
        //     [<tag:forge:ingots/bronze>]
        // ],
        // <item:kubejs:steel_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/steel>],
        //     [<tag:forge:ingots/steel>]
        // ],
        // <item:kubejs:iron_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/iron>],
        //     [<tag:forge:ingots/iron>]
        // ],
        // <item:kubejs:refined_iron_plate> :
        // [
        //     [<tag:forge:hammer/sturdy>],
        //     [<tag:forge:ingots/refined_iron>],
        //     [<tag:forge:ingots/refined_iron>]
        // ],
        // <item:kubejs:iridium_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:ingots/iridium>],
        //     [<tag:forge:ingots/iridium>]
        // ],
        // <item:kubejs:iridium_alloy_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:ingots/iridium_alloy>],
        //     [<tag:forge:ingots/iridium_alloy>]
        // ],
        // <item:kubejs:diamond_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:gems/diamond>],
        //     [<tag:forge:gems/diamond>]
        // ],
        // <item:kubejs:platinum_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:ingots/platinum>],
        //     [<tag:forge:ingots/platinum>]
        // ],
        // <item:kubejs:emerald_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:gems/emerald>],
        //     [<tag:forge:gems/emerald>]
        // ],
        // <item:kubejs:obsidian_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<tag:forge:obsidian>],
        //     [<tag:forge:obsidian>]
        // ],
        // <item:kubejs:carbonado_plate> :
        // [
        //     [<tag:forge:hammer/strong>],
        //     [<item:carbonado:carbonado>],
        //     [<item:carbonado:carbonado>]
        // ],

        
        <item:kubejs:compressed_clay_ball> :
        [
            [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>],
            [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>]
        ],
        <item:kubejs:flint_gear> :
        [
            [<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>],
            [<item:minecraft:flint>, <item:minecraft:air>, <item:minecraft:flint>],
            [<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>]
        ],
        <item:minecraft:cobblestone> :
        [
            [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
            [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
            [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>]
        ],

        <item:minecraft:white_dye>*6 : [
            [<item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:orange_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:magenta_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:light_blue_dye>*6 : [
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:yellow_dye>*6 : [
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>]
        ],
        <item:minecraft:lime_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:pink_dye>*6 : [
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:light_gray_dye>*6 : [
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:gray_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:cyan_dye>*6 : [
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:purple_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>]
        ],
        <item:minecraft:blue_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:brown_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ],
        <item:minecraft:green_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
        ],
        <item:minecraft:red_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>]
        ],
        <item:minecraft:black_dye>*6 : [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:mysticalagriculture:dye_essence>, <item:mysticalagriculture:dye_essence>, <item:minecraft:air>],
            [<item:minecraft:air>, <item:minecraft:air>, <item:mysticalagriculture:dye_essence>]
        ]
    };

    for output, input in shapedRecipes {
        addShaped(output, input, false);
    }
}