#priority 2003

logger.info("Prio Test: post-unification-removals");

public function postUnificationRemovals() as void {
    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/redstone/from_ore"); //Doesn't work. Why?
    <recipetype:create:mixing>.removeByName("create:mixing/crushed_brass");
    <recipetype:create:crushing>.removeByName("mekanism:processing/lapis_lazuli/to_dust");
    <recipetype:silents_mechanisms:crushing>.removeByName("silents_mechanisms:crushing/redstone");

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