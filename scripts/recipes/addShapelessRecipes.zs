# 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][IItemStack] = {

    <item:minecraft:chest> :
    [<tag:forge:chests/wooden>]

};

for output, input in recipes {
    addShapeless(output, input, false);
}