#priority 900

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

//Otehrs
<tag:forge:wg_stone>.removeBlocks([<blockstate:create:natural_scoria>.block]);