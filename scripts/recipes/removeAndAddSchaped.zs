#priority 12

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

logger.info("Prio Test: remove-and-add-shaped");

var to_blast_furnace = <item:minecraft:furnace> | <item:brickfurnace:brick_blast_furnace>;

var shapedRecipesWithRemove as IIngredient[][][IItemStack] = {

    /* 
    <item:> :
    [
        [, , ],
        [, , ],
        [, , ]
    ],
     */

    // Druidcraft
    <item:druidcraft:bone_pickaxe> :
    [
        [<item:natural-progression:bone_shard>, <tag:forge:bones>, <item:natural-progression:bone_shard>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:druidcraft:bone_axe> :
    [
        [<item:natural-progression:bone_shard>, <tag:forge:bones>, <item:minecraft:air>],
        [<item:natural-progression:bone_shard>, <tag:forge:rods/wooden>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:druidcraft:bone_sword> :
    [
        [<item:minecraft:air>, <item:natural-progression:bone_shard>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:bones>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:druidcraft:bone_hoe> :
    [
        [<item:natural-progression:bone_shard>, <tag:forge:bones>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:druidcraft:bone_sickle> :
    [
        [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
        [<item:minecraft:air>, <item:xreliquary:rib_bone>, <item:minecraft:air>],
        [<tag:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
    ],

    // Silents Mechanisms
    <item:silents_mechanisms:alloy_machine_frame>*2 :
    [
        [<tag:forge:ingots/redstone_alloy>, <tag:forge:glass>, <tag:forge:ingots/redstone_alloy>],
        [<tag:forge:glass>, <tag:forge:ingots/steel>, <tag:forge:glass>],
        [<tag:forge:ingots/redstone_alloy>, <tag:forge:glass>, <tag:forge:ingots/redstone_alloy>]
    ],

    // Minecolonies
    <item:minecolonies:blockhutminer>*2 :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:minecraft:iron_pickaxe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutfarmer>*2 :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:minecraft:iron_hoe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutlumberjack>*2 :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:minecraft:iron_axe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutlumberjack> :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:pickletweaks:flint_axe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutminer> :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:pickletweaks:flint_pickaxe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutfarmer> :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <item:pickletweaks:flint_hoe>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecolonies:blockhutsawmill> :
    [
        [<tag:minecraft:planks>, <item:structurize:sceptergold>, <tag:minecraft:planks>],
        [<item:pickletweaks:flint_axe>, <tag:forge:saw>, <item:minecraft:iron_axe>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],

    //Chests
    <item:minecraft:chest> :
    [
        [<tag:forge:planks_without_chest>, <tag:forge:planks_without_chest>, <tag:forge:planks_without_chest>],
        [<tag:forge:planks_without_chest>, <item:quark:iron_button>, <tag:forge:planks_without_chest>],
        [<tag:forge:planks_without_chest>, <tag:forge:planks_without_chest>, <tag:forge:planks_without_chest>]
    ],
    <item:quark:oak_chest> :
    [
        [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>],
        [<item:minecraft:oak_planks>, <item:quark:iron_button>, <item:minecraft:oak_planks>],
        [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]
    ],
    <item:quark:birch_chest> :
    [
        [<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>],
        [<item:minecraft:birch_planks>, <item:quark:iron_button>, <item:minecraft:birch_planks>],
        [<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]
    ],
    <item:quark:spruce_chest> :
    [
        [<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>],
        [<item:minecraft:spruce_planks>, <item:quark:iron_button>, <item:minecraft:spruce_planks>],
        [<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]
    ],
    <item:quark:jungle_chest> :
    [
        [<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>],
        [<item:minecraft:jungle_planks>, <item:quark:iron_button>, <item:minecraft:jungle_planks>],
        [<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]
    ],
    <item:quark:acacia_chest> :
    [
        [<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>],
        [<item:minecraft:acacia_planks>, <item:quark:iron_button>, <item:minecraft:acacia_planks>],
        [<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]
    ],
    <item:quark:dark_oak_chest> :
    [
        [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>],
        [<item:minecraft:dark_oak_planks>, <item:quark:iron_button>, <item:minecraft:dark_oak_planks>],
        [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]
    ],
    <item:quark:driftwood_chest> :
    [
        [<item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>],
        [<item:upgrade_aquatic:driftwood_planks>, <item:quark:iron_button>, <item:upgrade_aquatic:driftwood_planks>],
        [<item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>]
    ],
    <item:quark:poise_chest> :
    [
        [<item:endergetic:poise_planks>, <item:endergetic:poise_planks>, <item:endergetic:poise_planks>],
        [<item:endergetic:poise_planks>, <item:quark:iron_button>, <item:endergetic:poise_planks>],
        [<item:endergetic:poise_planks>, <item:endergetic:poise_planks>, <item:endergetic:poise_planks>]
    ],
    <item:quark:hive_chest> :
    [
        [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>],
        [<item:buzzierbees:hive_planks>, <item:quark:iron_button>, <item:buzzierbees:hive_planks>],
        [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>]
    ],
    <item:nethercraft:glowood_chest> :
    [
        [<item:nethercraft:glowood_planks>, <item:nethercraft:glowood_planks>, <item:nethercraft:glowood_planks>],
        [<item:nethercraft:glowood_planks>, <item:quark:iron_button>, <item:nethercraft:glowood_planks>],
        [<item:nethercraft:glowood_planks>, <item:nethercraft:glowood_planks>, <item:nethercraft:glowood_planks>]
    ],
    <item:midnight:shadowroot_chest> :
    [
        [<item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>],
        [<item:midnight:shadowroot_planks>, <item:quark:iron_button>, <item:midnight:shadowroot_planks>],
        [<item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>]
    ],
    <item:midnight:dark_willow_chest> :
    [
        [<item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>],
        [<item:midnight:dark_willow_planks>, <item:quark:iron_button>, <item:midnight:dark_willow_planks>],
        [<item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>]
    ],
    <item:midnight:dead_wood_chest> :
    [
        [<item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>],
        [<item:midnight:dead_wood_planks>, <item:quark:iron_button>, <item:midnight:dead_wood_planks>],
        [<item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>]
    ],
    <item:midnight:nightshroom_chest> :
    [
        [<item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>],
        [<item:midnight:nightshroom_planks>, <item:quark:iron_button>, <item:midnight:nightshroom_planks>],
        [<item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>]
    ],
    <item:midnight:dewshroom_chest> :
    [
        [<item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>],
        [<item:midnight:dewshroom_planks>, <item:quark:iron_button>, <item:midnight:dewshroom_planks>],
        [<item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>]
    ],
    <item:midnight:viridshroom_chest> :
    [
        [<item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>],
        [<item:midnight:viridshroom_planks>, <item:quark:iron_button>, <item:midnight:viridshroom_planks>],
        [<item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>]
    ],
    <item:midnight:bogshroom_chest> :
    [
        [<item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>],
        [<item:midnight:bogshroom_planks>, <item:quark:iron_button>, <item:midnight:bogshroom_planks>],
        [<item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>]
    ],

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

    // //Woodcutter/Sawmill
    // <item:corail_woodcutter:oak_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]
    // ],
    // <item:corail_woodcutter:birch_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]
    // ],
    // <item:corail_woodcutter:spruce_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]
    // ],
    // <item:corail_woodcutter:dark_oak_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]
    // ],
    // <item:corail_woodcutter:acacia_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]
    // ],
    // <item:corail_woodcutter:jungle_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]
    // ],
    // <item:corail_woodcutter:willow_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>]
    // ],
    // <item:corail_woodcutter:fir_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>]
    // ],
    // <item:corail_woodcutter:umbran_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>]
    // ],
    // <item:corail_woodcutter:palm_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>]
    // ],
    // <item:corail_woodcutter:magic_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>]
    // ],
    // <item:corail_woodcutter:hellbark_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>]
    // ],
    // <item:corail_woodcutter:redwood_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>]
    // ],
    // <item:corail_woodcutter:mahogany_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>]
    // ],
    // <item:corail_woodcutter:jacaranda_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>]
    // ],
    // <item:corail_woodcutter:dead_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>]
    // ],
    // <item:corail_woodcutter:cherry_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>]
    // ],
    // <item:corail_woodcutter:shadowroot_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>, <item:midnight:shadowroot_planks>]
    // ],
    // <item:corail_woodcutter:nightshroom_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>, <item:midnight:nightshroom_planks>]
    // ],
    // <item:corail_woodcutter:viridshroom_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>, <item:midnight:viridshroom_planks>]
    // ],
    // <item:corail_woodcutter:bogshroom_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>, <item:midnight:bogshroom_planks>]
    // ],
    // <item:corail_woodcutter:dead_wood_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>, <item:midnight:dead_wood_planks>]
    // ],
    // <item:corail_woodcutter:dewshroom_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>, <item:midnight:dewshroom_planks>]
    // ],
    // <item:corail_woodcutter:dark_willow_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>]
    // ],
    // <item:corail_woodcutter:dark_willow_woodcutter> :
    // [
    //     [<item:minecraft:air>, <tag:forge:gear>, <item:minecraft:air>],
    //     [<item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>, <item:midnight:dark_willow_planks>]
    // ],

    <item:minecraft:stonecutter> :
    [
        [<item:minecraft:air>, <tag:forge:gear/strong>, <item:minecraft:air>],
        [<tag:forge:stone>, <tag:forge:stone>, <tag:forge:stone>]
    ],

    //Others
    <item:cyclic:scythe_brush> :
    [
        [<item:minecraft:air>, <tag:forge:nuggets/iron>, <item:minecraft:iron_hoe>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <tag:forge:nuggets/iron>],
        [<tag:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
    ],
    <item:cyclic:scythe_leaves> :
    [
        [<item:minecraft:air>, <tag:forge:nuggets/steel>, <item:mekanismtools:steel_hoe>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <tag:forge:nuggets/steel>],
        [<tag:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
    ],
    <item:minecraft:blast_furnace> :
    [
        [<tag:forge:ingots/iron>, <tag:forge:ingots/iron>, <tag:forge:ingots/iron>],
        [<tag:forge:ingots/iron>, to_blast_furnace, <tag:forge:ingots/iron>],
        [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]
    ],
    <item:minecraft:smoker> :
    [
        [<item:minecraft:air>, <tag:minecraft:logs>, <item:minecraft:air>],
        [<tag:minecraft:logs>, <item:brickfurnace:brick_smoker>, <tag:minecraft:logs>],
        [<item:minecraft:air>, <tag:minecraft:logs>, <item:minecraft:air>]
    ],
    <item:brickfurnace:brick_furnace> :
    [
        [<item:kubejs:fire_clay_bricks>, <item:kubejs:fire_clay_bricks>, <item:kubejs:fire_clay_bricks>],
        [<item:kubejs:fire_clay_bricks>, <item:minecraft:air>, <item:kubejs:fire_clay_bricks>],
        [<item:kubejs:fire_clay_bricks>, <item:kubejs:fire_clay_bricks>, <item:kubejs:fire_clay_bricks>]
    ],
    <item:minecraft:furnace> :
    [
        [<item:quark:sturdy_stone>, <item:quark:sturdy_stone>, <item:quark:sturdy_stone>],
        [<item:quark:sturdy_stone>, <item:brickfurnace:brick_furnace>, <item:quark:sturdy_stone>],
        [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]
    ],
    <item:minecraft:piston> :
    [
        [<tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>, <tag:minecraft:wooden_slabs>],
        [<item:quark:sturdy_stone>, <tag:forge:rods/iron>, <item:quark:sturdy_stone>],
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
    <item:minecraft:iron_bars>*8 :
    [
        [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
        [<tag:forge:rods/iron>, <tag:forge:rods/iron>, <tag:forge:rods/iron>],
        [<tag:forge:rods/iron>, <tag:forge:rods/iron>, <tag:forge:rods/iron>]
    ],
    <item:minecraft:flint_and_steel> :
    [
        [<tag:forge:ingots/steel>, <item:minecraft:air>],
        [<item:minecraft:air>, <item:minecraft:flint>]
    ],
    <item:minecraft:shears> :
    [
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <tag:forge:ingots/iron>],
        [<tag:forge:rods/wooden>, <tag:forge:ingots/iron>, <tag:forge:rods/wooden>],
        [<tag:forge:string>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:aiotbotania:livingwood_shears> :
    [
        [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:botania:livingwood>],
        [<item:botania:livingwood_twig>, <item:botania:livingwood>, <item:botania:livingwood_twig>],
        [<tag:forge:string>, <item:botania:livingwood_twig>, <item:minecraft:air>]
    ],
    <item:aiotbotania:livingrock_shears> :
    [
        [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:botania:livingrock>],
        [<item:botania:livingwood_twig>, <item:botania:livingrock>, <item:botania:livingwood_twig>],
        [<tag:forge:string>, <item:botania:livingwood_twig>, <item:minecraft:air>]
    ],
    <item:botania:manasteel_shears> :
    [
        [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:botania:manasteel_ingot>],
        [<item:botania:livingwood_twig>, <item:botania:manasteel_ingot>, <item:botania:livingwood_twig>],
        [<tag:forge:string>, <item:botania:livingwood_twig>, <item:minecraft:air>]
    ],
    <item:botania:elementium_shears> :
    [
        [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:botania:elementium_ingot>],
        [<item:botania:livingwood_twig>, <item:botania:elementium_ingot>, <item:botania:livingwood_twig>],
        [<tag:forge:string>, <item:botania:livingwood_twig>, <item:minecraft:air>]
    ],
    <item:cyclic:shears_obsidian> :
    [
        [<item:minecraft:air>, <tag:forge:rods/iron>, <tag:forge:obsidian>],
        [<tag:forge:rods/iron>, <tag:forge:obsidian>, <tag:forge:rods/iron>],
        [<tag:forge:string>, <tag:forge:rods/iron>, <item:minecraft:air>]
    ],
    <item:midnight:rockshroom_shears> :
    [
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:midnight:rockshroom_clump>],
        [<tag:forge:rods/wooden>, <item:midnight:rockshroom_clump>, <tag:forge:rods/wooden>],
        [<tag:forge:string>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ],
    <item:cyclic:wrench> :
    [
        [<item:minecraft:air>, <tag:forge:stone>, <item:aiotbotania:livingwood_hoe>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <tag:forge:stone>],
        [<tag:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
    ]

};

for output, input in shapedRecipesWithRemove {
    addShaped(output, input, true);
}