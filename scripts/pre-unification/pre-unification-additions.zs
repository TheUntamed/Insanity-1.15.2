#priority 999

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

logger.info("Prio Tes: pre-unification-additions");

public function preUnificationAdditions() as void {
    <tag:forge:ingots/neridium>.addItems([<item:nethercraft:neridium_ingot>]);
    <tag:forge:ingots/pyridium>.addItems([<item:nethercraft:pyridium_ingot>]);
    <tag:forge:ingots/linium>.addItems([<item:nethercraft:linium_ingot>]);
    <tag:forge:ingots/w>.addItems([<item:nethercraft:w_obsidian_ingot>]);

    //<tag:forge:ores/obsidian>.addItems([<item:minecraft:obsidian>]);
}