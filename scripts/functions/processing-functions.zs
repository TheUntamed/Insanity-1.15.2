// #priority 2000
// //Has to be loaded before all Recipe and tag changes

// import crafttweaker.api.item.IItemStack;
// import crafttweaker.api.item.IIngredient;
// import crafttweaker.api.tag.MCTag;
// import crafttweaker.api.BracketHandlers;
// import mods.jei.JEI;

// // Used by tag-unification. Called for each duplicate item which tag gets removed.
// // Removes all recipes with "item" as output.
// public function removeAllProcessingFor(item as IItemStack) as void {

//     craftingTable.removeRecipe(item);
// 	furnace.removeRecipe(item);
// 	blastFurnace.removeRecipe(item);

// 	// logger.info("removeAllProcessingFor called for " + item.registryName);
// 	// JEI.hideItem(item);
// 	// JEI.addInfo(item, ["Test"]);
// }