#priority 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var shapedRecipes as IIngredient[][][IItemStack] = {
    
    /* 
    <item:> :
    [
        [,, ],
        [,, ],
        [,, ]
    ],
     */
    
        //Ingots to Plate with Hammer

    // <item:kubejs:gold_plate> :
    // [
    //     [<tag:forge:hammer/weak>],
    //     [<tag:forge:ingots/gold>],
    //     [<tag:forge:ingots/gold>]
    // ],

    // <item:kubejs:_plate> :
    // [
    //     [<tag:forge:hammer/sturdy>],
    //     [<tag:forge:ingots/>],
    //     [<tag:forge:ingots/>]
    // ],
    // <item:kubejs:_plate> :
    // [
    //     [<tag:forge:hammer/strong>],
    //     [<tag:forge:ingots/>],
    //     [<tag:forge:ingots/>]
    // ],
    <item:kubejs:iridium_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<tag:forge:ingots/iridium>],
        [<tag:forge:ingots/iridium>]
    ],
    <item:kubejs:diamond_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<tag:forge:gems/diamond>],
        [<tag:forge:gems/diamond>]
    ],
    <item:kubejs:platinum_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<tag:forge:ingots/platinum>],
        [<tag:forge:ingots/platinum>]
    ],
    <item:kubejs:emerald_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<tag:forge:gems/emerald>],
        [<tag:forge:gems/emerald>]
    ],
    <item:kubejs:obsidian_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<tag:forge:obsidian>],
        [<tag:forge:obsidian>]
    ],
    <item:kubejs:carbonado_plate> :
    [
        [<tag:forge:hammer/strong>],
        [<item:carbonado:carbonado>],
        [<item:carbonado:carbonado>]
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