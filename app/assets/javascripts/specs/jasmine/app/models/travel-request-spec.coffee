describe "TravelRequest", ->
  travelRequest = null

  beforeEach ->
    travelRequest = new App.Models.TravelRequest()

  it "defaults all attributes to null", ->
    expect(travelRequest.get('from')).toBe null
    expect(travelRequest.get('to')).toBe null
    expect(travelRequest.get('departure_date')).toBe null
    expect(travelRequest.get('return_date')).toBe null
    expect(travelRequest.get('passenger_count')).toBe null

  