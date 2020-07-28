#priority 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;

public function jei() as void {
	logger.info("Prio Test: jei!");

	for item in <tag:forge:disabled>.items {
		addInfoAndHideItem(item);
	}

	for item in <tag:create:crushed_ores>.items {
		addInfoAndHideItem(item);
	}

	addInfoAndHideItem(<item:botania:pebble>);
	addInfoAndHideItem(<item:minecraft:wooden_sword>);
	addInfoAndHideItem(<item:minecraft:wooden_shovel>);
	addInfoAndHideItem(<item:minecraft:wooden_axe>);
	addInfoAndHideItem(<item:minecraft:wooden_pickaxe>);
	addInfoAndHideItem(<item:minecraft:wooden_hoe>);
	addInfoAndHideItem(<item:minecraft:stone_sword>);
	addInfoAndHideItem(<item:minecraft:stone_shovel>);
	addInfoAndHideItem(<item:minecraft:stone_axe>);
	addInfoAndHideItem(<item:minecraft:stone_pickaxe>);
	addInfoAndHideItem(<item:minecraft:stone_hoe>);

	//Hide a single Item
	//JEI.hideItem(IItemStack stack);

	//Hide a Category
	//JEI.hideCategory(String category);
	//JEI.hideCategory("minecraft:furnace");

	//Add Information about an Item to the Info Category
	//JEI.addInfo(IItemStack stack, String[] information);
	//JEI.addInfo(<item:minecraft:diamond>, ["This is the first line!", "This is the second!", "third"]);
	JEI.addInfo(<item:midnight:geode>, ["Smash the geode against a hard block to crack it open."]);
	
	JEI.addInfo(<item:minecraft:flint>, ["Pick up 2 Stone Pebbles from the Ground, take 1 in each hand and smack them together to get Flint by chance.", " ", "Gravel doesn't drop flint anymore."]);
	JEI.addInfo(<item:natural-progression:bone_shard>, ["Take a Flint into one a Bone into the other hand and smack them together to get a Bone Shard by chance."]);
}