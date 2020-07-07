#priority 101

for item in <tag:forge:ingots>.items {
    removeFurnaceRecipe(item);
}

<recipetype:mekanism:crushing>.removeRecipe(<item:mekanism:dust_copper>);

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
//<recipetype:mekanism:crushing>.removeByName("mekanism:processing/copper/dust/from_ingot");


// Powah

// Example method to add Energizing recipe
// Arguments: output, energy (max = 2147483647), inputs (max = 6 items/tags)
// Energizing.addRecipe(<item:powah:dielectric_paste>, 1000, [<tag:minecraft:coals>, <item:minecraft:clay>]);

// Example method to remove Energizing recipe
// Arguments: output
// Energizing.removeRecipe(<item:powah:energised_steel>);

// Example method to clear all Energizing recipes
// Energizing.clearAll();