#priority 3000
//Has to be loaded before all recipe and tag changes

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

public function immersiveengineeringCrusher(name as string, input as string, output as string, outputCount as int) as void {
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