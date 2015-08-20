{View} = require 'space-pen'
_ = require 'underscore'

module.exports =
  class PromptView extends View

    initialize: (user) ->
      @prompt ?= atom.workspace.addTopPanel(item: @, visible: true, priority: 1)
      @user = user or {}

    @content: () ->
      @div {class: 'pair-prompt'}, =>
        @div class: 'message', outlet: 'message'
        @button  'nah', class: 'nope'
        @button  'yes', class: 'yes'

    showUser: (user) ->
      console.log user
      @message.text("#{user.name} wants to pair with you. Do you accept?");
