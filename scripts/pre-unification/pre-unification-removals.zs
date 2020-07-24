#priority 2101

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

logger.info("Prio Test: pre-unification-removals");

public function preUnificationRemovals() as void {
    <recipetype:mekanism:combining>.removeAll();
    blastFurnace.removeAll();

    for item in <tag:forge:ingots>.items {
    furnace.removeRecipe(item);
    }

    for item in <tag:forge:gems>.items {
    logger.info("Removing furnace recipe for gem " + item.registryName);
    furnace.removeRecipe(item);
    }

    furnace.removeRecipe(<item:minecraft:redstone>);

    <tag:forge:dusts>.removeItems([<item:silents_mechanisms:iron_chunks>, <item:silents_mechanisms:gold_chunks>, <item:silents_mechanisms:copper_chunks>, <item:silents_mechanisms:tin_chunks>, <item:silents_mechanisms:silver_chunks>, <item:silents_mechanisms:lead_chunks>, <item:silents_mechanisms:nickel_chunks>, <item:silents_mechanisms:platinum_chunks>, <item:silents_mechanisms:zinc_chunks>, <item:silents_mechanisms:uranium_chunks>, <item:silents_mechanisms:bauxite_chunks>, <item:silents_mechanisms:bismuth_chunks>]);
    <tag:forge:dusts/iron>.removeItems([<item:silents_mechanisms:iron_chunks>]);
    <tag:forge:dusts/gold>.removeItems([<item:silents_mechanisms:gold_chunks>]);
    <tag:forge:dusts/copper>.removeItems([<item:silents_mechanisms:copper_chunks>]);
    <tag:forge:dusts/tin>.removeItems([<item:silents_mechanisms:tin_chunks>]);
    <tag:forge:dusts/silver>.removeItems([<item:silents_mechanisms:silver_chunks>]);
    <tag:forge:dusts/lead>.removeItems([<item:silents_mechanisms:lead_chunks>]);
    <tag:forge:dusts/nickel>.removeItems([<item:silents_mechanisms:nickel_chunks>]);
    <tag:forge:dusts/platinum>.removeItems([<item:silents_mechanisms:platinum_chunks>]);
    <tag:forge:dusts/zinc>.removeItems([<item:silents_mechanisms:zinc_chunks>]);
    <tag:forge:dusts/uranium>.removeItems([<item:silents_mechanisms:uranium_chunks>]);
    <tag:forge:dusts/aluminum>.removeItems([<item:silents_mechanisms:bauxite_chunks>]);
    <tag:forge:dusts/bismuth>.removeItems([<item:silents_mechanisms:bismuth_chunks>]);

    <tag:forge:gems/quartz>.removeItems([<item:botania:quartz_dark>, <item:botania:quartz_mana>, <item:botania:quartz_blaze>, <item:botania:quartz_lavender>, <item:botania:quartz_red>, <item:botania:quartz_elven>, <item:botania:quartz_sunny>]);
}
