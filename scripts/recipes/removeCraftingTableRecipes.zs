#priority 13

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

//removeRecipeByName("");

var items as IItemStack[] = [

];

var disabledItems as IItemStack[] = [
    <item:vanillahammers:wooden_hammer>,
    <item:vanillahammers:stone_hammer>,
    <item:vanillaexcavators:wooden_excavator>,
    <item:vanillaexcavators:stone_excavator>,

    <item:botania:red_dye>,
    <item:botania:green_dye>,
    <item:botania:purple_dye>,
    <item:botania:cyan_dye>,
    <item:botania:light_gray_dye>,
    <item:botania:gray_dye>,
    <item:botania:pink_dye>,
    <item:botania:lime_dye>,
    <item:botania:yellow_dye>,
    <item:botania:light_blue_dye>,
    <item:botania:magenta_dye>,
    <item:botania:orange_dye>,
    <item:botania:blue_dye>,
    <item:botania:brown_dye>,
    <item:botania:black_dye>,
    <item:botania:white_dye>,
    <item:cyclic:emerald_helmet>,
    <item:cyclic:emerald_chestplate>,
    <item:cyclic:emerald_leggings>,
    <item:cyclic:emerald_boots>,
    <item:cyclic:emerald_sword>,
    <item:cyclic:emerald_pickaxe>,
    <item:cyclic:emerald_axe>,
    <item:cyclic:emerald_hoe>,
    <item:cyclic:emerald_shovel>,
    <item:cyclic:sandstone_sword>,
    <item:cyclic:sandstone_shovel>,
    <item:cyclic:sandstone_axe>,
    <item:cyclic:sandstone_pickaxe>,
    <item:cyclic:sandstone_hoe>,

    <item:immersiveengineering:armor_steel_head>,
    <item:immersiveengineering:armor_steel_chest>,
    <item:immersiveengineering:armor_steel_legs>,
    <item:immersiveengineering:armor_steel_feet>,
    <item:immersiveengineering:sword_steel>,
    <item:immersiveengineering:pickaxe_steel>,
    <item:immersiveengineering:axe_steel>,
    <item:immersiveengineering:hoe_steel>,
    <item:immersiveengineering:shovel_steel>,

    <item:pickletweaks:wooden_paxel>,
    <item:pickletweaks:stone_paxel>,
    <item:pickletweaks:iron_paxel>,
    <item:pickletweaks:golden_paxel>,
    <item:pickletweaks:diamond_paxel>,

    <item:mekanismtools:wood_paxel>,
    <item:mekanismtools:stone_paxel>,

    <item:pickletweaks:watering_can>
];

for item in items {
    removeRecipe(item, false);
}

for item in disabledItems {
    removeRecipe(item, true);
}


removeRecipeByName("simplefarming:wool");

removeRecipeByName("expandedstorage:old_obsidian_chest");
removeRecipeByName("expandedstorage:old_diamond_chest");
removeRecipeByName("expandedstorage:old_gold_chest");
removeRecipeByName("expandedstorage:old_iron_chest");

removeRecipeByName("natural-progression:cobblestone");

removeRecipeByName("botania:fertilizer_powder");

removeRecipeByName("mysticalagriculture:inferium_watering_can_pt");