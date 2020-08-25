#priority 101

public function postUnificationAdditions() as void {

    // logger.info("Prio Test: post-unification-additions");

    addCampfire(<item:kubejs:fire_clay_brick>, <item:kubejs:compressed_clay_ball>, 1.0, 200);

    silentsMechanismsAlloySmelting("silents_mechanisms/alloy_smelting/bronze", "forge:ingots/copper", 3, "forge:ingots/tin", 1, "silents_mechanisms:bronze_ingot", 4);
    
    mekanismEnriching("mekanism/enriching/uraninite", "forge:ingots/uranium", <item:powah:uraninite>.registryName, 2);

    atumSpinning("atum/spinning/pelt/to_string", "mysticalworld:pelt", "minecraft:string", 2);
}