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


  describe "getValidTimesOfDay", ->
    it "returns a hash of valid options", ->
      expect(optionData.getValidTimesOfDay()).toEqual { 1 : 'anytime', 2 : 'morning', 3 : 'noon', 4 : 'evening', 5 : 'late night' }

  describe "getPassengerCountRange", ->
    it "returns the correct range of passenger count values", ->
      expect(optionData.getPassengerCountRange()).toEqual [1..10]