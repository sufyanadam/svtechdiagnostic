class App.Models.TravelRequest extends Backbone.Model
  
  defaults:
    departure_city  : null
    return_city     : null
    departure_date  : null
    return_date     : null
    passenger_count : null

  validate: =>
    