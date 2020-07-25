#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;

for item in <tag:forge:disabled>.items {
	addInfoAndHideItem(item);
}

for item in <tag:create:crushed_ores>.items {
	addInfoAndHideItem(item);
}

addInfoAndHideItem(<item:botania:red_dye>);
addInfoAndHideItem(<item:botania:green_dye>);
addInfoAndHideItem(<item:botania:purple_dye>);
addInfoAndHideItem(<item:botania:cyan_dye>);
addInfoAndHideItem(<item:botania:light_gray_dye>);
addInfoAndHideItem(<item:botania:gray_dye>);
addInfoAndHideItem(<item:botania:pink_dye>);
addInfoAndHideItem(<item:botania:lime_dye>);
addInfoAndHideItem(<item:botania:yellow_dye>);
addInfoAndHideItem(<item:botania:light_blue_dye>);
addInfoAndHideItem(<item:botania:magenta_dye>);
addInfoAndHideItem(<item:botania:orange_dye>);
addInfoAndHideItem(<item:botania:blue_dye>);
addInfoAndHideItem(<item:botania:brown_dye>);
addInfoAndHideItem(<item:botania:black_dye>);
addInfoAndHideItem(<item:botania:white_dye>);
addInfoAndHideItem(<item:botania:pebble>);
addInfoAndHideItem(<item:minecraft:wooden_sword>);
addInfoAndHideItem(<item:minecraft:wooden_shovel>);
addInfoAndHideItem(<item:minecraft:wooden_axe>);
addInfoAndHideItem(<item:minecraft:wooden_pickaxe>);
addInfoAndHideItem(<item:minecraft:wooden_hoe>);
addInfoAndHideItem(<item:minecraft:stone_sword>);
addInfoAndHideItem(<item:minecraft:stone_shovel>);
addInfoAndHideItem(<item:minecraft:stone_axe>);
addInfoAndHideItem(<item:minecraft:stone_pickaxe>);
addInfoAndHideItem(<item:minecraft:stone_hoe>);
addInfoAndHideItem(<item:cyclic:sandstone_sword>);
addInfoAndHideItem(<item:cyclic:sandstone_shovel>);
addInfoAndHideItem(<item:cyclic:sandstone_axe>);
addInfoAndHideItem(<item:cyclic:sandstone_pickaxe>);
addInfoAndHideItem(<item:cyclic:sandstone_hoe>);
addInfoAndHideItem(<item:vanillahammers:wooden_hammer>);
addInfoAndHideItem(<item:vanillahammers:stone_hammer>);
addInfoAndHideItem(<item:vanillaexcavators:wooden_excavator>);
addInfoAndHideItem(<item:vanillaexcavators:stone_excavator>);
addInfoAndHideItem(<item:cyclic:emerald_helmet>);
addInfoAndHideItem(<item:cyclic:emerald_chestplate>);
addInfoAndHideItem(<item:cyclic:emerald_leggings>);
addInfoAndHideItem(<item:cyclic:emerald_boots>);
addInfoAndHideItem(<item:cyclic:emerald_sword>);
addInfoAndHideItem(<item:cyclic:emerald_pickaxe>);
addInfoAndHideItem(<item:cyclic:emerald_axe>);
addInfoAndHideItem(<item:cyclic:emerald_hoe>);
addInfoAndHideItem(<item:cyclic:emerald_shovel>);
addInfoAndHideItem(<item:pickletweaks:wooden_paxel>);
addInfoAndHideItem(<item:pickletweaks:stone_paxel>);
addInfoAndHideItem(<item:pickletweaks:iron_paxel>);
addInfoAndHideItem(<item:pickletweaks:golden_paxel>);
addInfoAndHideItem(<item:pickletweaks:diamond_paxel>);

addInfoAndHideItem(<item:mekanismtools:wood_paxel>);
addInfoAndHideItem(<item:mekanismtools:stone_paxel>);

addInfoAndHideItem(<item:pickletweaks:watering_can>);

//Hide a single Item
//JEI.hideItem(IItemStack stack);

//Hide a Category
//JEI.hideCategory(String category);
//JEI.hideCategory("minecraft:furnace");

//Add Information about an Item to the Info Category
//JEI.addInfo(IItemStack stack, String[] information);
//JEI.addInfo(<item:minecraft:diamond>, ["This is the first line!", "This is the second!", "third"]);
JEI.addInfo(<item:minecraft:flint>, ["Pick up 2 Stone Pebbles from the Ground, take 1 in each hand and smack them together to get Flint by chance.", " ", "Gravel doesn't drop flint anymore."]);
JEI.addInfo(<item:natural-progression:bone_shard>, ["Take a Flint into one a Bone into the other hand and smack them together to get a Bone Shard by chance."]);