describe "OptionData", ->
  optionData = null

  beforeEach ->
      optionData = new App.Models.OptionData(
        minDateYear       : 2011
        maxDateYear       : 2012
        minPassengerCount : 1
        maxPassengerCount : 10
      )

  it "initializes with the given options correctly", ->
    expect(optionData.get('min_date_year')).toEqual 2011
    expect(optionData.get('max_date_year')).toEqual 2012
    expect(optionData.get('min_passenger_count')).toEqual 1
    expect(optionData.get('max_passenger_count')).toEqual 10