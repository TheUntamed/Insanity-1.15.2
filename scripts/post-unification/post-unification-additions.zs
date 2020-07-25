#priority 2001

public function postUnificationAdditions() as void {

    logger.info("Prio Test: post-unification-additions");

    <recipetype:silents_mechanisms:alloy_smelting>.addJSONRecipe("silents_mechanisms/alloy_smelting/bronze",
        {
            process_time: 400,
            ingredients: [
                {
                    values: [
                        {
                            tag: "forge:ingots/copper"
                        }
                    ],
                    count: 3
                },
                {
                    values: [
                        {
                            tag: "forge:ingots/tin"
                        }
                    ],
                    count: 1
                }
            ],
            result: {
                item: "silents_mechanisms:bronze_ingot",
                count: 4
            }
        });
    
    <recipetype:mekanism:enriching>.addJSONRecipe("mekanism/enriching/uraninite",
        {
            input: {
                ingredient: {
                    tag: "forge:ingots/uranium"
                }

            },
            output: {
                item: <item:powah:uraninite>.registryName,
                count: 2
            }
        });
}