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

  getValidTimesOfDay: =>
    validTimes = 
      1: 'anytime'
      2: 'morning'
      3: 'noon'
      4: 'evening'
      5: 'late night'

    validTimes

  getPassengerCountRange: =>
    [@get('min_passenger_count').. @get('max_passenger_count')]

  getMinDateYear: =>
    @get 'min_date_year'

  getMaxDateYear: =>
    @get 'max_date_year'