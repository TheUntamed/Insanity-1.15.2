# 700

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

for item in <tag:minecraft:logs>.items {
    //var itemOwner = item.registryName;
    if (item.id() has "stripped") {
        // if (item.registryName has "log") {
        //     <tag:forge:stripped/logs>.addItems(item); 
        // }
        // if (item.registryName has "wood") {
        //     <tag:forge:stripped/wood>.addItems(item); 
        // }
    }
}