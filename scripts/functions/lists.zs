#priority 3001

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

logger.info("Prio Test: lists");

public function getMaterials() as string[] {
    var materials as string[] = [

        //Vanilla
        "iron",
        "gold",
        "coal",
        "lapis",
        "emerald",
        "quartz",
        "diamond",
        "redstone",

        //Gems
        "amber",
        //"amethyst",
        //"anglesite",
        //"apatite",
        "arcane_crystal",
        "archaic",
        //"benitoite",
        //"black_opal",
        "black_quartz",
        //"certus_quartz",
        //"charged_certus_quartz",
        "dark_pearl",
        "dimensional_shard",
        //"draconium",
        "ebonite",
        //"electrotine",
        "fiery_glass",
        "foulite",
        "imperium",
        "inferium",
        "insanium",
        //"lava_crystal",
        //"malachite",
        "moonstone",
        "niter",
        //"peridot",
        "prosperity",
        "prudentium",
        //"pyrite",
        //"ruby",
        "runestone",
        "sapphire",
        //"sticky",
        "sulfur",
        "supremium",
        "tertium",
        "w",
        //"white_opal",
        //"zanite",

        //Other
        //"adamantium",
        "aluminum",
        "aluminium",
        //"ardite",
        "bauxite",
        "bismuth",
        //"boron",
        //"chrome",
        //"cobalt",
        "copper",
        //"galena",
        "iridium",
        "lead",
        "linium",
        "lithium",
        //"lucky",
        //"magnesium",
        //"mana_infused",
        //"mithril",
        "nagrilite",
        "neridium",
        "nickel",
        "osmium",
        "platinum",
        "pyridium",
        "rockroot",
        //"runite",
        "silver",
        "soulium",
        "steel",
        "tenebrum",
        //"thorium",
        "tin",
        //"tungsten",
        "uraninite",
        "uranium",
        "vulcanite",
        //"xp",
        //"yellorite",
        "zinc",

        "glowstone",
        "obsidian",
        
        "aluminum_steel",
        "biotite",
        "bismuth_brass",
        "bismuth_steel",
        "brass",
        "bronze",
        "compressed_iron",
        "electrum",
        "enderium",
        "invar",
        "lumium",
        "neptunium",
        "quicksilver",
        "redstone_alloy",
        "refined_iron",
        "signalum",
        "magmite",
        "cave_magmite"
    ];
    return materials;
}

public function getForms() as string[] {
    var forms as string[] = [
        "nuggets",
        "ingots",
        "gems",
        "storage_blocks",
        "dusts",
        "gears",
        "plates",
        "rods",
        "dirty_dusts",
        "clumps",
        "shards",
        "crystals"
    ];
    return forms;
}

public function getModPriorities() as string[] {
    var modPriorities as string[] = [
        "minecraft",
        "dannys_ores",
        "kubejs",
        "silents_mechanisms",
        "mekanism",
        "immersiveengineering",
        "create",
        "pneumaticcraft",
        "jaopca",
        "nethercraft",
        "forbidden_arcanus",
        "quark",
        "botania"
    ];
    return modPriorities;
}