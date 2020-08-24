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
        removeFurnaceRecipe(item, false);
    }

    for item in <tag:forge:gems>.items {
        removeFurnaceRecipe(item, false);
    }

    removeFurnaceRecipe(<item:minecraft:redstone>, false);
    removeFurnaceRecipe(<item:powah:uraninite>, false);
    removeRecipe(<item:powah:uraninite_raw>, true);
    removeRecipe(<item:powah:uraninite_raw_poor>, true);
    removeRecipe(<item:powah:uraninite_raw_dense>, true);
}
