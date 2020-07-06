#priority 997

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

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
    "malachite",
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
    "teslatite",
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

var modPriorities as string[] = [
    "minecraft",
    "dannys_ores",
    "kubejs",
    "silents_mechanisms",
	"mekanism",
    "create",
    "pneumaticcraft",
    "jaopca",
    "omegacraft",
    "immersiveengineering",
    "nethercraft",
    "forbidden_arcanus",
    "bluepower",
    "quark",
    "botania"
];

for m in materials {
    for f in forms {
        iterateTags(m, f, modPriorities);
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

// for material, types in materials {
//     for type, itemTag in types {
//         if (itemTag.isItemTag) {
//             if (itemTag.items.length > 1) {
//                 purgeItemTag(itemTag, modPriorities);
//             }
//         }
//     }
// }