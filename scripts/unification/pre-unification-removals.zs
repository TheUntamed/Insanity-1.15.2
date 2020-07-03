#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;

<recipetype:mekanism:combining>.removeAll();

//Dusts
<tag:forge:dusts>.removeItems([<item:silents_mechanisms:iron_chunks>, <item:silents_mechanisms:gold_chunks>, <item:silents_mechanisms:copper_chunks>, <item:silents_mechanisms:tin_chunks>, <item:silents_mechanisms:silver_chunks>, <item:silents_mechanisms:lead_chunks>, <item:silents_mechanisms:nickel_chunks>, <item:silents_mechanisms:platinum_chunks>, <item:silents_mechanisms:zinc_chunks>, <item:silents_mechanisms:uranium_chunks>, <item:silents_mechanisms:bauxite_chunks>, <item:silents_mechanisms:bismuth_chunks>]);
<tag:forge:dusts>.removeItems([<item:omegacraft:dirty_dust_iron>, <item:omegacraft:dirty_dust_gold>, <item:omegacraft:dirty_dust_copper>, <item:omegacraft:dirty_dust_tin>, <item:omegacraft:dirty_dust_silver>, <item:omegacraft:dirty_dust_lead>, <item:omegacraft:dirty_dust_aluminum>]);
<tag:forge:dusts/iron>.removeItems([<item:silents_mechanisms:iron_chunks>, <item:omegacraft:dirty_dust_iron>]);
<tag:forge:dusts/gold>.removeItems([<item:silents_mechanisms:gold_chunks>, <item:omegacraft:dirty_dust_gold>]);
<tag:forge:dusts/copper>.removeItems([<item:silents_mechanisms:copper_chunks>, <item:omegacraft:dirty_dust_copper>]);
<tag:forge:dusts/tin>.removeItems([<item:silents_mechanisms:tin_chunks>, <item:omegacraft:dirty_dust_tin>]);
<tag:forge:dusts/silver>.removeItems([<item:silents_mechanisms:silver_chunks>, <item:omegacraft:dirty_dust_silver>]);
<tag:forge:dusts/lead>.removeItems([<item:silents_mechanisms:lead_chunks>, <item:omegacraft:dirty_dust_lead>]);
<tag:forge:dusts/nickel>.removeItems([<item:silents_mechanisms:nickel_chunks>]);
<tag:forge:dusts/platinum>.removeItems([<item:silents_mechanisms:platinum_chunks>]);
<tag:forge:dusts/zinc>.removeItems([<item:silents_mechanisms:zinc_chunks>]);
<tag:forge:dusts/uranium>.removeItems([<item:silents_mechanisms:uranium_chunks>]);
<tag:forge:dusts/aluminum>.removeItems([<item:silents_mechanisms:bauxite_chunks>, <item:omegacraft:dirty_dust_aluminum>]);
<tag:forge:dusts/bismuth>.removeItems([<item:silents_mechanisms:bismuth_chunks>]);
