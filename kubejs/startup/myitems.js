console.info('Hello, World! (You will only see this line once in console, during startup)')

events.listen('item.registry', function (event) {
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
})