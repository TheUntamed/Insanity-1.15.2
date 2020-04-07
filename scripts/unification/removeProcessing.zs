#priority 999
// Has to be loaded before main

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function removeProcessingFor(item as IItemStack) as void {

    // Minecraft
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);
    
    //TODO: Mod Processings

    //TODO: JEI Hide

}