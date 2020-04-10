# 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][IItemStack] = {

    <item:minecraft:chest> :
    [<tag:forge:chests/wooden>]

};

var recipesWithRemove as IIngredient[][IItemStack] = {

};

for output, input in recipes {
    addShapeless(output, input, false);
}

for output, input in recipesWithRemove {
    addShapeless(output, input, true);
}