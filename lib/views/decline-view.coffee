{View} = require 'space-pen'
_ = require 'underscore'

module.exports =
  class DeclineView extends View

    initialize: () ->
      @prompt ?= atom.workspace.addTopPanel(item: @, visible: true, priority: 1)

    @content: () ->
      @div {class: 'pair-prompt'}, =>
        @button  'OK', class: 'yes'
