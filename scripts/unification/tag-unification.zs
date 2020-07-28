#priority 1002

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

// var materials as string[] = [

//     //Vanilla
//     "iron",
//     "gold",
//     "coal",
//     "lapis",
//     "emerald",
//     "quartz",
//     "diamond",
//     "redstone",

//     //Gems
//     "amber",
//     //"amethyst",
//     //"anglesite",
//     //"apatite",
//     "arcane_crystal",
//     "archaic",
//     //"benitoite",
//     //"black_opal",
//     "black_quartz",
//     //"certus_quartz",
//     //"charged_certus_quartz",
//     "dark_pearl",
//     "dimensional_shard",
//     //"draconium",
//     "ebonite",
//     //"electrotine",
//     "fiery_glass",
//     "foulite",
//     "imperium",
//     "inferium",
//     "insanium",
//     //"lava_crystal",
//     //"malachite",
//     "moonstone",
//     "niter",
//     //"peridot",
//     "prosperity",
//     "prudentium",
//     //"pyrite",
//     //"ruby",
//     "runestone",
//     "sapphire",
//     //"sticky",
//     "sulfur",
//     "supremium",
//     "tertium",
//     "w",
//     //"white_opal",
//     //"zanite",

//     //Other
//     //"adamantium",
//     "aluminum",
//     "aluminium",
//     //"ardite",
//     "bauxite",
//     "bismuth",
//     //"boron",
//     //"chrome",
//     //"cobalt",
//     "copper",
//     //"galena",
//     "iridium",
//     "lead",
//     "linium",
//     "lithium",
//     //"lucky",
//     //"magnesium",
//     //"mana_infused",
//     //"mithril",
//     "nagrilite",
//     "neridium",
//     "nickel",
//     "osmium",
//     "platinum",
//     "pyridium",
//     "rockroot",
//     //"runite",
//     "silver",
//     "soulium",
//     "steel",
//     "tenebrum",
//     //"thorium",
//     "tin",
//     //"tungsten",
//     "uraninite",
//     "uranium",
//     "vulcanite",
//     //"xp",
//     //"yellorite",
//     "zinc",

//     "glowstone",
//     "obsidian",
    
//     "aluminum_steel",
//     "biotite",
//     "bismuth_brass",
//     "bismuth_steel",
//     "brass",
//     "bronze",
//     "compressed_iron",
//     "electrum",
//     "enderium",
//     "invar",
//     "lumium",
//     "neptunium",
//     "quicksilver",
//     "redstone_alloy",
//     "refined_iron",
//     "signalum",
//     "magmite",
//     "cave_magmite"
// ];

// var forms as string[] = [
//     "nuggets",
//     "ingots",
//     "gems",
//     "storage_blocks",
//     "dusts",
//     "gears",
//     "plates",
//     "rods",
//     "dirty_dusts",
//     "clumps",
//     "shards",
//     "crystals"
// ];

// var modPriorities as string[] = [
//     "minecraft",
//     "dannys_ores",
//     "kubejs",
//     "silents_mechanisms",
// 	"mekanism",
//     "immersiveengineering",
//     "create",
//     "pneumaticcraft",
//     "jaopca",
//     "nethercraft",
//     "forbidden_arcanus",
//     "quark",
//     "botania"
// ];

public function tagUnification() as void {
    logger.info("Prio Test: tag-unification");
    var materials = getMaterials();
    var forms = getForms();
    var modPriorities = getModPriorities();
    for m in materials {
        for f in forms {
            iterateTags(m, f, modPriorities);
        }
    }
}

private function iterateTags(material as string, form as string, mP as string[]) as void {
    var itemTag = BracketHandlers.getTag("forge:" + form +"/" + material);
    if (itemTag.isItemTag) {
        if (itemTag.items.length > 1) {
            purgeItemTag(itemTag, mP);
        }
    }
}



// // remove and add processing recipes
// for material in materials {
//     minecraft_crafting_table(material);
//     minecraft_crafting_ingot_from_block(material);

//     minecraft_blasting_ingot_from_dust(material);
//     mekanism_enriching_dust_from_ore(material);
//     mekanism_enriching_gem_from_ore(material);
//     create_splashing_dust_from_dirty_dust(material);
//     create_splashing_nugget_from_clump(material);
//     crushing_dust_from_gem(material);
//     crushing_dust_from_ingot(material);
//     crushing_dirty_dust_from_clump(material);
//     crushing_clump_from_ore(material);
//     crushing_dust_from_block(material);
//     crushing_gem_dust_from_ore(material);
//     mekanism_enriching_dust_from_dirty_dust(material);
//     mekanism_enriching_nugget_from_clump(material);
//     mekanism_purifying_clump_from_shard(material);
//     mekanism_injecting_shard_from_ore(material);
//     mekanism_injecting_shard_from_crystal(material);
// }