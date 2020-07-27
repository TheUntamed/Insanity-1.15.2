#priority 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var shapedMirroredRecipes as IIngredient[][][IItemStack] = {

    /* 
    <item:> :
    [
        [, , ],
        [, , ],
        [, , ]
    ],
     */

};

for output, input in shapedMirroredRecipes {
    addShapedMirrored(output, input, false);
}