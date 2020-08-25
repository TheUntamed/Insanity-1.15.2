#priority 8

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function addShapedMirroredRecipes() as void {
    // logger.info("Prio Test: add-shaped-mirrored");

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
}