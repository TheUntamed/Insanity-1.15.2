#priority 102

public function postUnificationRemovals() as void {

    logger.info("Prio Test: post-unification-removals");

    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/redstone/from_ore");

    <recipetype:create:mixing>.removeByName("create:mixing/crushed_brass");
    <recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy_1");
    <recipetype:create:mixing>.removeByName("create:mixing/brass_ingot");
    <recipetype:create:mixing>.removeByName("create:mixing/gunpowder");
    <recipetype:create:mixing>.removeByName("create:mixing/brass_nugget");

    <recipetype:create:crushing>.removeByName("mekanism:processing/lapis_lazuli/to_dust");
    <recipetype:create:crushing>.removeByName("create:crushing/glowstone");
    <recipetype:create:crushing>.removeByName("create:crushing/nether_quartz_ore");
    <recipetype:create:crushing>.removeByName("create:crushing/prismarine_crystals");

    <recipetype:create:splashing>.removeByName("create:splashing/crushed_brass");

    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/redstone");
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/glowstone_dust");
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/quartz_from_blocks");

    <recipetype:silents_mechanisms:alloy_smelting>.removeByName("silents_mechanisms:alloy_smelting/bronze_ingot");

    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/quartz2");
    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/quartz");
    <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coal_block");

    // <recipetype:mekanism:crushing>.removeByName("");
    // <recipetype:mekanism:combining>.removeByName("");
    // <recipetype:mekanism:injecting>.removeByName("");
    // <recipetype:mekanism:enriching>.removeByName("");
    // <recipetype:mekanism:purifying>.removeByName("");
    // <recipetype:immersiveengineering:crusher>.removeByName("");
    // <recipetype:immersiveengineering:metal_press>.removeByName("");
    // <recipetype:immersiveengineering:alloy>.removeByName("");
    // <recipetype:immersiveengineering:arc_furnace>.removeByName("");
    // <recipetype:immersiveengineering:blast_furnace>.removeByName("");

    // Example method to clear all Energizing recipes
    // Energizing.clearAll();
}