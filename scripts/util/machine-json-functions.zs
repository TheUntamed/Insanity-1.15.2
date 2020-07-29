#priority 3000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import mods.jei.JEI;

logger.info("Prio Test: crushing-functions!");

public function createSplashing(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:create:splashing>.addJSONRecipe(name,
    {
        ingredients: [
            {
                tag: input
            }
        ], 
        results: [
            {
                item: output,
                count: outputCount
            }
        ]
    });
}

public function mekanismPurifying(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:mekanism:purifying>.addJSONRecipe(name,
    {
        itemInput: {
            ingredient: {
                tag: input
            }
        },
        gasInput: {
            amount: 1,
            gas: "mekanism:oxygen"
        },
        output: {
            item: output
        }
    });
}

public function mekanismInjecting(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:mekanism:injecting>.addJSONRecipe(name,
        {
            itemInput: {
                ingredient: {
                    tag: input
                }
            },
            gasInput: {
                amount: 1,
                gas: "mekanism:hydrogen_chloride"
            },
            output: {
                item: output
            }
        });
}

public function mekanismEnriching(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:mekanism:enriching>.addJSONRecipe(name,
    {
        input: {
            ingredient: {
                tag: input
            }

        },
        output: {
            item: output,
            count: outputCount
        }
    });
}

public function ae2Grinder(name as string, input as string, output as string, outputCount as int) as void {
    // <recipetype:appliedenergistics2:grinder>.addJSONRecipe(name,
    // {
    //     input: {
    //         tag: input
    //     },
    //     result: {
    //         primary: {
    //             item: output,
    //             count: outputCount
    //         }
    //     },
    //     turns: 4
    // });

}

public function mekanismCrushing(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:mekanism:crushing>.addJSONRecipe(name,
        {
            input: {
                ingredient: {
                    tag: input
                }
                
            },
            output: {
                item: output,
                count: outputCount
            }
        });
}

public function createCrushing(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:create:crushing>.addJSONRecipe(name,
        {
            ingredients: [
                {
                    tag: input
                }
            ], 
            results: [
                    {
                        item: output,
                        count: outputCount
                    }
            ]
        });
}

public function createMilling(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:create:milling>.addJSONRecipe(name,
        {
            ingredients: [
                {
                    tag: input
                }
            ], 
            results: [
                    {
                        item: output,
                        count: outputCount
                    }
            ]
        });
}

public function silentsMechanismsCrushing(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:silents_mechanisms:crushing>.addJSONRecipe(name,
        {
            process_time: 300,
            ingredient: {
                tag: input
            },
            results: [
                {
                    item: output,
                    count: outputCount
                }
            ]
        });
}

public function immersiveEngineeringCrusher(name as string, input as string, output as string, outputCount as int) as void {
    <recipetype:immersiveengineering:crusher>.addJSONRecipe(name,
        {
            secondaries: [],
            result: {
                item: output,
                count: outputCount
            },
            input: {
                tag: input
            },
            energy: 3000
        });
}

public function silentsMechanismsAlloySmelting(name as string, input1 as string, input1Count as int, input2 as string, input2Count as int, output as string, outputCount as int) as void {
    <recipetype:silents_mechanisms:alloy_smelting>.addJSONRecipe(name,
        {
            process_time: 400,
            ingredients: [
                {
                    values: [
                        {
                            tag: input1
                        }
                    ],
                    count: input1Count
                },
                {
                    values: [
                        {
                            tag: input2
                        }
                    ],
                    count: input2Count
                }
            ],
            result: {
                item: output,
                count: outputCount
            }
        });
}