#priority 3000
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

// Add Recipe

// logger.info("Prio Test: recipe-functions!");

public function addShaped(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShaped(recipeName, output, input, null);
}

public function addShapedMirrored(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapedMirrored(recipeName, output, input);
}

public function addShapeless(output as IItemStack, input as IIngredient[], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapeless(recipeName, output, input);
}

public function addCampfire(output as IItemStack, input as IIngredient, xp as float, cookTime as int) as void {
	var recipeName = formatRecipeName(output);

	campfire.addRecipe(recipeName as string, output, input, xp, cookTime);
}

// Remove Recipe

public function removeRecipe(output as IItemStack, jei as bool) as void {
	craftingTable.removeRecipe(output);
	if (jei) {
		addInfoAndHideItem(output);
	}
}

public function removeRecipeByName(name as string) as void {
	craftingTable.removeByName(name);
}

public function removeFurnaceRecipe(output as IItemStack, jei as bool) as void {
	furnace.removeRecipe(output);
	if (jei) {
		addInfoAndHideItem(output);
	}
}

public function removeFurnaceRecipeByName(name as string) as void {
	furnace.removeByName(name);
}

public function removeBlastingRecipe(output as IItemStack, jei as bool) as void {
	blastFurnace.removeRecipe(output);
	if (jei) {
		addInfoAndHideItem(output);
	}
}

public function removeBlastingRecipeByName(name as string) as void {
	blastFurnace.removeByName(name);
}