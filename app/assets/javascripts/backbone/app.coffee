#= require_self
#= require_tree ./app/routers
#= require_tree ./app/models
#= require_tree ./app/templates
#= require_tree ./app/views

window.App             ?= {}
window.App.Routers      = {}
window.App.Models       = {}
window.App.Views        = {}


$ =>
  homeRouter = new App.Routers.HomeRouter()
  Backbone.history.start()