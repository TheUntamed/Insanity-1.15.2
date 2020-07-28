console.info('Hello, World! (You will only see this line once in console, during startup)')

events.listen('item.registry', function (event) {
    //event.create('').add()

    //Mine
    event.create('flint_gear').add()
    event.create('dirty_dust_redstone').add()
    event.create('clump_redstone').add()

    //Gregtech CE
    event.create('compressed_clay_ball').add()
    event.create('fire_clay_brick').add()
})