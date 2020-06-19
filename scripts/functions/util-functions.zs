#priority 3002

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function formatRecipeName(item as IItemStack) as string {
	return item.translationKey + "_" + item.amount;
}