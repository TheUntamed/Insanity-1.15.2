#priority 0

logger.info("Prio Test: main");

preUnificationRemovals();
preUnificationTagRemovals();
createNewTags();
preUnificationTagAdditions();

tagUnification();
oreUnification();
processingUnification();

postUnificationTagRemovals();
postUnificationTagAdditions();
postUnificationRemovals();
postUnificationAdditions();

removeRecipes();
removeandAddShapedRecipes();
removeAndAddShapedMirroredRecipes();
removeAndAddShapelessRecipes();
addShapedRecipes();
addShapedMirroredRecipes();
addShapelessRecipes();

jei();