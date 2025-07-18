import Testing
import MyAlgorithms

@Test func testQ649PredictPartyVictory() {
  // Test logic goes here.
  #expect(q649PredictPartyVictory("RD") == "Radiant")
  #expect(q649PredictPartyVictory("RDD") == "Dire")
  #expect(q649PredictPartyVictory("RRDRDDRDRRDDDDDRDRDR") == "Radiant")
}