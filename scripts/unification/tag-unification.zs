#priority 1002

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function tagUnification() as void {
    // logger.info("Prio Test: tag-unification");
    var materials = getMaterials();
    var forms = getForms();
    var modPriorities = getModPriorities();
    for m in materials {
        for f in forms {
            iterateTags(m, f, modPriorities);
        }
    }
}

private function iterateTags(material as string, form as string, mP as string[]) as void {
    var itemTag = BracketHandlers.getTag("forge:" + form +"/" + material);
    if (itemTag.isItemTag) {
        if (itemTag.items.length > 1) {
            purgeItemTag(itemTag, mP);
        }
    }
}