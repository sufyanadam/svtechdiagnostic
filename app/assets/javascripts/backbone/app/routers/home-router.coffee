class App.Routers.HomeRouter extends Backbone.Router
  routes:
   "" : "index"

  index: =>
    view = new App.Views.Home.Show(
      model: new App.Models.OptionData(
        minDateYear: 2011
        maxDateYear: 2012
        minPassengerCount: 1
        maxPassengerCount: 10
      )
    )
    $('.app-region').html(view.render().el)
