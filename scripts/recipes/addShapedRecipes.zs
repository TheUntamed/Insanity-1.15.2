# 0

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][][IItemStack] = {
    
    //pebbles to cobble
    <item:minecraft:cobblestone> :
    [
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>]
    ],
    <item:natural-progression:cobbled_granite> :
    [
        [<item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>],
        [<item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>],
        [<item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>, <item:natural-progression:granite_pebble>]
    ],
    <item:natural-progression:cobbled_andesite> :
    [
        [<item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>],
        [<item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>],
        [<item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>, <item:natural-progression:andesite_pebble>]
    ],
    <item:natural-progression:cobbled_diorite> :
    [
        [<item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>],
        [<item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>],
        [<item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>, <item:natural-progression:diorite_pebble>]
    ],
    <item:natural-progression:cobbled_sandstone> :
    [
        [<item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>],
        [<item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>],
        [<item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>, <item:natural-progression:sandstone_pebble>]
    ],
    <item:natural-progression:cobbled_red_sandstone> :
    [
        [<item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>],
        [<item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>],
        [<item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>, <item:natural-progression:red_sandstone_pebble>]
    ]

    //wooden mortar
    // <item:minecraft:blue_dye> : [[<item:bluepower:indigo_flower>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:red_dye> : [[<tag:botania:petals/red>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:green_dye> : [[<tag:botania:petals/green>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:purple_dye> : [[<tag:botania:petals/purple>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:cyan_dye> : [[<tag:botania:petals/cyan>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:light_gray_dye> : [[<tag:botania:petals/light_gray>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:gray_dye> : [[<tag:botania:petals/gray>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:pink_dye> : [[<tag:botania:petals/pink>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:lime_dye> : [[<tag:botania:petals/lime>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:yellow_dye> : [[<tag:botania:petals/yellow>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:light_blue_dye> : [[<tag:botania:petals/light_blue>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:magenta_dye> : [[<tag:botania:petals/magenta>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:orange_dye> : [[<tag:botania:petals/orange>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:blue_dye> : [[<tag:botania:petals/blue>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:brown_dye> : [[<tag:botania:petals/brown>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:black_dye> : [[<tag:botania:petals/black>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:whitw_dye> : [[<tag:botania:petals/white>, <item:botania:pestle_and_mortar>]],

    // <item:minecraft:red_dye> : [[<item:minecraft:rose_bush>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:pink_dye> : [[<item:minecraft:peony>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:yellow_dye> : [[<item:minecraft:sunflower>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:magenta_dye> : [[<item:minecraft:lilac>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:orange_dye> : [[<item:minecraft:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:blue_dye> : [[<item:minecraft:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:brown_dye> : [[<item:minecraft:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:black_dye> : [[<item:minecraft:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:whitw_dye> : [[<item:minecraft:>, <item:botania:pestle_and_mortar>]],

    // <item:minecraft:red_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:green_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:purple_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:cyan_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:light_gray_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:gray_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:pink_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:lime_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:yellow_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:light_blue_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:magentae_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:orange_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:blue_dye> : [[<item:minecraft:lapis_lazuli>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:brown_dye> : [[<item:minecraft:cocoa_beans>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:black_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:whitw_dye> : [[<item:>, <item:botania:pestle_and_mortar>]],

    // <item:minecraft:red_dye> : [[<item:minecraft:fire_coral>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:pink_dye> : [[<item:minecraft:brain_coral>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:yellow_dye> : [[<item:minecraft:horn_coral>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:magenta_dye> : [[<item:minecraft:bubble_coral>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:blue_dye> : [[<item:minecraft:tube_coral>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:red_dye> : [[<item:minecraft:fire_coral_fan>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:pink_dye> : [[<item:minecraft:brain_coral_fan>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:yellow_dye> : [[<item:minecraft:horn_coral_fan>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:magenta_dye> : [[<item:minecraft:bubble_coral_fan>, <item:botania:pestle_and_mortar>]],
    // <item:minecraft:blue_dye> : [[<item:minecraft:tube_coral_fan>, <item:botania:pestle_and_mortar>]]

};

for output, input in recipes {
    addShaped(output, input, false);
}