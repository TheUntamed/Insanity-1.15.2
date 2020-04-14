#priority 10

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var shapelessRecipesWithRemove as IIngredient[][IItemStack] = {

    //wooden mortar
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

    //Mushrooms
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
    <item:botania:black_mushroom> : [<tag:forge:dyes/black>, <tag:forge:mushrooms>]

};

for output, input in shapelessRecipesWithRemove {
    addShapeless(output, input, true);
}