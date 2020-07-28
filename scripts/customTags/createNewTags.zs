#priority 2102

import crafttweaker.api.tag.MCTag;

logger.info("Prio Test: createNewTags");

public function createNewTags() as void {

    var custom as MCTag[] = [
        <tag:forge:disabled>,

        <tag:mekanism:dirty_dusts/redstone>,
        <tag:mekanism:clumps/redstone>,

        // <tag:forge:ores/obsidian>

        <tag:forge:saw>,

        <tag:forge:furnace>,
        <tag:forge:blast_furnace>,
        <tag:forge:smoker>,

        <tag:forge:stripped>,

        <tag:forge:storage_blocks/dark_quartz>,
        <tag:forge:storage_blocks/mana_quartz>,
        <tag:forge:storage_blocks/blaze_quartz>,
        <tag:forge:storage_blocks/lavender_quartz>,
        <tag:forge:storage_blocks/red_quartz>,
        <tag:forge:storage_blocks/elven_quartz>,
        <tag:forge:storage_blocks/sunny_quartz>,
        <tag:forge:storage_blocks/empowered_quartz>,
        <tag:forge:storage_blocks/extreme_quartz>,

        <tag:forge:gems/peridot>,
        <tag:forge:gems/red_garnet>,
        <tag:forge:gems/yellow_garnet>,
        <tag:forge:gems/dark_quartz>,
        <tag:forge:gems/mana_quartz>,
        <tag:forge:gems/blaze_quartz>,
        <tag:forge:gems/lavender_quartz>,
        <tag:forge:gems/red_quartz>,
        <tag:forge:gems/elven_quartz>,
        <tag:forge:gems/sunny_quartz>,
        <tag:forge:gems/empowered_quartz>,
        <tag:forge:gems/extreme_quartz>,
        

        <tag:forge:ingots/advanced_alloy>,
        <tag:forge:ingots/chrome>,
        <tag:forge:ingots/iridium_alloy>,
        <tag:forge:ingots/iridium>,
        <tag:forge:ingots/titanium>,
        <tag:forge:ingots/tungstensteel>,
        <tag:forge:ingots/redstone>,
        <tag:forge:ingots/neridium>,
        <tag:forge:ingots/pyridium>,
        <tag:forge:ingots/linium>,
        <tag:forge:ingots/w>,

        <tag:forge:nuggets/redstone>,

        <tag:forge:dusts/lapis>,
        <tag:forge:dusts/w>,
        <tag:forge:dusts/foulite>,

        <tag:forge:plates/advanced_alloy>,
        <tag:forge:plates/carbon>,
        <tag:forge:plates/chrome>,
        <tag:forge:plates/coal>,
        <tag:forge:plates/diamond>,
        <tag:forge:plates/emerald>,
        <tag:forge:plates/invar>,
        <tag:forge:plates/iridium_alloy>,
        <tag:forge:plates/iridium>,
        <tag:forge:plates/lapis>,
        <tag:forge:plates/lazurite>,
        <tag:forge:plates/magnalium>,
        <tag:forge:plates/obsidian>,
        <tag:forge:plates/peridot>,
        <tag:forge:plates/platinum>,
        <tag:forge:plates/quartz>,
        <tag:forge:plates/red_garnet>,
        <tag:forge:plates/redstone>,
        <tag:forge:plates/refined_iron>,
        <tag:forge:plates/ruby>,
        <tag:forge:plates/sapphire>,
        <tag:forge:plates/silicon>,
        <tag:forge:plates/titanium>,
        <tag:forge:plates/tungsten>,
        <tag:forge:plates/tungstensteel>,
        <tag:forge:plates/wood>,
        <tag:forge:plates/yellow_garnet>,
        <tag:forge:plates/zinc>,

        <tag:forge:colorant/red>,
        <tag:forge:colorant/green>,
        <tag:forge:colorant/purple>,
        <tag:forge:colorant/cyan>,
        <tag:forge:colorant/light_gray>,
        <tag:forge:colorant/gray>,
        <tag:forge:colorant/pink>,
        <tag:forge:colorant/lime>,
        <tag:forge:colorant/yellow>,
        <tag:forge:colorant/light_blue>,
        <tag:forge:colorant/magenta>,
        <tag:forge:colorant/orange>,
        <tag:forge:colorant/blue>,
        <tag:forge:colorant/brown>,
        <tag:forge:colorant/black>,
        <tag:forge:colorant/white>,

        <tag:forge:hammer/weak>,
        <tag:forge:hammer/sturdy>,
        <tag:forge:hammer/strong>,
        <tag:forge:hammer/powerful>,

        <tag:forge:gear>,
        <tag:forge:gear/weak>,
        <tag:forge:gear/strong>,
        <tag:forge:gear/flint>,

        <tag:forge:planks_without_chest>
    ];

    for itemTag in custom {
        itemTag.createItemTag();
    }
}