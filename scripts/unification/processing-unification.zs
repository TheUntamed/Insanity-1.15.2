#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function processingUnification() as void {
    logger.info("Prio Test: processing-functions!");
    var materials = getMaterials();
    for material in materials {
        minecraft_crafting_table(material);
        minecraft_crafting_ingot_from_block(material);

        minecraft_blasting_ingot_from_dust(material);
        mekanism_enriching_dust_from_ore(material);
        mekanism_enriching_gem_from_ore(material);
        create_splashing_dust_from_dirty_dust(material);
        create_splashing_nugget_from_clump(material);
        crushing_dust_from_gem(material);
        crushing_dust_from_ingot(material);
        crushing_dirty_dust_from_clump(material);
        crushing_clump_from_ore(material);
        crushing_dust_from_block(material);
        crushing_gem_dust_from_ore(material);
        mekanism_enriching_dust_from_dirty_dust(material);
        mekanism_enriching_nugget_from_clump(material);
        mekanism_purifying_clump_from_shard(material);
        mekanism_injecting_shard_from_ore(material);
        mekanism_injecting_shard_from_crystal(material);
    }
}