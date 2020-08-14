#priority 13

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

public function removeRecipes() as void {
    var items as IItemStack[] = [
        <item:mekanism:basic_smelting_factory>,
        <item:mekanism:advanced_smelting_factory>,
        <item:mekanism:elite_smelting_factory>,
        <item:mekanism:ultimate_smelting_factory>,

        <item:mekanism:basic_enriching_factory>,
        <item:mekanism:advanced_enriching_factory>,
        <item:mekanism:elite_enriching_factory>,
        <item:mekanism:ultimate_enriching_factory>,

        <item:mekanism:basic_crushing_factory>,
        <item:mekanism:advanced_crushing_factory>,
        <item:mekanism:elite_crushing_factory>,
        <item:mekanism:ultimate_crushing_factory>,

        <item:mekanism:basic_compressing_factory>,
        <item:mekanism:advanced_compressing_factory>,
        <item:mekanism:elite_compressing_factory>,
        <item:mekanism:ultimate_compressing_factory>,

        <item:mekanism:basic_combining_factory>,
        <item:mekanism:advanced_combining_factory>,
        <item:mekanism:elite_combining_factory>,
        <item:mekanism:ultimate_combining_factory>,

        <item:mekanism:basic_purifying_factory>,
        <item:mekanism:advanced_purifying_factory>,
        <item:mekanism:elite_purifying_factory>,
        <item:mekanism:ultimate_purifying_factory>,

        <item:mekanism:basic_injecting_factory>,
        <item:mekanism:advanced_injecting_factory>,
        <item:mekanism:elite_injecting_factory>,
        <item:mekanism:ultimate_injecting_factory>,

        <item:mekanism:basic_infusing_factory>,
        <item:mekanism:advanced_infusing_factory>,
        <item:mekanism:elite_infusing_factory>,
        <item:mekanism:ultimate_infusing_factory>,

        <item:mekanism:basic_sawing_factory>,
        <item:mekanism:advanced_sawing_factory>,
        <item:mekanism:elite_sawing_factory>,
        <item:mekanism:ultimate_sawing_factory>,
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

        <item:forbidden_arcanus:bone_pickaxe>,
        <item:forbidden_arcanus:bone_axe>,
        <item:forbidden_arcanus:bone_shovel>,
        <item:forbidden_arcanus:bone_sword>,
        <item:forbidden_arcanus:bone_hoe>,

        <item:quark:bamboo_block>,

        <item:pickletweaks:watering_can>
    ];

    for item in items {
        removeRecipe(item, false);
    }

    for item in disabledItems {
        removeRecipe(item, true);
    }

    // for item in loadedMods.getMod("quark").items {
    //     if (item.registryName.contains("vertical_slab")) {
    //         removeRecipe(item, true);
    //     }
    // }

    removeRecipeByName("simplefarming:wool");

    removeRecipeByName("expandedstorage:old_obsidian_chest");
    removeRecipeByName("expandedstorage:old_diamond_chest");
    removeRecipeByName("expandedstorage:old_gold_chest");
    removeRecipeByName("expandedstorage:old_iron_chest");

    removeRecipeByName("natural-progression:cobblestone");

    removeRecipeByName("botania:fertilizer_powder");

    removeRecipeByName("mysticalagriculture:inferium_watering_can_pt");
}