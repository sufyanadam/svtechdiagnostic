class App.Models.OptionData extends Backbone.Model
  defaults:
    min_date_year        : null
    max_date_year        : null
    min_passenger_count  : null
    max_passenger_count  : null

  initialize: (options) =>
    @set
      min_date_year       : options.minDateYear
      max_date_year       : options.maxDateYear
      min_passenger_count : options.minPassengerCount
      max_passenger_count : options.maxPassengerCount