#priority 995
//Has to be called after main

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

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
    "amethyst",
    //"anglesite",
    "apatite",
    "arcane_crystal",
    "archaic",
    //"benitoite",
    "black_opal",
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
    "moonstone",
    "niter",
    "peridot",
    "prosperity",
    "prudentium",
    "pyrite",
    "ruby",
    "runestone",
    "sapphire",
    //"sticky",
    "sulfur",
    "supremium",
    "tertium",
    "w",
    "white_opal",
    "zanite",

    //Other
    "adamantium",
    "aluminum",
    "aluminium",
    //"ardite",
    "bauxite",
    "bismuth",
    "boron",
    "chrome",
    //"cobalt",
    "copper",
    "galena",
    "iridium",
    "lead",
    "linium",
    "lithium",
    //"lucky",
    "magnesium",
    "mana_infused",
    "mithril",
    "nagrilite",
    "nickel",
    "osmium",
    "platinum",
    "pyridium",
    "rockroot",
    "runite",
    "silver",
    "soulium",
    "steel",
    "tenebrum",
    "thorium",
    "tin",
    "tungsten",
    "uraninite",
    "uranium",
    "vulcanite",
    //"xp",
    //"yellorite",
    "zinc",


    "glowstone",
    "obsidian",
    
    "aluminum_steel",
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
    "signalum"
];

for material in materials {
    minecraft_smeltingAndBlasting_ingot_from_ore(material);
    minecraft_smeltingAndBlasting_ingot_from_dust(material);
    mekanism_enriching_dust_from_ore(material);
    mekanism_crushing_dust_from_ingot(material);
    mekanism_crushing_dirty_dust_from_clump(material);
    mekanism_crushing_dirty_dust_from_ore(material);
    mekanism_crushing_dust_from_block(material);
    mekanism_injecting_shard_from_ore(material);
    mekanism_enriching_dust_from_dirty_dust(material);
    mekanism_enriching_nugget_from_clump(material);
    mekanism_injecting_clump_from_shard(material);
    mekanism_injecting_shard_from_crystal(material);
}