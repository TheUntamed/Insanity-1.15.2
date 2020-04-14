#priority 0

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][][IItemStack] = {
    
    //pebbles to cobble
    <item:minecraft:cobblestone> :
    [
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>],
        [<item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>, <item:natural-progression:stone_pebble>]
    ],
};

/* 
    <item:> :
    [
        [, , ],
        [, , ],
        [, , ]
    ],
     */

for output, input in recipes {
    addShaped(output, input, false);
}