#priority 999

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var materials as MCTag[] = [

    //Vanilla
    <tag:forge:ores/iron>,
    <tag:forge:ores/gold>,
    <tag:forge:ores/coal>,
    <tag:forge:ores/lapis>,
    <tag:forge:ores/emerald>,
    <tag:forge:ores/quartz>,
    <tag:forge:ores/diamond>,
    <tag:forge:ores/redstone>,


    //Gems
    <tag:forge:ores/amber>,
    <tag:forge:ores/amethyst>,
    <tag:forge:ores/anglesite>,
    <tag:forge:ores/apatite>,
    <tag:forge:ores/arcane_crystal>,
    //<tag:forge:ores/archaic>,
    <tag:forge:ores/benitoite>,
    <tag:forge:ores/black_opal>,
    <tag:forge:ores/black_quartz>,
    <tag:forge:ores/certus_quartz>,
    <tag:forge:ores/charged_certus_quartz>,
    //<tag:forge:ores/dark_pearl>,
    <tag:forge:ores/dimensional_shard>,
    <tag:forge:ores/draconium>,
    //<tag:forge:ores/ebonite>,
    <tag:forge:ores/electrotine>,
    <tag:forge:ores/fiery_glass>,
    <tag:forge:ores/foulite>,
    <tag:forge:ores/imperium>,
    <tag:forge:ores/inferium>,
    <tag:forge:ores/insanium>,
    <tag:forge:ores/lava_crystal>,
    <tag:forge:ores/moonstone>,
    <tag:forge:ores/niter>,
    <tag:forge:ores/peridot>,
    <tag:forge:ores/prosperity>,
    <tag:forge:ores/prudentium>,
    <tag:forge:ores/pyrite>,
    <tag:forge:ores/ruby>,
    <tag:forge:ores/runestone>,
    <tag:forge:ores/sapphire>,
    <tag:forge:ores/sticky>,
    <tag:forge:ores/sulfur>,
    <tag:forge:ores/supremium>,
    <tag:forge:ores/tertium>,
    <tag:forge:ores/w>,
    <tag:forge:ores/white_opal>,
    <tag:forge:ores/zanite>,

    //Other
    <tag:forge:ores/adamantium>,
    <tag:forge:ores/aluminum>,
    <tag:forge:ores/aluminium>,
    <tag:forge:ores/ardite>,
    <tag:forge:ores/bauxite>,
    <tag:forge:ores/bismuth>,
    <tag:forge:ores/boron>,
    <tag:forge:ores/chrome>,
    <tag:forge:ores/cobalt>,
    <tag:forge:ores/copper>,
    <tag:forge:ores/galena>,
    <tag:forge:ores/iridium>,
    <tag:forge:ores/lead>,
    <tag:forge:ores/linium>,
    <tag:forge:ores/lithium>,
    <tag:forge:ores/lucky>,
    <tag:forge:ores/magnesium>,
    <tag:forge:ores/mana_infused>,
    <tag:forge:ores/mithril>,
    //<tag:forge:ores/nagrilite>,
    <tag:forge:ores/nickel>,
    <tag:forge:ores/osmium>,
    <tag:forge:ores/platinum>,
    <tag:forge:ores/pyridium>,
    <tag:forge:ores/rockroot>,
    <tag:forge:ores/runite>,
    <tag:forge:ores/silver>,
    <tag:forge:ores/soulium>,
    <tag:forge:ores/steel>,
    //<tag:forge:ores/tenebrum>,
    <tag:forge:ores/thorium>,
    <tag:forge:ores/tin>,
    <tag:forge:ores/tungsten>,
    <tag:forge:ores/uraninite>,
    <tag:forge:ores/uranium>,
    <tag:forge:ores/vulcanite>,
    <tag:forge:ores/xp>,
    <tag:forge:ores/yellorite>,
    <tag:forge:ores/zinc>
];

// var materials as MCTag[string][string] = {

//     //Vanilla
//     "iron": { "ore": <tag:forge:ores/iron> },
//     "gold": { "ore": <tag:forge:ores/gold> },
//     "coal": { "ore": <tag:forge:ores/coal> },
//     "lapis_lazuli": { "ore": <tag:forge:ores/lapis> },
//     "emerald": { "ore": <tag:forge:ores/emerald> },
//     "quartz": { "ore": <tag:forge:ores/quartz> },
//     "diamond": { "ore": <tag:forge:ores/diamond> },
//     "redstone": { "ore": <tag:forge:ores/redstone> },


