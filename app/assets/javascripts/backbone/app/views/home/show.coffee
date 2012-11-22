App.Views.Home ?= {}

class App.Views.Home.Show extends Backbone.View
  template: JST['templates/home/show']

  initialize: =>
    console.log 'initializing!', @

  render: =>
    @$el.html @template()
    @