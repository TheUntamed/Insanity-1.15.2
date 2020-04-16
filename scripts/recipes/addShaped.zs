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