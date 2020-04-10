events.listen('client.item_tooltip', function (event) {
    if (event.item.equals('minecraft:campfire')) {
      event.add(text.green('This is a tooltip on a campfire'))
    }
  })