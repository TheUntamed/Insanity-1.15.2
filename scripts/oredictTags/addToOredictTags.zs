# 700

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

//nethercraft
<tag:minecraft:logs>.addItems([<item:nethercraft:glowood_log>, <item:nethercraft:stripped_glowood_log>]);
<tag:corail_woodcutter:allowed_items>.addItems([<item:nethercraft:glowood_log>, <item:nethercraft:stripped_glowood_log>]);

//colorants
// <tag:forge:colorant/red>.addItems([..., <item:minecraft:poppy>, <item:buzzierbees:red_hibiscus>, <item:minecraft:red_tulip>, <item:biomesoplenty:rose>, <item:minecraft:rose_bush>, <item:minecraft:fire_coral>, <item:minecraft:fire_coral_fan>]);
// <tag:forge:colorant/green>.addItems([<item:quark:cactus_paste>, <item:buzzierbees:jolyce>]);
// <tag:forge:colorant/purple>.addItems([<item:biomesoplenty:lavender>, <item:upgrade_aquatic:pickerel_weed_purple>, <item:buzzierbees:columbine>, <item:buzzierbees:violet>, <item:biomesoplenty:violet>, <item:buzzierbees:purple_hibiscus>]);
// <tag:forge:colorant/cyan>.addItems([<item:upgrade_aquatic:pickerel_weed_blue>, <item:biomesoplenty:glowflower>]);
// <tag:forge:colorant/light_gray>.addItems([<item:minecraft:azure_bluet>, <item:minecraft:oxeye_daisy>, <item:minecraft:white_tulip>]);
// <tag:forge:colorant/gray>.addItems([<item:biomesoplenty:wilted_lily>]);
// <tag:forge:colorant/pink>.addItems([..., <item:upgrade_aquatic:flowering_rush>, <item:biomesoplenty:pink_daffodil>, <item:biomesoplenty:pink_hibiscus>, <item:upgrade_aquatic:searocket_pink>, <item:buzzierbees:pink_clover>, <item:minecraft:pink_tulip>, <item:buzzierbees:pink_hibiscus>, <item:buzzierbees:cartwheel>, <item:minecraft:peony>, <item:minecraft:brain_coral>, <item:minecraft:brain_coral_fan>]);
// <tag:forge:colorant/lime>.addItems([none]);
// <tag:forge:colorant/yellow>.addItems([<item:minecraft:dandelion>, <item:biomesoplenty:goldenrod>, <item:buzzierbees:daybloom>, <item:minecraft:sunflower>, <item:minecraft:horn_coral>, <item:minecraft:horn_coral_fan>]);
// <tag:forge:colorant/light_blue>.addItems([<item:biomesoplenty:blue_hydrangea>, <item:minecraft:blue_orchid>]);
// <tag:forge:colorant/magenta>.addItems([<item:minecraft:allium>, <item:biomesoplenty:wildflower>, <item:buzzierbees:magenta_hibiscus>, <item:minecraft:lilac>, <item:minecraft:bubble_coral>, <item:minecraft:bubble_coral_fan>]);
// <tag:forge:colorant/orange>.addItems([<item:minecraft:orange_tulip>, <item_buzzierbees:bird_of_paradise>, <item:biomesoplenty:burning_blossom>, <item:biomesoplenty:orange_cosmos>, <item:buzzierbees:orange_hibiscus>]);
// <tag:forge:colorant/blue>.addItems([..., <item:bluepower:indigo_flower>, <item:minecraft:cornflower>, <item:buzzierbees:bluebell>, <item:minecraft:tube_coral>, <item:minecraft:tube_coral_fan>]);
// <tag:forge:colorant/brown>.addItems([<item:minecraft:cocoa_beans>]);
// <tag:forge:colorant/black>.addItems([..., <item:forbidden_arcanus:edelwood_oil>, <item:minecraft:wither_rose>, <item:minecraft:ink_sac>]);
// <tag:forge:colorant/white>.addItems([<item:minecraft:lily_of_the_valley>, <item:minecraft:bone_meal>, <item:upgrade_aquatic:searocket_white>, <item:buzzierbees:white_clover>]);

// for item in <tag:minecraft:logs>.items {
//     var registryName = item.registryName;
//     var res = ("stripped" in registryName);
//     //var itemOwner = item.registryName;
//     // if ("stripped_oak_log" has "stripped") {

//     // }
    
//     if (res) {
//         print("Item contains stripped" + res as string);
//         // <tag:forge:stripped_logs>.addItems(item);
//     }
// }