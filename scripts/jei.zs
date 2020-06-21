#priority 600

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;

//Hide a single Item
//JEI.hideItem(IItemStack stack);

JEI.hideItem(<item:botania:red_dye>);
JEI.hideItem(<item:botania:green_dye>);
JEI.hideItem(<item:botania:purple_dye>);
JEI.hideItem(<item:botania:cyan_dye>);
JEI.hideItem(<item:botania:light_gray_dye>);
JEI.hideItem(<item:botania:gray_dye>);
JEI.hideItem(<item:botania:pink_dye>);
JEI.hideItem(<item:botania:lime_dye>);
JEI.hideItem(<item:botania:yellow_dye>);
JEI.hideItem(<item:botania:light_blue_dye>);
JEI.hideItem(<item:botania:magenta_dye>);
JEI.hideItem(<item:botania:orange_dye>);
JEI.hideItem(<item:botania:blue_dye>);
JEI.hideItem(<item:botania:brown_dye>);
JEI.hideItem(<item:botania:black_dye>);
JEI.hideItem(<item:botania:white_dye>);
JEI.hideItem(<item:botania:pebble>);
JEI.hideItem(<item:minecraft:wooden_sword>);
// JEI.hideItem(<item:minecraft:wooden_shovel>);
// JEI.hideItem(<item:minecraft:wooden_axe>);
// JEI.hideItem(<item:minecraft:wooden_pickaxe>);
// JEI.hideItem(<item:minecraft:wooden_hoe>);
JEI.hideItem(<item:minecraft:stone_sword>);
// JEI.hideItem(<item:minecraft:stone_shovel>);
// JEI.hideItem(<item:minecraft:stone_axe>);
// JEI.hideItem(<item:minecraft:stone_pickaxe>);
// JEI.hideItem(<item:minecraft:stone_hoe>);
// JEI.hideItem(<item:cyclic:sandstone_sword>);
// JEI.hideItem(<item:cyclic:sandstone_shovel>);
// JEI.hideItem(<item:cyclic:sandstone_axe>);
// JEI.hideItem(<item:cyclic:sandstone_pickaxe>);
// JEI.hideItem(<item:cyclic:sandstone_hoe>);
JEI.hideItem(<item:vanillahammers:wooden_hammer>);
JEI.hideItem(<item:vanillahammers:stone_hammer>);
JEI.hideItem(<item:vanillaexcavators:wooden_excavator>);
JEI.hideItem(<item:vanillaexcavators:stone_excavator>);
JEI.hideItem(<item:cyclic:emerald_helmet>);
JEI.hideItem(<item:cyclic:emerald_chestplate>);
JEI.hideItem(<item:cyclic:emerald_leggings>);
JEI.hideItem(<item:cyclic:emerald_boots>);
JEI.hideItem(<item:cyclic:emerald_sword>);
JEI.hideItem(<item:cyclic:emerald_pickaxe>);
JEI.hideItem(<item:cyclic:emerald_axe>);
JEI.hideItem(<item:cyclic:emerald_hoe>);
JEI.hideItem(<item:cyclic:emerald_shovel>);
JEI.hideItem(<item:pickletweaks:wooden_paxel>);
JEI.hideItem(<item:pickletweaks:stone_paxel>);
JEI.hideItem(<item:pickletweaks:iron_paxel>);
JEI.hideItem(<item:pickletweaks:golden_paxel>);
JEI.hideItem(<item:pickletweaks:diamond_paxel>);

JEI.hideItem(<item:mekanismtools:wood_paxel>);
JEI.hideItem(<item:mekanismtools:stone_paxel>);

JEI.hideItem(<item:pickletweaks:watering_can>);

//Hide a Category
//JEI.hideCategory(String category);
//JEI.hideCategory("minecraft:furnace");

//Add Information about an Item to the Info Category
//JEI.addInfo(IItemStack stack, String[] information);
//JEI.addInfo(<item:minecraft:diamond>, ["This is the first line!", "This is the second!", "third"]);
JEI.addInfo(<item:minecraft:flint>, ["Pick up 2 Stone Pebbles from the Ground, take 1 in each hand and smack them together to get Flint by chance.", " ", "Gravel doesn't drop flint anymore."]);
JEI.addInfo(<item:natural-progression:bone_shard>, ["Take a Flint into one a Bone into the other hand and smack them together to get a Bone Shard by chance."]);