#priority 4002

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function formatRecipeName(item as IItemStack) as string {
	return item.translationKey + "_" + item.amount;
}

public function removeProcessingFor(item as IItemStack) as void {
    // Minecraft
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);
}