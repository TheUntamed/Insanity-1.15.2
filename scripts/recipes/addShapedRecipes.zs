#priority 0

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
};

var recipesWithRemove as IIngredient[][][IItemStack] = {

    //pebbles to cobble
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
    ],

    //Ingots to Plate with Hammer

    //Plates to Block

    //wooden mortar
    <item:minecraft:red_dye> : [[<tag:forge:colorant/red>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:green_dye> : [[<tag:forge:colorant/green>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:purple_dye> : [[<tag:forge:colorant/purple>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:cyan_dye> : [[<tag:forge:colorant/cyan>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:light_gray_dye> : [[<tag:forge:colorant/light_gray>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:gray_dye> : [[<tag:forge:colorant/gray>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:pink_dye> : [[<tag:forge:colorant/pink>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:lime_dye> : [[<tag:forge:colorant/lime>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:yellow_dye> : [[<tag:forge:colorant/yellow>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:light_blue_dye> : [[<tag:forge:colorant/light_blue>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:magenta_dye> : [[<tag:forge:colorant/magenta>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:orange_dye> : [[<tag:forge:colorant/orange>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:blue_dye> : [[<tag:forge:colorant/blue>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:brown_dye> : [[<tag:forge:colorant/brown>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:black_dye> : [[<tag:forge:colorant/black>, <item:botania:pestle_and_mortar>]],
    <item:minecraft:white_dye> : [[<tag:forge:colorant/white>, <item:botania:pestle_and_mortar>]],

    //Others
    <item:minecraft:piston> :
    [
        [<tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>],
        [<item:quark:sturdy_stone>, <item:mapperbase:iron_rod>, <item:quark:sturdy_stone>],
        [<item:quark:sturdy_stone>, <item:minecraft:redstone>, <item:quark:sturdy_stone>]
    ],
    <item:angelring:itemring> :
    [
        [<item:minecraft:feather>, <item:forbidden_arcanus:arcane_gold_ingot>, <item:minecraft:feather>],
        [<item:forbidden_arcanus:arcane_gold_ingot>, <item:angelring:itemdiamondring>, <item:forbidden_arcanus:arcane_gold_ingot>],
        [<item:minecraft:blaze_rod>, <item:forbidden_arcanus:arcane_gold_ingot>, <item:minecraft:blaze_rod>]
    ],
    <item:minecraft:campfire> :
    [
        [<item:minecraft:air>, <item:minecraft:torch>, <item:minecraft:air>],
        [<item:minecraft:torch>, <tag:minecraft:coals>, <item:minecraft:torch>],
        [<tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>]
    ]

/* 
    <item:> :
    [
        [, , ],
        [, , ],
        [, , ]
    ],
     */

};

for output, input in recipes {
    addShaped(output, input, false);
}

for output, input in recipesWithRemove {
    addShaped(output, input, true);
}