//     //Gems
//     "amber": { "ore": <tag:forge:ores/amber> },
//     "amethyst": { "ore": <tag:forge:ores/amethyst> },
//     "anglesite": { "ore": <tag:forge:ores/anglesite> },
//     "apatite": { "ore": <tag:forge:ores/apatite> },
//     "arcane_crystal": { "ore": <tag:forge:ores/arcane_crystal> },
//     //"archaic": { "ore": <tag:forge:ores/archaic> },
//     "benitoite": { "ore": <tag:forge:ores/benitoite> },
//     "black_opal": { "ore": <tag:forge:ores/black_opal> },
//     "black_quartz": { "ore": <tag:forge:ores/black_quartz> },
//     "certus_quartz": { "ore": <tag:forge:ores/certus_quartz> },
//     "charged_certus_quartz": { "ore": <tag:forge:ores/charged_certus_quartz> },
//     //"dark_pearl": { "ore": <tag:forge:ores/dark_pearl> },
//     "dimensional_shard": { "ore": <tag:forge:ores/dimensional_shard> },
//     "draconium": { "ore": <tag:forge:ores/draconium> },
//     //"ebonite": { "ore": <tag:forge:ores/ebonite> },
//     "electrotine": { "ore": <tag:forge:ores/electrotine> },
//     "fiery_glass": { "ore": <tag:forge:ores/fiery_glass> },
//     "foulite": { "ore": <tag:forge:ores/foulite> },
//     "imperium": { "ore": <tag:forge:ores/imperium> },
//     "inferium": { "ore": <tag:forge:ores/inferium> },
//     "insanium": { "ore": <tag:forge:ores/insanium> },
//     "lava_crystal": { "ore": <tag:forge:ores/lava_crystal> },
//     "moonstone": { "ore": <tag:forge:ores/moonstone> },
//     "niter": { "ore": <tag:forge:ores/niter> },
//     "peridot": { "ore": <tag:forge:ores/peridot> },
//     "prosperity": { "ore": <tag:forge:ores/prosperity> },
//     "prudentium": { "ore": <tag:forge:ores/prudentium> },
//     "pyrite": { "ore": <tag:forge:ores/pyrite> },
//     "ruby": { "ore": <tag:forge:ores/ruby> },
//     "runestone": { "ore": <tag:forge:ores/runestone> },
//     "sapphire": { "ore": <tag:forge:ores/sapphire> },
//     "sticky": { "ore": <tag:forge:ores/sticky> },
//     "sulfur": { "ore": <tag:forge:ores/sulfur> },
//     "supremium": { "ore": <tag:forge:ores/supremium> },
//     "tertium": { "ore": <tag:forge:ores/tertium> },
//     "w": { "ore": <tag:forge:ores/w> },
//     "white_opal": { "ore": <tag:forge:ores/white_opal> },
//     "zanite": { "ore": <tag:forge:ores/zanite> },

//     //Other
//     "adamantium": { "ore": <tag:forge:ores/adamantium> },
//     "aluminum": { "ore": <tag:forge:ores/aluminum> },
//     "aluminium": { "ore": <tag:forge:ores/aluminium> },
//     "ardite": { "ore": <tag:forge:ores/ardite> },
//     "bauxite": { "ore": <tag:forge:ores/bauxite> },
//     "bismuth": { "ore": <tag:forge:ores/bismuth> },
//     "boron": { "ore": <tag:forge:ores/boron> },
//     "chrome": { "ore": <tag:forge:ores/chrome> },
//     "cobalt": { "ore": <tag:forge:ores/cobalt> },
//     "copper": { "ore": <tag:forge:ores/copper> },
//     "galena": { "ore": <tag:forge:ores/galena> },
//     "iridium": { "ore": <tag:forge:ores/iridium> },
//     "lead": { "ore": <tag:forge:ores/lead> },
//     "linium": { "ore": <tag:forge:ores/linium> },
//     "lithium": { "ore": <tag:forge:ores/lithium> },
//     "lucky": { "ore": <tag:forge:ores/lucky> },
//     "magnesium": { "ore": <tag:forge:ores/magnesium> },
//     "mana_infused": { "ore": <tag:forge:ores/mana_infused> },
//     "mithril": { "ore": <tag:forge:ores/mithril> },
//     //"nagrilite": { "ore": <tag:forge:ores/nagrilite> },
//     "nickel": { "ore": <tag:forge:ores/nickel> },
//     "osmium": { "ore": <tag:forge:ores/osmium> },
//     "platinum": { "ore": <tag:forge:ores/platinum> },
//     "pyridium": { "ore": <tag:forge:ores/pyridium> },
//     "rockroot": { "ore": <tag:forge:ores/rockroot> },
//     "runite": { "ore": <tag:forge:ores/runite> },
//     "silver": { "ore": <tag:forge:ores/silver> },
//     "soulium": { "ore": <tag:forge:ores/soulium> },
//     "steel": { "ore": <tag:forge:ores/steel> },
//     //"tenebrum": { "ore": <tag:forge:ores/tenebrum> },
//     "thorium": { "ore": <tag:forge:ores/thorium> },
//     "tin": { "ore": <tag:forge:ores/tin> },
//     "tungsten": { "ore": <tag:forge:ores/tungsten> },
//     "uraninite": { "ore": <tag:forge:ores/uraninite> },
//     "uranium": { "ore": <tag:forge:ores/uranium> },
//     "vulcanite": { "ore": <tag:forge:ores/vulcanite> },
//     "xp": { "ore": <tag:forge:ores/xp> },
//     "yellorite": { "ore": <tag:forge:ores/yellorite> },
//     "zinc": { "ore": <tag:forge:ores/zinc> }
// };

for itemTag in materials {
    //for type, itemTag in types {
        if (itemTag.isItemTag) {
            if (itemTag.items.length > 1) {
                purgeOreTag(itemTag);
            }
        }
    //}
}