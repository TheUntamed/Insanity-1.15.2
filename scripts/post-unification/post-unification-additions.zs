#priority 2001

public function postUnificationAdditions() as void {

    logger.info("Prio Test: post-unification-additions");

    silentsMechanismsAlloySmelting("silents_mechanisms/alloy_smelting/bronze", "forge:ingots/copper", 3, "forge:ingots/tin", 1, "silents_mechanisms:bronze_ingot", 4);
    
    mekanismEnriching("mekanism/enriching/uraninite", "forge:ingots/uranium", <item:powah:uraninite>.registryName, 2);
}