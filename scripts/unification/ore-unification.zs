#priority 998

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

for itemTag in materials {
        if (itemTag.isItemTag) {
            if (itemTag.items.length > 1) {
                purgeOreTag(itemTag);
            }
        }
}