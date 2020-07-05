#priority 3000
//Has to be loaded before all Recipe and tag changes

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

// Used by tag-unification. Called for each duplicate item which tag gets removed.
// Removed all recipes with "item" as output.
public function removeAllProcessingFor(item as IItemStack) as void {
	// Minecraft
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);

	<recipetype:mekanism:crushing>.removeRecipe(item);
	<recipetype:mekanism:combining>.removeRecipe(item);
	<recipetype:mekanism:injecting>.removeRecipe(item);
	<recipetype:mekanism:enriching>.removeRecipe(item);
	<recipetype:mekanism:purifying>.removeRecipe(item);
	<recipetype:immersiveengineering:crusher>.removeRecipe(item);
	<recipetype:immersiveengineering:metal_press>.removeRecipe(item);
	<recipetype:immersiveengineering:alloy>.removeRecipe(item);
	<recipetype:immersiveengineering:arc_furnace>.removeRecipe(item);
	<recipetype:immersiveengineering:blast_furnace>.removeRecipe(item);

    // JEI
	JEI.RemoveAndHide(item);
}