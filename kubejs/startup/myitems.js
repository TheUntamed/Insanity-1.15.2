console.info('Hello, World! (You will only see this line once in console, during startup)')

events.listen('item.registry', function (event) {
    //event.create('').add()

    event.create('primal_earth').add()
    event.create('primal_fire').add()
    event.create('primal_nature').add()
    event.create('primal_water').add()
    event.create('primal_air').add()
    event.create('primal_life').add()

    event.create('mote_of_earth').add()
    event.create('mote_of_fire').add()
    event.create('mote_of_nature').add()
    event.create('mote_of_air').add()
    event.create('mote_of_life').add()

    //event.create('wooden_mortar').add() --> Botania adds one already
    event.create('endstone_dust').add()
    event.create('carbon_plate').add()
    event.create('grains_of_innocence').add()

    event.create('micro_circuit').add()
    event.create('micro_processor_array').add()
    event.create('refined_circuit').add()
    event.create('refined_processor').add()
    event.create('refined_processor_array').add()
    event.create('crystal_circuit').add()
    event.create('crystal_processor_array').add()
    event.create('combination_circuit').add()
    event.create('nano_processor_array').add()
    event.create('quantum_processor').add()
    event.create('quantum_processor_array').add()
    event.create('electronic_processor').add()
    event.create('electronic_processor_array').add()

    event.create('enriched_egg').add()
    event.create('infinity_egg').add()
    event.create('micro_processor_mainframe').add()
    event.create('nano_processor_mainframe').add()
    event.create('refined_processor_mainframe').add()
    event.create('quantum_processor_mainframe').add()

    event.create('chaos_ingot').add()
    event.create('chaos_catalyst').add()
})