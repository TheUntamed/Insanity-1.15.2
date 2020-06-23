#priority 995
//Has to be called after main

import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var materials as string[] = [
    "coal",
    "iron",
    "gold",
    "diamond",
    "lapis",
    "emerald",
    "quartz",
    "redstone",
    "glowstone",
    "obsidian",
    
    "aluminum",
    "aluminum_steel",
    "bismuth",
    "bismuth_brass",
    "bismuth_steel",
    "brass",
    "bronze",
    "compressed_iron",
    "copper",
    "electrum",
    "enderium",
    "invar",
    "lead",
    "lumium",
    "neptunium",
    "nickel",
    "platinum",
    "quicksilver",
    "redstone_alloy",
    "refined_iron",
    "signalum",
    "silver",
    "steel",
    "tin",
    "tungsten",
    "uranium",
    "zinc"
];

for material in materials {
    minecraft_smeltingAndBlasting_ingot_from_ore(material);
    minecraft_smeltingAndBlasting_ingot_from_dust(material);
    mekanism_enriching_dust_from_ore(material);
    mekanism_crushing_dust_from_ingot(material);
    mekanism_injecting_shard_from_ore(material);
    mekanism_enriching_dust_from_dirty_dust(material);
    mekanism_crushing_dirty_dust_from_clump(material);
    mekanism_injecting_clump_from_shard(material);
    mekanism_injecting_shard_from_crystal(material);
}