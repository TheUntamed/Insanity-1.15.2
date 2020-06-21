#priority 0

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var shapelessRecipes as IIngredient[][IItemStack] = {

    <item:minecraft:orange_dye>*2 : [<item:minecraft:red_dye>, <item:minecraft:yellow_dye>],
    <item:minecraft:magenta_dye>*2 : [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>],
    <item:minecraft:magenta_dye>*3 : [<item:minecraft:blue_dye>, <item:minecraft:red_dye>, <item:minecraft:pink_dye>],
    <item:minecraft:magenta_dye>*4 : [<item:minecraft:blue_dye>, <item:minecraft:red_dye>, <item:minecraft:red_dye>, <item:minecraft:white_dye>],
    <item:minecraft:light_blue_dye>*2 : [<item:minecraft:blue_dye>, <item:minecraft:white_dye>],
    <item:minecraft:lime_dye>*2 : [<item:minecraft:green_dye>, <item:minecraft:white_dye>],
    <item:minecraft:pink_dye>*2 : [<item:minecraft:red_dye>, <item:minecraft:white_dye>],
    <item:minecraft:light_gray_dye>*2 : [<item:minecraft:gray_dye>, <item:minecraft:white_dye>],
    <item:minecraft:light_gray_dye>*3 : [<item:minecraft:black_dye>, <item:minecraft:white_dye>, <item:minecraft:white_dye>],
    <item:minecraft:gray_dye>*2 : [<item:minecraft:black_dye>, <item:minecraft:white_dye>],
    <item:minecraft:cyan_dye>*2 : [<item:minecraft:blue_dye>, <item:minecraft:green_dye>],
    <item:minecraft:purple_dye>*2 : [<item:minecraft:red_dye>, <item:minecraft:blue_dye>],
    <item:minecraft:black_dye>*2 : [<item:forbidden_arcanus:edelwood_oil>],
    <item:quark:limestone> : [<item:create:limestone>]

};

craftingTable.addShapeless("chest_to_minecraft.chest", <item:minecraft:chest>, [<tag:forge:chests/wooden>]);

craftingTable.addShapeless("tall_flower_to_orange_dye_2", <item:minecraft:orange_dye>*2, [<item:buzzierbees:bird_of_paradise>, <item:botania:pestle_and_mortar>]);
craftingTable.addShapeless("tall_flower_to_magenta_dye_2", <item:minecraft:magenta_dye>*2, [<item:minecraft:lilac>, <item:botania:pestle_and_mortar>]);
craftingTable.addShapeless("tall_flower_to_yellow_dye_2", <item:minecraft:yellow_dye>*2, [<item:minecraft:sunflower>, <item:botania:pestle_and_mortar>]);
craftingTable.addShapeless("tall_flower_to_pink_dye_2", <item:minecraft:pink_dye>*2, [<item:upgrade_aquatic:flowering_rush>, <item:botania:pestle_and_mortar>]);
craftingTable.addShapeless("tall_flower_to_pink_dye_2_2", <item:minecraft:pink_dye>*2, [<item:minecraft:peony>, <item:botania:pestle_and_mortar>]);
craftingTable.addShapeless("tall_flower_to_red_dye_2", <item:minecraft:red_dye>*2, [<item:minecraft:rose_bush>, <item:botania:pestle_and_mortar>]);

for output, input in shapelessRecipes {
    addShapeless(output, input, false);
}