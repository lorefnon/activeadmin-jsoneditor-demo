$ ->

  $('.jsoneditor-target').each ->

    target = $ this

    container = $('<div class="jsoneditor-container">')
      .insertAfter target

    editor = new JSONEditor container[0],
      modes: ['code', 'form', 'text', 'tree', 'view']
      change: ->
        target.val editor.get()

    editor.set(
      try
        JSON.parse target.val()
    )

    target.hide()
