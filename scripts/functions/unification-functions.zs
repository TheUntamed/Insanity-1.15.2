#priority 3000
//Has to be loaded before all recipe and tag changes

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

logger.info("Prio Test: unification-functions!");

// Clean Item Tags
public function getPreferredItemInTag(tag as MCTag, modPriorities as string[]) as IItemStack {
	for mod in modPriorities {
		for item in tag.items {
            var itemOwner = item.registryName.split(":")[0];
            if (itemOwner == mod) {
                return item;
            }
        }
    }
	logger.warning("Unable to find acceptable item in MCTag " + tag.commandString + ". It contained:");
	for item in tag.items {
		// logger.info(item.registryName);
	}
    return <item:minecraft:air>;
}

public function purgeItemTag(tag as MCTag, modPriorities as string[]) as void {
    logger.info("Prio Test: purge-item-tags!");
	for item in tag.items {
		if (!item.matches(getPreferredItemInTag(tag, modPriorities))) {
			tag.removeItems(item);
            <tag:forge:disabled>.addItems(item);
			removeAllProcessingFor(item);
			
			// Fallback recipe
			craftingTable.addShapeless(formatRecipeName(item) + "_conversion_recipe", tag.first(), [item]);
		}
	}
}

public function purgeOreTag(tag as MCTag) as void {
    logger.info("Prio Test: purge-ore-tags!");
	for item in tag.items {
        var itemOwner = item.registryName.split(":")[0];
		if (!(itemOwner == "minecraft") && !(itemOwner == "dannys_ores")) {
			tag.removeItems(item);
            <tag:forge:disabled>.addItems(item);
			removeAllProcessingFor(item);
		}
	}
}

// Used by tag-unification. Called for each duplicate item which tag gets removed.
// Removes all recipes with "item" as output.
public function removeAllProcessingFor(item as IItemStack) as void {
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);
}

// Clean Recipes
// Minecraft

