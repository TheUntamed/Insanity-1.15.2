#priority 2101

public function preUnificationTagAdditions() as void {

    logger.info("Prio Test: pre-unification-tag-additions");

    // Mekanism
    <tag:mekanism:dirty_dusts>.addItems([<item:kubejs:dirty_dust_redstone>]);
    <tag:mekanism:dirty_dusts/redstone>.addItems([<item:kubejs:dirty_dust_redstone>]);
    <tag:mekanism:clumps>.addItems([<item:kubejs:clump_redstone>]);
    <tag:mekanism:clumps/redstone>.addItems([<item:kubejs:clump_redstone>]);

    // Plates
    // <tag:forge:plates/advanced_alloy>.addItems([<item:kubejs:advanced_alloy_plate>]);
    // <tag:forge:plates/aluminum>.addItems([<item:kubejs:aluminum_plate>]);
    // <tag:forge:plates/brass>.addItems([<item:kubejs:brass_plate>]);
    // <tag:forge:plates/bronze>.addItems([<item:kubejs:bronze_plate>]);
    // <tag:forge:plates/carbon>.addItems([<item:kubejs:carbon_plate>]);
    // <tag:forge:plates/chrome>.addItems([<item:kubejs:chrome_plate>]);
    // <tag:forge:plates/coal>.addItems([<item:kubejs:coal_plate>]);
    // <tag:forge:plates/copper>.addItems([<item:kubejs:copper_plate>]);
    // <tag:forge:plates/diamond>.addItems([<item:kubejs:diamond_plate>]);
    // <tag:forge:plates/electrum>.addItems([<item:kubejs:electrum_plate>]);
    // <tag:forge:plates/emerald>.addItems([<item:kubejs:emerald_plate>]);
    // <tag:forge:plates/gold>.addItems([<item:kubejs:gold_plate>]);
    // <tag:forge:plates/invar>.addItems([<item:kubejs:invar_plate>]);
    // <tag:forge:plates/iridium_alloy>.addItems([<item:kubejs:iridium_alloy_plate>]);
    // <tag:forge:plates/iridium>.addItems([<item:kubejs:iridium_plate>]);
    // <tag:forge:plates/iron>.addItems([<item:kubejs:iron_plate>]);
    // <tag:forge:plates/lapis>.addItems([<item:kubejs:lapis_plate>]);
    // <tag:forge:plates/lazurite>.addItems([<item:kubejs:lazurite_plate>]);
    // <tag:forge:plates/lead>.addItems([<item:kubejs:lead_plate>]);
    // <tag:forge:plates/magnalium>.addItems([<item:kubejs:magnalium_plate>]);
    // <tag:forge:plates/nickel>.addItems([<item:kubejs:nickel_plate>]);
    // <tag:forge:plates/obsidian>.addItems([<item:kubejs:obsidian_plate>]);
    // <tag:forge:plates/peridot>.addItems([<item:kubejs:peridot_plate>]);
    // <tag:forge:plates/platinum>.addItems([<item:kubejs:platinum_plate>]);
    // <tag:forge:plates/quartz>.addItems([<item:kubejs:quartz_plate>]);
    // <tag:forge:plates/red_garnet>.addItems([<item:kubejs:red_garnet_plate>]);
    // <tag:forge:plates/redstone>.addItems([<item:kubejs:redstone_plate>]);
    // <tag:forge:plates/refined_iron>.addItems([<item:kubejs:refined_iron_plate>]);
    // <tag:forge:plates/ruby>.addItems([<item:kubejs:ruby_plate>]);
    // <tag:forge:plates/sapphire>.addItems([<item:kubejs:sapphire_plate>]);
    // <tag:forge:plates/silicon>.addItems([<item:kubejs:silicon_plate>]);
    // <tag:forge:plates/silver>.addItems([<item:kubejs:silver_plate>]);
    // <tag:forge:plates/steel>.addItems([<item:kubejs:steel_plate>]);
    // <tag:forge:plates/tin>.addItems([<item:kubejs:tin_plate>]);
    // <tag:forge:plates/titanium>.addItems([<item:kubejs:titanium_plate>]);
    // <tag:forge:plates/tungsten>.addItems([<item:kubejs:tungsten_plate>]);
    // <tag:forge:plates/tungstensteel>.addItems([<item:kubejs:tungstensteel_plate>]);
    // <tag:forge:plates/wood>.addItems([<item:kubejs:wood_plate>]);
    // <tag:forge:plates/yellow_garnet>.addItems([<item:kubejs:yellow_garnet_plate>]);
    // <tag:forge:plates/zinc>.addItems([<item:kubejs:zinc_plate>]);

    // Ingots
    // <tag:forge:ingots/advanced_alloy>.addItems([<item:kubejs:advanced_alloy_ingot>]);
    // <tag:forge:ingots/chrome>.addItems([<item:kubejs:chrome_ingot>]);
    // <tag:forge:ingots/iridium_alloy>.addItems([<item:kubejs:iridium_alloy_ingot>]);
    // <tag:forge:ingots/iridium>.addItems([<item:kubejs:iridium_ingot>]);
    // <tag:forge:ingots/titanium>.addItems([<item:kubejs:titanium_ingot>]);
    // <tag:forge:ingots/tungsten>.addItems([<item:kubejs:tungsten_ingot>]);
    // <tag:forge:ingots/tungstensteel>.addItems([<item:kubejs:tungstensteel_ingot>]);
    <tag:forge:ingots/redstone>.addItems([<item:extendedcrafting:redstone_ingot>]);
    <tag:forge:ingots/neridium>.addItems([<item:nethercraft:neridium_ingot>]);
    <tag:forge:ingots/pyridium>.addItems([<item:nethercraft:pyridium_ingot>]);
    <tag:forge:ingots/linium>.addItems([<item:nethercraft:linium_ingot>]);
    <tag:forge:ingots/w>.addItems([<item:nethercraft:w_obsidian_ingot>]);

    // <tag:forge:ores/obsidian>.addItems([<item:minecraft:obsidian>]);

    // Gems
    // <tag:forge:gems/peridot>.addItems([<item:kubejs:peridot_gem>]);
    // <tag:forge:gems/red_garnet>.addItems([<item:kubejs:red_garnet_gem>]);
    // <tag:forge:gems/ruby>.addItems([<item:kubejs:ruby_gem>]);
    // <tag:forge:gems/sapphire>.addItems([<item:kubejs:sapphire_gem>]);
    // <tag:forge:gems/yellow_garnet>.addItems([<item:kubejs:yellow_garnet_gem>]);

    // Nuggets
    <tag:forge:nuggets/redstone>.addItems([<item:extendedcrafting:redstone_nugget>]);

    // Dusts
    <tag:forge:dusts/lapis>.addItems([<item:mekanism:dust_lapis_lazuli>]);

    // Blocks
    <tag:forge:storage_blocks/redstone>.addItems([<item:extendedcrafting:redstone_ingot_block>]);

    // Hammer
    <tag:forge:hammer>.addItems([<item:engineerstools:crushing_hammer>, <item:projecte:dm_hammer>, <item:projecte:rm_hammer>, <item:vanillahammers:slime_hammer>, <item:vanillahammers:redstone_hammer>, <item:vanillahammers:quartz_hammer>, <item:vanillahammers:prismarine_hammer>, <item:vanillahammers:paper_hammer>, <item:vanillahammers:obsidian_hammer>, <item:vanillahammers:nether_hammer>, <item:vanillahammers:lapis_hammer>, <item:vanillahammers:glowstone_hammer>, <item:vanillahammers:fiery_hammer>, <item:vanillahammers:ender_hammer>, <item:vanillahammers:emerald_hammer>, <item:vanillahammers:coal_hammer>, <item:vanillahammers:bone_hammer>, <item:vanillahammers:diamond_hammer>, <item:vanillahammers:golden_hammer>, <item:vanillahammers:iron_hammer>]);
    <tag:forge:hammer/weak>.addItems([<item:vanillahammers:bone_hammer>, <item:vanillahammers:nether_hammer>, <item:vanillahammers:coal_hammer>, <item:vanillahammers:golden_hammer>, <item:vanillahammers:redstone_hammer>, <item:vanillahammers:quartz_hammer>, <item:vanillahammers:lapis_hammer>, <item:vanillahammers:glowstone_hammer>, <item:vanillahammers:iron_hammer>, <item:engineerstools:crushing_hammer>, <item:vanillahammers:prismarine_hammer>, <item:vanillahammers:obsidian_hammer>, <item:vanillahammers:ender_hammer>, <item:vanillahammers:fiery_hammer>, <item:vanillahammers:emerald_hammer>, <item:vanillahammers:diamond_hammer>, <item:projecte:dm_hammer>, <item:projecte:rm_hammer>]);
    <tag:forge:hammer/sturdy>.addItems([<item:vanillahammers:redstone_hammer>, <item:vanillahammers:quartz_hammer>, <item:vanillahammers:lapis_hammer>, <item:vanillahammers:glowstone_hammer>, <item:vanillahammers:iron_hammer>, <item:engineerstools:crushing_hammer>, <item:vanillahammers:prismarine_hammer>, <item:vanillahammers:obsidian_hammer>, <item:vanillahammers:ender_hammer>, <item:vanillahammers:fiery_hammer>, <item:vanillahammers:emerald_hammer>, <item:vanillahammers:diamond_hammer>, <item:projecte:dm_hammer>, <item:projecte:rm_hammer>]);
    <tag:forge:hammer/strong>.addItems([<item:vanillahammers:prismarine_hammer>, <item:vanillahammers:obsidian_hammer>, <item:vanillahammers:ender_hammer>, <item:vanillahammers:fiery_hammer>, <item:vanillahammers:emerald_hammer>, <item:vanillahammers:diamond_hammer>, <item:projecte:dm_hammer>, <item:projecte:rm_hammer>]);
    <tag:forge:hammer/powerful>.addItems([<item:projecte:dm_hammer>, <item:projecte:rm_hammer>]);

    // Gears
    <tag:forge:gear>.addItems([<item:kubejs:flint_gear>, <item:titanium:gold_gear>, <item:titanium:iron_gear>, <item:titanium:diamond_gear>]);
    <tag:forge:gear/weak>.addItems([<item:kubejs:flint_gear>, <item:titanium:gold_gear>]);
    <tag:forge:gear/strong>.addItems([<item:titanium:iron_gear>, <item:titanium:diamond_gear>]);
    <tag:forge:gear/flint>.addItems([<item:kubejs:flint_gear>]);

    // nethercraft
    <tag:minecraft:logs>.addItems([<item:nethercraft:glowood_log>, <item:nethercraft:stripped_glowood_log>]);
    <tag:forge:dusts/w>.addItems([<item:nethercraft:w_dust>]);
    <tag:forge:dusts/foulite>.addItems([<item:nethercraft:foulite_dust>]);

    // Chests
    <tag:forge:chests>.addItems([<item:midnight:bogshroom_chest>, <item:midnight:viridshroom_chest>, <item:midnight:dewshroom_chest>, <item:midnight:nightshroom_chest>, <item:midnight:dead_wood_chest>, <item:midnight:dark_willow_chest>, <item:midnight:shadowroot_chest>, <item:quark:mushroom_chest>, <item:quark:prismarine_chest>, <item:quark:purpur_chest>, <item:quark:nether_brick_chest>, <item:nethercraft:glowood_chest>]);
    <tag:forge:chests/wooden>.addItems([<item:nethercraft:glowood_chest>]);

    // colorants
    <tag:forge:colorant/red>.addItems([<item:botania:red_mushroom>, <item:botania:red_petal>, <item:simplefarming:raspberries>, <item:pamhc2crops:raspberryitem>, <item:simplefarming:strawberries>, <item:pamhc2crops:strawberryitem>, <item:minecraft:beetroot>, <item:minecraft:poppy>, <item:buzzierbees:red_hibiscus>, <item:minecraft:red_tulip>, <item:biomesoplenty:rose>, <item:minecraft:fire_coral>, <item:minecraft:fire_coral_fan>]);
    <tag:forge:colorant/green>.addItems([<item:botania:green_mushroom>, <item:botania:green_petal>, <item:quark:cactus_paste>, <item:buzzierbees:jolyce>]);
    <tag:forge:colorant/purple>.addItems([<item:botania:purple_mushroom>, <item:botania:purple_petal>, <item:biomesoplenty:lavender>, <item:upgrade_aquatic:pickerel_weed_purple>, <item:buzzierbees:columbine>, <item:buzzierbees:violet>, <item:biomesoplenty:violet>, <item:buzzierbees:purple_hibiscus>]);
    <tag:forge:colorant/cyan>.addItems([<item:botania:cyan_mushroom>, <item:botania:cyan_petal>, <item:upgrade_aquatic:pickerel_weed_blue>, <item:biomesoplenty:glowflower>]);
    <tag:forge:colorant/light_gray>.addItems([<item:botania:light_gray_mushroom>, <item:botania:light_gray_petal>, <item:minecraft:azure_bluet>, <item:minecraft:oxeye_daisy>, <item:minecraft:white_tulip>]);
    <tag:forge:colorant/gray>.addItems([<item:botania:gray_mushroom>, <item:botania:gray_petal>, <item:biomesoplenty:wilted_lily>]);
    <tag:forge:colorant/pink>.addItems([<item:botania:pink_mushroom>, <item:botania:pink_petal>, <item:simplefarming:cactus_fruit>, <item:pamhc2crops:cactusfruititem>, <item:biomesoplenty:pink_daffodil>, <item:biomesoplenty:pink_hibiscus>, <item:upgrade_aquatic:searocket_pink>, <item:buzzierbees:pink_clover>, <item:minecraft:pink_tulip>, <item:buzzierbees:pink_hibiscus>, <item:buzzierbees:cartwheel>, <item:minecraft:brain_coral>, <item:minecraft:brain_coral_fan>]);
    <tag:forge:colorant/lime>.addItems([<item:botania:lime_mushroom>, <item:botania:lime_petal>]);
    <tag:forge:colorant/yellow>.addItems([<item:botania:yellow_mushroom>, <item:botania:yellow_petal>, <item:minecraft:dandelion>, <item:buzzierbees:daybloom>, <item:minecraft:horn_coral>, <item:minecraft:horn_coral_fan>]);
    <tag:forge:colorant/light_blue>.addItems([<item:botania:light_blue_mushroom>, <item:botania:light_blue_petal>, <item:minecraft:blue_orchid>]);
    <tag:forge:colorant/magenta>.addItems([<item:botania:magenta_mushroom>, <item:botania:magenta_petal>, <item:minecraft:allium>, <item:biomesoplenty:wildflower>, <item:buzzierbees:magenta_hibiscus>, <item:minecraft:bubble_coral>, <item:minecraft:bubble_coral_fan>]);
    <tag:forge:colorant/orange>.addItems([<item:botania:orange_mushroom>, <item:botania:orange_petal>, <item:minecraft:orange_tulip>, <item:biomesoplenty:burning_blossom>, <item:biomesoplenty:orange_cosmos>, <item:buzzierbees:orange_hibiscus>]);
    <tag:forge:colorant/blue>.addItems([<item:botania:blue_mushroom>, <item:botania:blue_petal>, <item:simplefarming:blueberries>, <item:pamhc2crops:blueberryitem>, <item:minecraft:cornflower>, <item:buzzierbees:bluebell>, <item:minecraft:tube_coral>, <item:minecraft:tube_coral_fan>]);
    <tag:forge:colorant/brown>.addItems([<item:botania:brown_mushroom>, <item:botania:brown_petal>, <item:minecraft:cocoa_beans>]);
    <tag:forge:colorant/black>.addItems([<item:botania:black_mushroom>, <item:botania:black_petal>, <item:simplefarming:blackberries>, <item:pamhc2crops:blackberryitem>, <item:forbidden_arcanus:edelwood_oil>, <item:minecraft:wither_rose>, <item:minecraft:ink_sac>]);
    <tag:forge:colorant/white>.addItems([<item:botania:white_mushroom>, <item:botania:white_petal>, <item:minecraft:lily_of_the_valley>, <item:minecraft:bone_meal>, <item:upgrade_aquatic:searocket_white>, <item:buzzierbees:white_clover>]);

    // Planks
    var modList as string[] = [
        "minecraft",
        "nethercraft",
        "endergetic",
        "buzzierbees",
        "midnight"

    ];
    for item in <tag:minecraft:planks>.items {
        for mod in modList {
            var itemOwner = item.registryName.split(":")[0];
                if (itemOwner != mod) {
                    <tag:forge:planks_without_chest>.addItems(item);
                }
        }
    }

    // Stripped Log/Wood
    for item in <tag:minecraft:logs>.items {
        var itemName = item.registryName.split(":")[1];
        var stripped = itemName.split("_")[0];
        if (stripped == "stripped") {
            <tag:forge:stripped>.addItems(item);
        }
    }

    // Others
    <tag:forge:bookshelves>.addItems([<item:upgrade_aquatic:driftwood_bookshelf>, <item:endergetic:poise_bookshelf>, <item:quark:dark_oak_bookshelf>, <item:quark:acacia_bookshelf>, <item:quark:jungle_bookshelf>, <item:quark:birch_bookshelf>, <item:quark:spruce_bookshelf>, <item:nethercraft:glowood_bookshelf>, <item:buzzierbees:hive_bookshelf>]);
    <tag:forge:fiber>.addItems([<item:simplefarming:cotton>]);
    <tag:forge:fiber/cotton>.addItems([<item:simplefarming:cotton>]);
    <tag:forge:furnace>.addItems([<item:minecraft:furnace>, <item:brickfurnace:brick_furnace>]);
    <tag:forge:blast_furnace>.addItems([<item:minecraft:blast_furnace>, <item:brickfurnace:brick_blast_furnace>]);
    <tag:forge:smoker>.addItems([<item:minecraft:smoker>, <item:brickfurnace:brick_smoker>]);
    <tag:forge:saw>.addItems([<item:natural-progression:basic_saw>, <item:natural-progression:improved_saw>]);
    // <tag:forge:to_blast_furnace>.addItems([<item:minecraft:furnace>, <item:brickfurnace:brick_blast_furnace>]);

    <tag:forge:wg_stone>.addBlocks([<blockstate:create:scoria>.block]);
}