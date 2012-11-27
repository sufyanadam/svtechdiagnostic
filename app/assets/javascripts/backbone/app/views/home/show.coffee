App.Views.Home ?= {}

class App.Views.Home.Show extends Backbone.View
  template: JST['backbone/app/templates/home/show']

  events:
    "click .submit" : "showTravelRequest"

  render: =>
    @$el.html @template()
    @generateDateSelectsFor 'departure'
    @generateDateSelectsFor 'return'
    @$('.passenger-count').append @generateSelect('passenger_count', @model.getPassengerCountRange())
    @

  generateDateSelectsFor: (circumstances) =>
    @$(".#{circumstances}-date-region").append @generateSelect("#{circumstances}_day", [1..31], 'Select Day')
    @$(".#{circumstances}-date-region").append @generateSelect("#{circumstances}_month", [], 'Select Month')
    @$(".#{circumstances}-date-region").append @generateSelect("#{circumstances}_year", [@model.get('min_date_year')..@model.get('max_date_year')], 'Select Year')
    @$(".#{circumstances}-date-region").append @generateSelectFromHash("departure_time", @model.getValidTimesOfDay(), 'anytime')

  generateSelect: (name, optionsArray, initialOption) =>
    html = "<select name='#{name}'>"
    html += "<option value=''>#{initialOption}</option>" if initialOption
    for option in optionsArray
      html += "<option value='#{option}'>#{option}</option>"
    html += "</select>"

    html

  generateSelectFromHash: (name, hash) =>
    html = "<select name='#{name}'>"
    for key, value of hash
      html += "<option value='#{key}'>#{value}</option>"
    html += "</select>"

    html

  showTravelRequest: (e) =>
    e.preventDefault()
    e.stopPropagation()

    values = @serializeForm(@$('form'))

    travelRequest = new App.Models.TravelRequest()
    travelRequest.set values
    console.log travelRequest


  serializeForm: ($form) =>
    formattedValues = {}
    values = $form.serializeArray()
    _.reduce(
      values,
      (key, value) ->
        formattedValues[value.name] = value.value
      ,
      formattedValues
    )

    alertString = []
    alertString.push(
      "Number of passengers: #{formattedValues.passenger_count}\n"
      "From : #{formattedValues.departure_city}\n"
      "To : #{formattedValues.return_city}\n"
      "Departing: #{formattedValues.departure_day}\n"
      "Returning: #{formattedValues.return_day}\n"
    )

    alert alertString.join('')