public function minecraft_crafting_ingot_from_block(material as string) as void {
    var blockItemTag = BracketHandlers.getTag("forge:storage_blocks/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var block = blockItemTag.first();
    var ingot = ingotItemTag.first();

    var outputCount = 9;

    if (block.matches(<item:minecraft:air>)) {
        // logger.info("crafting_ingot_from_block: No items exist in the ItemTag " + blockItemTag.commandString);
        return;
    }

    if (ingot.matches(<item:minecraft:air>)) {
        // logger.info("crafting_ingot_from_block: No items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    removeRecipeByName("silents_mechanisms:metals/" + material + "_ingot_from_block");
    removeRecipeByName("jaopca:storage_blocks.to_material." + material);
    addShapeless(ingot*9, [block], false);
}

public function minecraft_crafting_table(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dust = dustItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("minecraft_crafting_table_dust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    removeRecipe(dust);
}

public function minecraft_blasting_ingot_from_dust(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust = dustItemTag.first();
    var ingot = ingotItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    if (ingot.matches(<item:minecraft:air>)) {
        // logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 0.0;
    var cookingTime = 200;
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_dust", ingot, dustItemTag, xp, cookingTime/2);
}

// Mekanism

public function mekanism_enriching_gem_from_ore(material as string) as void {
    
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var gemItemTag = BracketHandlers.getTag("forge:gems/" + material);
    var ore = oreItemTag.first();
    var gem = gemItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_gem_from_ore: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (gem.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_gem_from_ore: No items exist in the ItemTag " + gemItemTag.commandString);
        return;
    } 

    var outputCount = 2;

    <recipetype:mekanism:enriching>.removeByName("jaopca:mekanism.ore_to_material." + material);
    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/" + material + "/from_ore");
    <recipetype:mekanism:enriching>.addJSONRecipe("mekanism/enriching/" + material + "/gem/from_ore",
    {
        input: {
            ingredient: {
                tag: "forge:ores/" + material
            }
            
        },
        output: {
            item: gem.registryName,
            count: outputCount
        }
    });

    // logger.info("mekanism_enriching_dust_from_ore with " + material + " succesfully ran!");
}

public function mekanism_enriching_dust_from_ore(material as string) as void {
	switch (material) {
		// case "redstone":
		case "lapis":
		case "diamond":
		case "coal":
		case "emerald":
		case "quartz":
		case "glowstone":
			// logger.info("mekanism_enriching_dust_from_ore: Skipping material " + material);
			return;
	}
    
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ore = oreItemTag.first();
    var dust = dustItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_dust_from_ore: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_dust_from_ore: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    var outputCount = 2;

    <recipetype:mekanism:enriching>.removeByName("jaopca:mekanism.ore_to_dust." + material);
    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/" + material + "/dust/from_ore");
    <recipetype:mekanism:enriching>.addJSONRecipe("mekanism/enriching/" + material + "/dust/from_ore",
    {
        input: {
            ingredient: {
                tag: "forge:ores/" + material
            }
            
        },
        output: {
            item: dust.registryName,
            count: outputCount
        }
    });

    // logger.info("mekanism_enriching_dust_from_ore with " + material + " succesfully ran!");
}

public function mekanism_injecting_shard_from_ore(material as string) as void {
    var oresItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var shardItemTag = BracketHandlers.getTag("mekanism:shards/" + material);
    var ore = oresItemTag.first();
    var shard = shardItemTag.first();

    var itemOwner = shard.registryName.split(":")[0];
    if (!(itemOwner == "mekanism" || itemOwner == "jaopca")) {

        if (ore.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_shard_from_ore: No items exist in the ItemTag " + oreItemTag.commandString);
            return;
        }

        if (shard.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_shard_from_ore: No items exist in the ItemTag " + shardItemTag.commandString);
            return;
        } 

        var outputCount = 4;
        //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/shard/from_ore");
        <recipetype:mekanism:injecting>.addJSONRecipe("mekanism/injecting/" + material + "/shard/from_ore",
        {
            itemInput: {
                ingredient: {
                    tag: "forge:ores/" + material
                }
            },
            gasInput: {
                amount: 1,
                gas: "mekanism:hydrogen_chloride"
            },
            output: {
                item: shard.registryName,
                count: outputCount
            }
        });

        // logger.info("mekanism_injecting_shard_from_ore with " + material + " succesfully ran!");
    }
}

public function mekanism_enriching_dust_from_dirty_dust(material as string) as void {
	var dirty_dustItemTag = BracketHandlers.getTag("mekanism:dirty_dusts/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var dust = dustItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/" + material + "/dust/from_dirty_dust");
    <recipetype:mekanism:enriching>.removeByName("jaopca:mekanism.dirty_dust_to_dust." + material);
    <recipetype:mekanism:enriching>.addJSONRecipe("mekanism/enriching/" + material + "/dust/from_dirty_dust",
    {
        input: {
            ingredient: {
                item: dirty_dust.registryName
            }
                
        },
        output: {
            item: dust.registryName
        }
    });

    // logger.info("mekanism_enriching_dust_from_dirty_dust with " + material + " succesfully ran!");
}

public function mekanism_enriching_nugget_from_clump(material as string) as void {
    var clumpItemTag = BracketHandlers.getTag("mekanism:clumps/" + material);
    var clump = clumpItemTag.first();
    var nuggetsItemTag = BracketHandlers.getTag("forge:nuggets/" + material);
    var nuggets = nuggetsItemTag.first();


    if (clump.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_nugget_from_clump: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    }

    if (nuggets.matches(<item:minecraft:air>)) {
        // logger.info("mekanism_enriching_dnugget_from_clump: No items exist in the ItemTag " + nuggetsItemTag.commandString);
        return;
    } 

    var outputCount = 4;

    <recipetype:mekanism:enriching>.addJSONRecipe("mekanism/enriching/" + material + "/nugget/from_clump",
    {
        input: {
            ingredient: {
                item: clump.registryName
            }

        },
        output: {
            item: nuggets.registryName,
            count: outputCount
        }
    });

    // logger.info("mekanism_enriching_nugget_from_clump with " + material + " succesfully ran!");
}

public function mekanism_injecting_clump_from_shard(material as string) as void {
	var shardItemTag = BracketHandlers.getTag("mekanism:shards/" + material);
    var clumpItemTag = BracketHandlers.getTag("mekanism:clumps/" + material);
    var shard = shardItemTag.first();
    var clump = clumpItemTag.first();

    var itemOwner = clump.registryName.split(":")[0];
    if (!(itemOwner == "mekanism" || itemOwner == "jaopca")) {

        if (shard.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_clump_from_shard: No items exist in the ItemTag " + shardItemTag.commandString);
            return;
        }

        if (clump.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_clump_from_shard: No items exist in the ItemTag " + clumpItemTag.commandString);
            return;
        } 

        <recipetype:mekanism:purifying>.addJSONRecipe("mekanism/purifying/" + material + "/clump/from_shard",
        {
            itemInput: {
                ingredient: {
                    item: shard.registryName
                }
            },
            gasInput: {
                amount: 1,
                gas: "mekanism:oxygen"
            },
            output: {
                item: clump.registryName
            }
        });

        // logger.info("mekanism_injecting_clump_from_shard with " + material + " succesfully ran!");
    }
}

public function mekanism_injecting_shard_from_crystal(material as string) as void {
	var crystalItemTag = BracketHandlers.getTag("mekanism:crystals/" + material);
    var shardItemTag = BracketHandlers.getTag("mekanism:shards/" + material);
    var crystal = crystalItemTag.first();
    var shard = shardItemTag.first();

    var itemOwner = shard.registryName.split(":")[0];
    if (!(itemOwner == "mekanism" || itemOwner == "jaopca")) {

        if (crystal.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_shard_from_crystal: No items exist in the ItemTag " + crystalItemTag.commandString);
            return;
        }

        if (shard.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_injecting_shard_from_crystal: No items exist in the ItemTag " + shardItemTag.commandString);
            return;
        } 

        <recipetype:mekanism:injecting>.addJSONRecipe("mekanism/injecting/" + material + "/shard/from_crystal",
        {
            itemInput: {
                ingredient: {
                    item: crystal.registryName
                }
            },
            gasInput: {
                amount: 1,
                gas: "mekanism:hydrogen_chloride"
            },
            output: {
                item: shard.registryName
            }
        });

        // logger.info("mekanism_injecting_shard_from_crystal with " + material + " succesfully ran!");
    }
}

// Create

public function create_splashing_nugget_from_clump(material as string) as void {
    var clumpItemTag = BracketHandlers.getTag("mekanism:clumps/" + material);
    var nuggetItemTag = BracketHandlers.getTag("forge:nuggets/" + material);
    var clump = clumpItemTag.first();
    var nugget = nuggetItemTag.first();

    if (clump.matches(<item:minecraft:air>)) {
        // logger.info("create_bulk_washing_nugget_from_clump: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    }

    if (nugget.matches(<item:minecraft:air>)) {
        // logger.info("create_bulk_washing_nugget_from_clump: No items exist in the ItemTag " + nuggetItemTag.commandString);
        return;
    }

    var outputCount = 2;

    <recipetype:create:splashing>.removeByName("jaopca:create.crushed_to_nugget." + material);
    <recipetype:create:splashing>.removeByName("create:splashing/crushed_" + material);
    <recipetype:create:splashing>.addJSONRecipe("create/splashing/" + material + "/nugget/from_clump",
    {
        ingredients: [
            {
                item: clump.registryName
            }
        ], 
        results: [
            {
                item: nugget.registryName,
                count: outputCount
            }
        ]
    });
}

public function create_splashing_dust_from_dirty_dust(material as string) as void {
    var dirty_dustItemTag = BracketHandlers.getTag("mekanism:dirty_dusts/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var dust = dustItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        // logger.info("create_splashing_dust_from_dirty_dust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("create_splashing_dust_from_dirty_dust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    var outputCount = 1;

    <recipetype:create:splashing>.addJSONRecipe("create/splashing/" + material + "/dust/from_dirty_dust",
    {
        ingredients: [
            {
                item: dirty_dust.registryName
            }
        ], 
        results: [
            {
                item: dust.registryName,
                count: outputCount
            }
        ]
    });
}

// Different mods

public function crushing_dust_from_gem(material as string) as void {
    var gemItemTag = BracketHandlers.getTag("forge:gems/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var gem = gemItemTag.first();
    var dust = dustItemTag.first();

    if (gem.matches(<item:minecraft:air>)) {
        logger.info("crushing_dust_from_gem: No items exist in the ItemTag " + gemItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("crushing_dust_from_ingot: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    var outputCount = 1;

    <recipetype:mekanism:crushing>.removeByName("mekanism:processing/" + material + "/to_dust");
    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dust/from_gem",
    {
        input: {
            ingredient: {
                item: gem.registryName
            }
            
        },
        output: {
            item: dust.registryName
        }
    });

    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/dust/from_gem",
        {
            ingredients: [
                {
                    item: gem.registryName
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.material_to_dust." + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_dust");
    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/dust/from_gem",
        {
            process_time: 300,
            ingredient: {
                item: gem.registryName
            },
            results: [
                {
                    item: dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coal");
    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/dust/from_gem",
        {
            secondaries: [],
            result: {
                item: dust.registryName,
                count: outputCount
            },
            input: {
                item: gem.registryName
            },
            energy: 3000
        });

    // logger.info("crushing_dust_from_gem with " + material + " succesfully ran!");
}

public function crushing_dust_from_ingot(material as string) as void {
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingot = ingotItemTag.first();
    var dust = dustItemTag.first();

    var outputCount = 1;

    if (ingot.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_ingot: No items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_ingot: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    <recipetype:mekanism:crushing>.removeByName("jaopca:mekanism.material_to_dust." + material);
    <recipetype:mekanism:crushing>.removeByName("mekanism:processing/" + material + "/dust/from_ingot");
    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dust/from_ingot",
    {
        input: {
            ingredient: {
                item: ingot.registryName
            }
            
        },
        output: {
            item: dust.registryName
        }
    });

    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/dust/from_ingot",
        {
            ingredients: [
                {
                    item: ingot.registryName
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.chunks_to_dust." + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_dust");
    <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.material_to_dust." + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_dust_from_ingot");
    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/dust/from_ingot",
        {
            process_time: 300,
            ingredient: {
                item: ingot.registryName
            },
            results: [
                {
                    item: dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_" + material);
    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/dust/from_ingot",
        {
            secondaries: [],
            result: {
                item: dust.registryName,
                count: outputCount
            },
            input: {
                item: ingot.registryName
            },
            energy: 3000
        });

    // logger.info("crushing_dust_from_ingot with " + material + " succesfully ran!");
}

public function crushing_dust_from_block(material as string) as void {
    var blockItemTagString = "forge:storage_blocks/" + material;
    var blockItemTag = BracketHandlers.getTag(blockItemTagString);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var block = blockItemTag.first();
    var dust = dustItemTag.first();

    if (block.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_block: No items exist in the ItemTag " + blockItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_block: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    var outputCount = 9;

    if (material == "quartz" || material == "glowstone") {
        outputCount = 4;
    }

    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dust/from_block",
    {
        input: {
            ingredient: {
                tag: blockItemTagString
            }
            
        },
        output: {
            item: dust.registryName,
            count: outputCount
        }
    });

    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/dust/from_block",
        {
            ingredients: [
                {
                    tag: blockItemTagString
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:create:crushing>.removeByName("create:crushing/" + material + "_block");
    <recipetype:create:crushing>.addJSONRecipe("create/crushing/" + material + "/dust/from_block",
        {
            ingredients: [
                {
                    tag: blockItemTagString
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/dust/from_block",
        {
            process_time: 300,
            ingredient: {
                tag: blockItemTagString
            },
            results: [
                {
                    item: dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/dust/from_block",
        {
            secondaries: [],
            result: {
                item: dust.registryName,
                count: outputCount
            },
            input: {
                tag: blockItemTagString
            },
            energy: 3000
        });

    // logger.info("crushing_dust_from_ingot with " + material + " succesfully ran!");
}

public function crushing_dirty_dust_from_clump(material as string) as void {
    var clumpItemTag = BracketHandlers.getTag("mekanism:clumps/" + material);
	var dirty_dustItemTag = BracketHandlers.getTag("mekanism:dirty_dusts/" + material);
    var clump = clumpItemTag.first();
    var dirty_dust = dirty_dustItemTag.first();

    var outputCount = 1;

    if (clump.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dirty_dust_from_clump: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    }

    if (dirty_dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dirty_dust_from_clump: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    } 

    var itemOwner = dirty_dust.registryName.split(":")[0];
    if (!(itemOwner == "mekanism" || itemOwner == "jaopca")) {

        <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dirty_dust/from_clump",
        {
            input: {
                ingredient: {
                    item: clump.registryName
                }
                
            },
            output: {
                item: dirty_dust.registryName
            }
        });
    }

    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/dirty_dust/from_clump",
        {
            ingredients: [
                {
                    item: clump.registryName
                }
            ], 
            results: [
                    {
                        item: dirty_dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/dirty_dust/from_clump",
        {
            process_time: 300,
            ingredient: {
                item: clump.registryName
            },
            results: [
                {
                    item: dirty_dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/dirty_dust/from_clump",
        {
            secondaries: [],
            result: {
                item: dirty_dust.registryName,
                count: outputCount
            },
            input: {
                item: clump.registryName
            },
            energy: 3000
        });

    // logger.info("crushing_dirty_dust_from_clump with " + material + " succesfully ran!");
}

public function crushing_gem_dust_from_ore(material as string) as void {
	var oresItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var gemItemTag = BracketHandlers.getTag("forge:gems/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ore = oresItemTag.first();
    var gem = gemItemTag.first();
    var dust = dustItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("crushing_gem_from_ore: No items exist in the ItemTag " + oresItemTag.commandString);
        return;
    }

    if (gem.matches(<item:minecraft:air>)) {
        // logger.info("crushing_gem_from_ore: No items exist in the ItemTag " + gemItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_gem_dust_from_ore: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    var outputCount = 2;

    if (material == "redstone") {
        outputCount = 9;
    } else if (material == "lapis") {
        outputCount = 13;
    }

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/gem/from_ore");
    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/gem/from_ore",
        {
            input: {
                ingredient: {
                    tag: "forge:ores/" + material
                }
                
            },
            output: {
                item: dust.registryName,
                count: outputCount
            }
        });

    <recipetype:create:milling>.removeByName("jaopca:create.ore_to_material_milling." + material);
    <recipetype:create:milling>.removeByName("create:milling/" + material + "_ore");
    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/gem/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });
        
    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_crushed_crushing." + material);
    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_material_crushing." + material);
    <recipetype:create:crushing>.removeByName("create:crushing/" + material + "_ore");
    <recipetype:create:crushing>.addJSONRecipe("create/crushing/" + material + "/gem/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/gem/from_ore",
        {
            process_time: 300,
            ingredient: {
                tag: "forge:ores/" + material
            },
            results: [
                {
                    item: dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_" + material);
    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/gem/from_ore",
        {
            secondaries: [],
            result: {
                item: dust.registryName,
                count: outputCount
            },
            input: {
                tag: "forge:ores/" + material
            },
            energy: 3000
        });

    // logger.info("crushing_gem_from_clump with " + material + " succesfully ran!");
}

public function crushing_clump_from_ore(material as string) as void {
	var oresItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var clumpItemTag = BracketHandlers.getTag("mekanism:clumps/" + material);
    var ore = oresItemTag.first();
    var clump = clumpItemTag.first();

    var outputCount = 2;
    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("crushing_clump_from_ore: No items exist in the ItemTag " + oresItemTag.commandString);
        return;
    }

    if (clump.matches(<item:minecraft:air>)) {
        // logger.info("crushing_clump_from_ore: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    }

    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/clump/from_ore",
        {
            input: {
                ingredient: {
                    tag: "forge:ores/" + material
                }
                
            },
            output: {
                item: clump.registryName,
                count: outputCount
            }
        });

    <recipetype:create:milling>.removeByName("jaopca:create.ore_to_crushed_milling." + material);
    <recipetype:create:milling>.removeByName("jaopca:create.ore_to_material_milling." + material);
    <recipetype:create:milling>.removeByName("create:milling/" + material + "_ore");
    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/clump/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: clump.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_crushed_crushing." + material);
    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_material_crushing." + material);
    <recipetype:create:crushing>.removeByName("create:crushing/" + material + "_ore");
    <recipetype:create:crushing>.addJSONRecipe("create/crushing/" + material + "/clump/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: clump.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.ore_to_chunks." + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_chunks");
    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/clump/from_ore",
        {
            process_time: 300,
            ingredient: {
                tag: "forge:ores/" + material
            },
            results: [
                {
                    item: clump.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_" + material);
    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/clump/from_ore",
        {
            secondaries: [],
            result: {
                item: clump.registryName,
                count: outputCount
            },
            input: {
                tag: "forge:ores/" + material
            },
            energy: 3000
        });

    // logger.info("crushing_clump_from_clump with " + material + " succesfully ran!");
}