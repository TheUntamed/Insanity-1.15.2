#priority 11

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
    
    // Immersive Engineering
    <item:immersiveengineering:alloybrick>*2 :
    [
        [<tag:forge:sandstone>, <item:kubejs:fire_clay_brick>],
        [<item:kubejs:fire_clay_brick>, <tag:forge:sandstone>]
    ],

};

for output, input in shapedMirroredRecipes {
    addShapedMirrored(output, input, true);
}