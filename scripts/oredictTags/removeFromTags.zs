#priority 2002

//Dye tag cleanup
for item in <tag:forge:dyes>.items {
    // print(item.registryName + " " + item.displayName);
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes>.removeItems(item); }
}
for item in <tag:forge:dyes/black>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/black>.removeItems(item); }
}
for item in <tag:forge:dyes/white>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/white>.removeItems(item); }
}
for item in <tag:forge:dyes/orange>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/orange>.removeItems(item); }
}
for item in <tag:forge:dyes/magenta>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/magenta>.removeItems(item); }
}
for item in <tag:forge:dyes/light_blue>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/light_blue>.removeItems(item); }
}
for item in <tag:forge:dyes/yellow>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/yellow>.removeItems(item); }
}
for item in <tag:forge:dyes/lime>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/lime>.removeItems(item); }
}
for item in <tag:forge:dyes/pink>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/pink>.removeItems(item); }
}
for item in <tag:forge:dyes/gray>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/gray>.removeItems(item); }
}
for item in <tag:forge:dyes/light_gray>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/light_gray>.removeItems(item); }
}
for item in <tag:forge:dyes/cyan>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/cyan>.removeItems(item); }
}
for item in <tag:forge:dyes/purple>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/purple>.removeItems(item); }
}
for item in <tag:forge:dyes/blue>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/blue>.removeItems(item); }
}
for item in <tag:forge:dyes/brown>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/brown>.removeItems(item); }
}
for item in <tag:forge:dyes/green>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/green>.removeItems(item); }
}
for item in <tag:forge:dyes/red>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:forge:dyes/red>.removeItems(item); }
}
for item in <tag:botania:dyes>.items {
    var itemOwner = item.registryName.split(":")[0];
        if (itemOwner != "minecraft") { <tag:botania:dyes>.removeItems(item); }
}

//Ores

//<tag:forge:ores>.removeItems([<item:silents_mechanisms:uranium_ore>, <item:silents_mechanisms:bismuth_ore>, <item:silents_mechanisms:zinc_ore>, <item:silents_mechanisms:platinum_ore>, <item:silents_mechanisms:nickel_ore>, <item:silents_mechanisms:lead_ore>, <item:silents_mechanisms:silver_ore>, <item:silents_mechanisms:tin_ore>, <item:silents_mechanisms:copper_ore>, <item:silents_mechanisms:copper_ore>, <item:create:copper_ore>, <item:create:zinc_ore>]);
//<tag:forge:ores>.removeBlocks([<blockstate:silents_mechanisms:uranium_ore>.block, <blockstate:silents_mechanisms:bismuth_ore>.block, <blockstate:silents_mechanisms:zinc_ore>.block, <blockstate:silents_mechanisms:platinum_ore>.block, <blockstate:silents_mechanisms:nickel_ore>.block, <blockstate:silents_mechanisms:lead_ore>.block, <blockstate:silents_mechanisms:silver_ore>.block, <blockstate:silents_mechanisms:tin_ore>.block, <blockstate:silents_mechanisms:copper_ore>.block, <blockstate:silents_mechanisms:copper_ore>.block, <blockstate:create:copper_ore>.block, <blockstate:create:zinc_ore>.block]);
<tag:forge:ores/copper>.removeBlocks([<blockstate:mekanism:copper_ore>.block, <blockstate:silents_mechanisms:copper_ore>.block, <blockstate:create:copper_ore>.block]);
<tag:forge:ores/zinc>.removeBlocks([<blockstate:silents_mechanisms:zinc_ore>.block, <blockstate:create:zinc_ore>.block]);
<tag:forge:ores/tin>.removeBlocks([<blockstate:mekanism:tin_ore>.block, <blockstate:silents_mechanisms:tin_ore>.block]);
<tag:forge:ores/silver>.removeBlocks([<blockstate:silents_mechanisms:silver_ore>.block]);
<tag:forge:ores/lead>.removeBlocks([<blockstate:silents_mechanisms:lead_ore>.block]);
<tag:forge:ores/uranium>.removeBlocks([<blockstate:silents_mechanisms:uranium_ore>.block]);
<tag:forge:ores/bauxite>.removeBlocks([<blockstate:silents_mechanisms:bauxite_ore>.block]);
<tag:forge:ores/platinum>.removeBlocks([<blockstate:silents_mechanisms:platinum_ore>.block]);
<tag:forge:ores/bismuth>.removeBlocks([<blockstate:silents_mechanisms:bismuth_ore>.block]);
<tag:forge:ores/osmium>.removeBlocks([<blockstate:mekanism:osmium_ore>.block]);

//Ingots

for item in <tag:silents_mechanisms:ingots/steels>.items {
    <tag:silents_mechanisms:ingots/steels>.removeItems(item);
}

//Dusts

<tag:omegacraft:dirty_dusts/bismuth>.removeItems([<item:jaopca:omegacraft_dirty_dusts.bismuth>]);
<tag:omegacraft:dirty_dusts/uranium>.removeItems([<item:jaopca:omegacraft_dirty_dusts.uranium>]);
<tag:omegacraft:dirty_dusts/nickel>.removeItems([<item:jaopca:omegacraft_dirty_dusts.nickel>]);
<tag:omegacraft:dirty_dusts/platinum>.removeItems([<item:jaopca:omegacraft_dirty_dusts.platinum>]);
<tag:omegacraft:dirty_dusts/zinc>.removeItems([<item:jaopca:omegacraft_dirty_dusts.zinc>]);
<tag:omegacraft:dirty_dusts/osmium>.removeItems([<item:jaopca:omegacraft_dirty_dusts.osmium>]);
<tag:omegacraft:dirty_dusts/steel>.removeItems([<item:jaopca:omegacraft_dirty_dusts.steel>]);
<tag:omegacraft:dirty_dusts/iron>.removeItems([<item:omegacraft:dirty_dust_iron>]);
<tag:omegacraft:dirty_dusts/gold>.removeItems([<item:omegacraft:dirty_dust_gold>]);
<tag:omegacraft:dirty_dusts/copper>.removeItems([<item:omegacraft:dirty_dust_copper>]);
<tag:omegacraft:dirty_dusts/tin>.removeItems([<item:omegacraft:dirty_dust_tin>]);
<tag:omegacraft:dirty_dusts/lead>.removeItems([<item:omegacraft:dirty_dust_lead>]);
<tag:omegacraft:dirty_dusts/silver>.removeItems([<item:omegacraft:dirty_dust_silver>]);
<tag:omegacraft:dirty_dusts/aluminum>.removeItems([<item:omegacraft:dirty_dust_aluminum>]);
<tag:omegacraft:dirty_dusts/magmite>.removeItems([<item:omegacraft:dirty_dust_magmite>]);
<tag:omegacraft:dirty_dusts/cave_magmite>.removeItems([<item:omegacraft:dirty_dust_cave_magmite>]);

//Others
<tag:forge:wg_stone>.removeBlocks([<blockstate:create:natural_scoria>.block]);