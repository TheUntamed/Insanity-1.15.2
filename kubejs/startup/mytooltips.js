events.listen('client.item_tooltip', function (event) {

  // if (event.item.equals('')) {
  //   event.add(text.red(''))
  // }

  if (event.item.equals('midnight:dark_pearl')) {
      event.add(text.red('Right click to create a portal. WARNING: Don\'t do this in your base!'))
  }

})