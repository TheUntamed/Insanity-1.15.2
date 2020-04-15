#priority 999

//Hammer
// <tag:forge:hammer>.addItems([<item:]);
// <tag:forge:hammer>.addItems([<item:]);
// <tag:forge:hammer>.addItems([<item:]);
// <tag:forge:hammer>.addItems([<item:]);

//Storage Blocks
<tag:forge:storage_blocks/copper>.addItems([<item:bno:copper_block>]);
<tag:forge:storage_blocks/tin>.addItems([<item:bno:tin_block>]);
<tag:forge:storage_blocks/silver>.addItems([<item:bno:silver_block>]);
<tag:forge:storage_blocks/lead>.addItems([<item:bno:lead_block>]);
<tag:forge:storage_blocks/aluminum>.addItems([<item:bno:aluminum_block>]);
<tag:forge:storage_blocks/nickel>.addItems([<item:bno:nickel_block>]);
<tag:forge:storage_blocks/uranium>.addItems([<item:bno:uranium_block>]);

//nethercraft
<tag:minecraft:logs>.addItems([<item:nethercraft:glowood_log>, <item:nethercraft:stripped_glowood_log>]);

//Chests
<tag:forge:chests>.addItems([<item:midnight:bogshroom_chest>, <item:midnight:viridshroom_chest>, <item:midnight:dewshroom_chest>, <item:midnight:nightshroom_chest>, <item:midnight:dead_wood_chest>, <item:midnight:dark_willow_chest>, <item:midnight:shadowroot_chest>, <item:quark:mushroom_chest>, <item:quark:prismarine_chest>, <item:quark:purpur_chest>, <item:quark:nether_brick_chest>, <item:nethercraft:glowood_chest>]);
<tag:forge:chests/wooden>.addItems([<item:nethercraft:glowood_chest>]);

//colorants
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

<tag:forge:gear/flint>.addItems([<item:kubejs:flint_gear>]);

//Planks
var modList as string[] = [
    "minecraft",
    "nethercraft",
    "endergetic",
    "buzzierbees",
    "midnight",
    "bambootiful"

];
for item in <tag:minecraft:planks>.items {
    for mod in modList {
        var itemOwner = item.registryName.split(":")[0];
            if (itemOwner != mod) {
                <tag:forge:planks_without_chest>.addItems(item);
            }
    }
}

//Stripped Log/Wood
for item in <tag:minecraft:logs>.items {
    var itemName = item.registryName.split(":")[1];
    var stripped = itemName.split("_")[0];
    if (stripped == "stripped") {
        <tag:forge:stripped>.addItems(item);
    }
}