#priority 103

public function postUnificationTagAdditions() as void {

    logger.info("Prio Test: post-unification-tag-additions");

    <tag:forge:storage_blocks/dark_quartz>.addItems([<item:botania:dark_quartz_pillar>, <item:botania:chiseled_dark_quartz>]);
    <tag:forge:storage_blocks/mana_quartz>.addItems([<item:botania:mana_quartz_pillar>, <item:botania:chiseled_mana_quartz>]);
    <tag:forge:storage_blocks/blaze_quartz>.addItems([<item:botania:blaze_quartz_pillar>, <item:botania:chiseled_blaze_quartz>]);
    <tag:forge:storage_blocks/lavender_quartz>.addItems([<item:botania:lavender_quartz_pillar>, <item:botania:chiseled_lavender_quartz>]);
    <tag:forge:storage_blocks/red_quartz>.addItems([<item:botania:red_quartz_pillar>, <item:botania:chiseled_red_quartz>]);
    <tag:forge:storage_blocks/elven_quartz>.addItems([<item:botania:elf_quartz_pillar>, <item:botania:chiseled_elf_quartz>]);
    <tag:forge:storage_blocks/sunny_quartz>.addItems([<item:botania:sunny_quartz_pillar>, <item:botania:chiseled_sunny_quartz>]);
    <tag:forge:storage_blocks/empowered_quartz>.addItems([<item:netherenhancement:block_empowered_quartz_pillar>, <item:netherenhancement:block_chiseled_empowered_quartz_block>]);
    <tag:forge:storage_blocks/extreme_quartz>.addItems([<item:netherenhancement:block_extreme_quartz_pillar>, <item:netherenhancement:block_chiseled_extreme_quartz_block>]);
    <tag:forge:storage_blocks/quartz>.addItems([<item:minecraft:smooth_quartz>, <item:minecraft:chiseled_quartz_block>, <item:minecraft:quartz_pillar>]);
}