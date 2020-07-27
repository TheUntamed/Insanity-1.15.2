#priority 3000
//Has to be loaded before all Recipe and tag changes

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

public function formatRecipeName(item as IItemStack) as string {
	return item.translationKey + "_" + item.amount;
}

public function addInfoAndHideItem(item as IItemStack) as void {

	JEI.hideItem(item);
	JEI.addInfo(item, ["This item is disabled.\nIf you somehow obtained it please report on the modpack's github or discord!\n\nDanny"]);
}