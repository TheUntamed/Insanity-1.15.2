#priority 11

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var shapedRecipesWithRemove as IIngredient[][][IItemStack] = {

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

    //Floral Powder Cleanup

    <item:botania:cosmetic_four_leaf_clover> :
    [
        [<tag:forge:dyes/white>, <tag:forge:dyes/white>, <tag:forge:dyes/white>],
        [<tag:forge:dyes/white>, <item:botania:mana_string>, <tag:forge:dyes/white>],
        [<tag:forge:dyes/white>, <tag:forge:dyes/white>, <tag:forge:dyes/white>]
    ],
    <item:botania:cosmetic_clock_eye> :
    [
        [<tag:forge:dyes/orange>, <tag:forge:dyes/orange>, <tag:forge:dyes/orange>],
        [<tag:forge:dyes/orange>, <item:botania:mana_string>, <tag:forge:dyes/orange>],
        [<tag:forge:dyes/orange>, <tag:forge:dyes/orange>, <tag:forge:dyes/orange>]
    ],
    <item:botania:cosmetic_unicorn_horn> :
    [
        [<tag:forge:dyes/magenta>, <tag:forge:dyes/magenta>, <tag:forge:dyes/magenta>],
        [<tag:forge:dyes/magenta>, <item:botania:mana_string>, <tag:forge:dyes/magenta>],
        [<tag:forge:dyes/magenta>, <tag:forge:dyes/magenta>, <tag:forge:dyes/magenta>]
    ],
    <item:botania:cosmetic_devil_horns> :
    [
        [<tag:forge:dyes/light_blue>, <tag:forge:dyes/light_blue>, <tag:forge:dyes/light_blue>],
        [<tag:forge:dyes/light_blue>, <item:botania:mana_string>, <tag:forge:dyes/light_blue>],
        [<tag:forge:dyes/light_blue>, <tag:forge:dyes/light_blue>, <tag:forge:dyes/light_blue>]
    ],
    <item:botania:cosmetic_hyper_plus> :
    [
        [<tag:forge:dyes/yellow>, <tag:forge:dyes/yellow>, <tag:forge:dyes/yellow>],
        [<tag:forge:dyes/yellow>, <item:botania:mana_string>, <tag:forge:dyes/yellow>],
        [<tag:forge:dyes/yellow>, <tag:forge:dyes/yellow>, <tag:forge:dyes/yellow>]
    ],
    <item:botania:cosmetic_botanist_emblem> :
    [
        [<tag:forge:dyes/lime>, <tag:forge:dyes/lime>, <tag:forge:dyes/lime>],
        [<tag:forge:dyes/lime>, <item:botania:mana_string>, <tag:forge:dyes/lime>],
        [<tag:forge:dyes/lime>, <tag:forge:dyes/lime>, <tag:forge:dyes/lime>]
    ],
    <item:botania:cosmetic_ancient_mask> :
    [
        [<tag:forge:dyes/pink>, <tag:forge:dyes/pink>, <tag:forge:dyes/pink>],
        [<tag:forge:dyes/pink>, <item:botania:mana_string>, <tag:forge:dyes/pink>],
        [<tag:forge:dyes/pink>, <tag:forge:dyes/pink>, <tag:forge:dyes/pink>]
    ],
    <item:botania:cosmetic_eerie_mask> :
    [
        [<tag:forge:dyes/light_gray>, <tag:forge:dyes/light_gray>, <tag:forge:dyes/light_gray>],
        [<tag:forge:dyes/light_gray>, <item:botania:mana_string>, <tag:forge:dyes/light_gray>],
        [<tag:forge:dyes/light_gray>, <tag:forge:dyes/light_gray>, <tag:forge:dyes/light_gray>]
    ],
    <item:botania:cosmetic_alien_antenna> :
    [
        [<tag:forge:dyes/gray>, <tag:forge:dyes/gray>, <tag:forge:dyes/gray>],
        [<tag:forge:dyes/gray>, <item:botania:mana_string>, <tag:forge:dyes/gray>],
        [<tag:forge:dyes/gray>, <tag:forge:dyes/gray>, <tag:forge:dyes/gray>]
    ],
    <item:botania:cosmetic_anaglyph_glasses> :
    [
        [<tag:forge:dyes/cyan>, <tag:forge:dyes/cyan>, <tag:forge:dyes/cyan>],
        [<tag:forge:dyes/cyan>, <item:botania:mana_string>, <tag:forge:dyes/cyan>],
        [<tag:forge:dyes/cyan>, <tag:forge:dyes/cyan>, <tag:forge:dyes/cyan>]
    ],
    <item:botania:cosmetic_orange_shades> :
    [
        [<tag:forge:dyes/purple>, <tag:forge:dyes/purple>, <tag:forge:dyes/purple>],
        [<tag:forge:dyes/purple>, <item:botania:mana_string>, <tag:forge:dyes/purple>],
        [<tag:forge:dyes/purple>, <tag:forge:dyes/purple>, <tag:forge:dyes/purple>]
    ],
    <item:botania:cosmetic_groucho_glasses> :
    [
        [<tag:forge:dyes/blue>, <tag:forge:dyes/blue>, <tag:forge:dyes/blue>],
        [<tag:forge:dyes/blue>, <item:botania:mana_string>, <tag:forge:dyes/blue>],
        [<tag:forge:dyes/blue>, <tag:forge:dyes/blue>, <tag:forge:dyes/blue>]
    ],
    <item:botania:cosmetic_thick_eyebrows> :
    [
        [<tag:forge:dyes/brown>, <tag:forge:dyes/brown>, <tag:forge:dyes/brown>],
        [<tag:forge:dyes/brown>, <item:botania:mana_string>, <tag:forge:dyes/brown>],
        [<tag:forge:dyes/brown>, <tag:forge:dyes/brown>, <tag:forge:dyes/brown>]
    ],
    <item:botania:cosmetic_lusitanic_shield> :
    [
        [<tag:forge:dyes/green>, <tag:forge:dyes/green>, <tag:forge:dyes/green>],
        [<tag:forge:dyes/green>, <item:botania:mana_string>, <tag:forge:dyes/green>],
        [<tag:forge:dyes/green>, <tag:forge:dyes/green>, <tag:forge:dyes/green>]
    ],
    <item:botania:cosmetic_tiny_potato_mask> :
    [
        [<tag:forge:dyes/red>, <tag:forge:dyes/red>, <tag:forge:dyes/red>],
        [<tag:forge:dyes/red>, <item:botania:mana_string>, <tag:forge:dyes/red>],
        [<tag:forge:dyes/red>, <tag:forge:dyes/red>, <tag:forge:dyes/red>]
    ],
    <item:botania:cosmetic_questgiver_mark> :
    [
        [<tag:forge:dyes/black>, <tag:forge:dyes/black>, <tag:forge:dyes/black>],
        [<tag:forge:dyes/black>, <item:botania:mana_string>, <tag:forge:dyes/black>],
        [<tag:forge:dyes/black>, <tag:forge:dyes/black>, <tag:forge:dyes/black>]
    ],

    //Woodcutter/Sawmill

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
    ],
    <item:minecraft:clay> :
    [
        [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>],
        [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>],
        [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>]
    ],
    <item:minecraft:glowstone> :
    [
        [<item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>],
        [<item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>],
        [<item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>]
    ],
    <item:minecraft:snow_block> :
    [
        [<item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>],
        [<item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>],
        [<item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>]
    ],
    <item:minecraft:bricks> :
    [
        [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
        [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
        [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]
    ],
    <item:minecraft:magma_block> :
    [
        [<item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>],
        [<item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>],
        [<item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>]
    ],
    <item:minecraft:quartz_block> :
    [
        [<item:minecraft:quartz_block>, <item:minecraft:quartz_block>, <item:minecraft:quartz_block>],
        [<item:minecraft:quartz_block>, <item:minecraft:quartz_block>, <item:minecraft:quartz_block>],
        [<item:minecraft:quartz_block>, <item:minecraft:quartz_block>, <item:minecraft:quartz_block>]
    ],
    <item:minecraft:iron_bars>*8 :
    [
        [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
        [<tag:forge:rods/iron>, <tag:forge:rods/iron>, <tag:forge:rods/iron>],
        [<tag:forge:rods/iron>, <tag:forge:rods/iron>, <tag:forge:rods/iron>]
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

for output, input in shapedRecipesWithRemove {
    addShaped(output, input, true);
}