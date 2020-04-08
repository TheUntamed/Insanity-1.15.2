# 700

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

<tag:minecraft:logs>.addItems(<item:nethercraft:glowood_log>);
<tag:corail_woodcutter:allowed_items>.addItems(<item:nethercraft:glowood_log>);
<tag:corail_woodcutter:allowed_items>.addItems(<item:nethercraft:stripped_glowood_log>);
<tag:minecraft:logs>.addItems(<item:nethercraft:stripped_glowood_log>);

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