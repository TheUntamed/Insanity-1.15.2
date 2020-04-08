console.info('Hello, World! (You will only see this line once in console, during startup)')

events.listen('item.registry', function (event) {
    event.create('super_capacitor').add()
    console.info('Hello, World 2! (You will only see this line once in console, during startup)')
})