#priority 11

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipesWithRemove as IIngredient[][IItemStack] = {

        <item:botania:white_mushroom> :
        [<tag:forge:dyes/white>, <tag:forge:mushrooms>],
    <item:botania:orange_mushroom> :
        [<tag:forge:dyes/orange>, <tag:forge:mushrooms>],
    <item:botania:magenta_mushroom> :
        [<tag:forge:dyes/magenta>, <tag:forge:mushrooms>],
    <item:botania:light_blue_mushroom> :
        [<tag:forge:dyes/light_blue>, <tag:forge:mushrooms>],
    <item:botania:yellow_mushroom> :
        [<tag:forge:dyes/yellow>, <tag:forge:mushrooms>],
    <item:botania:lime_mushroom> :
        [<tag:forge:dyes/lime>, <tag:forge:mushrooms>],
    <item:botania:pink_mushroom> :
        [<tag:forge:dyes/pink>, <tag:forge:mushrooms>],
    <item:botania:light_gray_mushroom> :
        [<tag:forge:dyes/light_gray>, <tag:forge:mushrooms>],
    <item:botania:gray_mushroom> :
        [<tag:forge:dyes/gray>, <tag:forge:mushrooms>],
    <item:botania:cyan_mushroom> :
        [<tag:forge:dyes/cyan>, <tag:forge:mushrooms>],
    <item:botania:purple_mushroom> :
        [<tag:forge:dyes/purple>, <tag:forge:mushrooms>],
    <item:botania:blue_mushroom> :
        [<tag:forge:dyes/blue>, <tag:forge:mushrooms>],
    <item:botania:brown_mushroom> :
        [<tag:forge:dyes/brown>, <tag:forge:mushrooms>],
    <item:botania:green_mushroom> :
        [<tag:forge:dyes/green>, <tag:forge:mushrooms>],
    <item:botania:red_mushroom> :
        [<tag:forge:dyes/red>, <tag:forge:mushrooms>],
    <item:botania:black_mushroom> :
        [<tag:forge:dyes/black>, <tag:forge:mushrooms>]

};

for output, input in recipesWithRemove {
    addShapeless(output, input, true);
}