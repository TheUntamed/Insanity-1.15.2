#priority 100

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