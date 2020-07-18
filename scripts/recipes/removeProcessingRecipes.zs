#priority 101

for item in <tag:forge:ingots>.items {
    removeFurnaceRecipe(item);
}

// mekanism:crushing
// <recipetype:mekanism:crushing>.removeByName("");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/copper/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/iron/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/gold/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/tin/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/osmium/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/bronze/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/platinum/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/zinc/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/bismuth/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/brass/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/bismuth_brass/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/aluminum_steel/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/bismuth_steel/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/lumium/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/signalum/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/enderium/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/invar/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/steel/ingot_to_dust");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/coal/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/electrum/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/uranium/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("crafttweaker:processing/silver/dust/from_ingot");
// <recipetype:mekanism:crushing>.removeByName("mekanism:processing/coal/to_dust");
// <recipetype:mekanism:crushing>.removeByName("jaopca:mekanism.material_to_dust.lead");
// <recipetype:mekanism:crushing>.removeByName("jaopca:mekanism.material_to_dust.invar");
// <recipetype:silents_mechanisms:crushing>.removeByName("jaopca:silents_mechanisms.material_to_dust.invar");
// <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/invar_dust_from_ingot");

// immersiveengineering:crusher
// <recipetype:immersiveengineering:crusher>.removeByName("");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_iron");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_iron");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_lead");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_lead");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_silver");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_silver");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_silver");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_gold");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_gold");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_copper");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_copper");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_tin");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_tin");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_uranium");
// <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_uranium");

// mekanism:enriching
// <recipetype:mekanism:enriching>.removeByName("mekanism:processing/sulfur/dust/from_ore");

// <recipetype:mekanism:crushing>.removeByName(item);
// <recipetype:mekanism:combining>.removeByName(item);
// <recipetype:mekanism:injecting>.removeByName(item);
// <recipetype:mekanism:enriching>.removeByName(item);
// <recipetype:mekanism:purifying>.removeByName(item);
// <recipetype:immersiveengineering:crusher>.removeByName(item);
// <recipetype:immersiveengineering:metal_press>.removeByName(item);
// <recipetype:immersiveengineering:alloy>.removeByName(item);
// <recipetype:immersiveengineering:arc_furnace>.removeByName(item);
// <recipetype:immersiveengineering:blast_furnace>.removeByName(item);


// Powah

// Example method to add Energizing recipe
// Arguments: output, energy (max = 2147483647), inputs (max = 6 items/tags)
// Energizing.addRecipe(<item:powah:dielectric_paste>, 1000, [<tag:minecraft:coals>, <item:minecraft:clay>]);

// Example method to remove Energizing recipe
// Arguments: output
// Energizing.removeRecipe(<item:powah:energised_steel>);

// Example method to clear all Energizing recipes
// Energizing.clearAll();