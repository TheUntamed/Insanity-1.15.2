#priority 10

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function removeAndAddShapelessRecipes() as void {
    logger.info("Prio Test: remove-and-add-shapeless");

    var shapelessRecipesWithRemove as IIngredient[][IItemStack] = {

        // Lycanites Mobs
        <item:lycanitesmobs:equipmentforge_lesser> : [<item:minecraft:crafting_table>, <item:pickletweaks:flint_axe>],
        <item:lycanitesmobs:equipmentforge_greater> : [<item:lycanitesmobs:equipmentforge_lesser>, <item:minecraft:iron_axe>],
        <item:lycanitesmobs:equipmentforge_master> : [<item:lycanitesmobs:equipmentforge_greater>, <item:minecraft:diamond_axe>],

        // wooden mortar
        <item:minecraft:red_dye> : [<tag:forge:colorant/red>, <item:botania:pestle_and_mortar>],
        <item:minecraft:green_dye> : [<tag:forge:colorant/green>, <item:botania:pestle_and_mortar>],
        <item:minecraft:purple_dye> : [<tag:forge:colorant/purple>, <item:botania:pestle_and_mortar>],
        <item:minecraft:cyan_dye> : [<tag:forge:colorant/cyan>, <item:botania:pestle_and_mortar>],
        <item:minecraft:light_gray_dye> : [<tag:forge:colorant/light_gray>, <item:botania:pestle_and_mortar>],
        <item:minecraft:gray_dye> : [<tag:forge:colorant/gray>, <item:botania:pestle_and_mortar>],
        <item:minecraft:pink_dye> : [<tag:forge:colorant/pink>, <item:botania:pestle_and_mortar>],
        <item:minecraft:lime_dye> : [<tag:forge:colorant/lime>, <item:botania:pestle_and_mortar>],
        <item:minecraft:yellow_dye> : [<tag:forge:colorant/yellow>, <item:botania:pestle_and_mortar>],
        <item:minecraft:light_blue_dye> : [<tag:forge:colorant/light_blue>, <item:botania:pestle_and_mortar>],
        <item:minecraft:magenta_dye> : [<tag:forge:colorant/magenta>, <item:botania:pestle_and_mortar>],
        <item:minecraft:orange_dye> : [<tag:forge:colorant/orange>, <item:botania:pestle_and_mortar>],
        <item:minecraft:blue_dye> : [<tag:forge:colorant/blue>, <item:botania:pestle_and_mortar>],
        <item:minecraft:brown_dye> : [<tag:forge:colorant/brown>, <item:botania:pestle_and_mortar>],
        <item:minecraft:black_dye> : [<tag:forge:colorant/black>, <item:botania:pestle_and_mortar>],
        <item:minecraft:white_dye> : [<tag:forge:colorant/white>, <item:botania:pestle_and_mortar>],

        // Mushrooms
        <item:botania:white_mushroom> : [<tag:forge:dyes/white>, <tag:forge:mushrooms>],
        <item:botania:orange_mushroom> : [<tag:forge:dyes/orange>, <tag:forge:mushrooms>],
        <item:botania:magenta_mushroom> : [<tag:forge:dyes/magenta>, <tag:forge:mushrooms>],
        <item:botania:light_blue_mushroom> : [<tag:forge:dyes/light_blue>, <tag:forge:mushrooms>],
        <item:botania:yellow_mushroom> : [<tag:forge:dyes/yellow>, <tag:forge:mushrooms>],
        <item:botania:lime_mushroom> : [<tag:forge:dyes/lime>, <tag:forge:mushrooms>],
        <item:botania:pink_mushroom> : [<tag:forge:dyes/pink>, <tag:forge:mushrooms>],
        <item:botania:light_gray_mushroom> : [<tag:forge:dyes/light_gray>, <tag:forge:mushrooms>],
        <item:botania:gray_mushroom> : [<tag:forge:dyes/gray>, <tag:forge:mushrooms>],
        <item:botania:cyan_mushroom> : [<tag:forge:dyes/cyan>, <tag:forge:mushrooms>],
        <item:botania:purple_mushroom> : [<tag:forge:dyes/purple>, <tag:forge:mushrooms>],
        <item:botania:blue_mushroom> : [<tag:forge:dyes/blue>, <tag:forge:mushrooms>],
        <item:botania:brown_mushroom> : [<tag:forge:dyes/brown>, <tag:forge:mushrooms>],
        <item:botania:green_mushroom> : [<tag:forge:dyes/green>, <tag:forge:mushrooms>],
        <item:botania:red_mushroom> : [<tag:forge:dyes/red>, <tag:forge:mushrooms>],
        <item:botania:black_mushroom> : [<tag:forge:dyes/black>, <tag:forge:mushrooms>],

        // Buttons
        <item:quark:iron_button> : [<tag:forge:nuggets/iron>],
        <item:quark:gold_button> : [<tag:forge:nuggets/gold>],

        // Compression
        <item:minecraft:clay> : [<item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>],
        <item:minecraft:glowstone> : [<item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>, <item:minecraft:glowstone_dust>],
        <item:minecraft:snow_block> : [<item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>],
        <item:minecraft:bricks> : [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
        <item:minecraft:magma_block> : [<item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>, <item:minecraft:magma_cream>],
        <item:minecraft:quartz_block> : [<item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>],
        <item:kubejs:fire_clay_bricks> : [<item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>, <item:kubejs:fire_clay_brick>]

    };

    for output, input in shapelessRecipesWithRemove {
        addShapeless(output, input, true);
    }
}