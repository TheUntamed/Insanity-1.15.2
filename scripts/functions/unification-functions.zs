#priority 3000
//Has to be loaded before all Recipe and tag changes

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

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
	for item in tag.items {
		if (!item.matches(getPreferredItemInTag(tag, modPriorities))) {
			tag.removeItems(item);
			removeAllProcessingFor(item);
			
			// Fallback recipe
			craftingTable.addShapeless(formatRecipeName(item) + "_conversion_recipe", tag.first(), [item]);
		}
	}
}

public function purgeOreTag(tag as MCTag) as void {
	for item in tag.items {
        var itemOwner = item.registryName.split(":")[0];
		if (!(itemOwner == "minecraft") && !(itemOwner == "dannys_ores")) {
			tag.removeItems(item);
			removeAllProcessingFor(item);
		}
	}
}

// Clean Recipes
// Minecraft

public function minecraft_smeltingAndBlasting_ingot_from_ore(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var ore = oreItemTag.first();
    var ingot = ingotItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

	if (ingot.matches(<item:minecraft:air>)) {
        // logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 1.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, ore);
    furnace.removeRecipe(ingot, ore);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_ore", ingot, oreItemTag, xp, cookingTime/2);
    //furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_ore", ingot, oreItemTag, xp, cookingTime);
}

public function minecraft_smeltingAndBlasting_ingot_from_dust(material as string) as void {
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
    blastFurnace.removeRecipe(ingot, dust);
    furnace.removeRecipe(ingot, dust);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_dust", ingot, dustItemTag, xp, cookingTime/2);
    //furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_dust", ingot, dustItemTag, xp, cookingTime);
}

public function mekanism_enriching_dust_from_ore(material as string) as void {
	switch (material) {
		case "redstone":
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
    //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_ore");
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

    var itemOwner = dirty_dust.registryName.split(":")[0];
    if (!(itemOwner == "mekanism" || itemOwner == "jaopca")) {

        if (dirty_dust.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
            return;
        }

        if (dust.matches(<item:minecraft:air>)) {
            // logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dustItemTag.commandString);
            return;
        } 

        //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_dirty_dust");
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

    var outputCount = 2;
    //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/nugget/from_clump");
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

        //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/clump/from_shard");
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

        //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/shard/from_crystal");
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


public function crushing_dust_from_gem(material as string) as void {
    var gemItemTag = BracketHandlers.getTag("forge:gems/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var gem = gemItemTag.first();
    var dust = dustItemTag.first();

    var outputCount = 1;

    if (gem.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_gem: No items exist in the ItemTag " + gemItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_ingot: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    //<recipetype:mekanism:crushing>.removeByName("jaopca:mekanism.material_to_dust." + material);
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

    //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_ingot");
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
    var blockItemTag = BracketHandlers.getTag("forge:storage_blocks/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var block = blockItemTag.first();
    var dust = dustItemTag.first();

    var outputCount = 9;

    if (block.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_block: No items exist in the ItemTag " + blockItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dust_from_block: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_block");
    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dust/from_block",
    {
        input: {
            ingredient: {
                item: block.registryName
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
                    item: block.registryName
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
                    item: block.registryName
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
                item: block.registryName
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
                item: block.registryName
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

        //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dirty_dust/from_clump");
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

    var outputCount = 2;
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

    //<recipetype:crafting>.removeByName("mekanism:processing/" + material + "/gem/from_ore");
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

    //<recipetype:create:milling>.removeByName("jaopca:create.ore_to_material_milling." + material);
    //<recipetype:create:milling>.removeByName("create:milling/" + material + "_ore");
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
        
    //<recipetype:create:crushing>.removeByName("jaopca:create.ore_to_crushed_crushing." + material);
    //<recipetype:create:crushing>.removeByName("jaopca:create.ore_to_material_crushing." + material);
    //<recipetype:create:crushing>.removeByName("create:crushing/" + material + "_ore");
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

    //<recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.ore_to_chunks." + material);
    //<recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_chunks");
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

    //<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_" + material);
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

public function crushing_dirty_dust_from_ore(material as string) as void {
	var oresItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var dirty_dustItemTag = BracketHandlers.getTag("mekanism:dirty_dusts/" + material);
    var ore = oresItemTag.first();
    var dirty_dust = dirty_dustItemTag.first();

    var outputCount = 2;
    if (ore.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dirty_dust_from_ore: No items exist in the ItemTag " + oresItemTag.commandString);
        return;
    }

    if (dirty_dust.matches(<item:minecraft:air>)) {
        // logger.info("crushing_dirty_dust_from_ore: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dirty_dust/from_ore");
    <recipetype:mekanism:crushing>.addJSONRecipe("mekanism/crushing/" + material + "/dirty_dust/from_ore",
        {
            input: {
                ingredient: {
                    tag: "forge:ores/" + material
                }
                
            },
            output: {
                item: dirty_dust.registryName,
                count: outputCount
            }
        });

    <recipetype:create:milling>.removeByName("jaopca:create.ore_to_crushed_milling." + material);
    <recipetype:create:milling>.removeByName("jaopca:create.ore_to_material_milling." + material);
    <recipetype:create:milling>.removeByName("create:milling/" + material + "_ore");
    <recipetype:create:milling>.addJSONRecipe("create/milling/" + material + "/dirty_dust/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: dirty_dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_crushed_crushing." + material);
    <recipetype:create:crushing>.removeByName("jaopca:create.ore_to_material_crushing." + material);
    <recipetype:create:crushing>.removeByName("create:crushing/" + material + "_ore");
    <recipetype:create:crushing>.addJSONRecipe("create/crushing/" + material + "/dirty_dust/from_ore",
        {
            ingredients: [
                {
                    tag: "forge:ores/" + material
                }
            ], 
            results: [
                    {
                        item: dirty_dust.registryName,
                        count: outputCount
                    }
            ]
        });

    <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.ore_to_chunks." + material);
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/" + material + "_chunks");
    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("silents_mechanisms/crushing/" + material + "/dirty_dust/from_ore",
        {
            process_time: 300,
            ingredient: {
                tag: "forge:ores/" + material
            },
            results: [
                {
                    item: dirty_dust.registryName,
                    count: outputCount
                }
            ]
        });

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_" + material);
    <recipetype:immersiveengineering:crusher>.addJSONRecipe("immersiveengineering/crusher/" + material + "/dirty_dust/from_ore",
        {
            secondaries: [],
            result: {
                item: dirty_dust.registryName,
                count: outputCount
            },
            input: {
                tag: "forge:ores/" + material
            },
            energy: 3000
        });

    // logger.info("crushing_dirty_dust_from_clump with " + material + " succesfully ran!");
}