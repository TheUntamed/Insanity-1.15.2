#priority 2104

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

public function preUnificationRemovals() as void {

    logger.info("Prio Test: pre-unification-removals");

    <recipetype:mekanism:combining>.removeAll();
    blastFurnace.removeAll();

    for item in <tag:forge:ingots>.items {
    furnace.removeRecipe(item);
    }

    for item in <tag:forge:gems>.items {
    logger.info("Removing furnace recipe for gem " + item.registryName);
    furnace.removeRecipe(item);
    }

    furnace.removeRecipe(<item:minecraft:redstone>);
}
