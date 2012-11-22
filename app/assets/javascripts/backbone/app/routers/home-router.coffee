class App.Routers.HomeRouter extends Backbone.Router
  routes:
   "" : "index"

  index: =>
    view = new App.Views.Home.Show()
    $('.app-region').html(view.render().el)
