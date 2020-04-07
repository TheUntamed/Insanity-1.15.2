# 600

import mods.jei.JEI;

//Hide a single Item
//mods.jei.JEI.hideItem(IItemStack stack);
//mods.jei.JEI.hideItem(<item:minecraft:stone>);

//Hide a Category
//mods.jei.JEI.hideCategory(String category);
//mods.jei.JEI.hideCategory("minecraft:furnace");

//Add Information about an Item to the Info Category
//mods.jei.JEI.addInfo(IItemStack stack, String[] information);
//mods.jei.JEI.addInfo(<item:minecraft:diamond>, ["This is the first line!", "This is the second!", "third"]);
JEI.addInfo(<item:minecraft:flint>, ["Pick up 2 Stone Pebbles from the Ground, take 1 in each hand and smack them together to get flint by chance."]);
//mods.jei.JEI.addInfo(<item:natural-progression:stone_pebble>, ["Pick up 2 Stone Pebbles from the Ground, take 1 in each hand and smack them together to get flint by chance."]);