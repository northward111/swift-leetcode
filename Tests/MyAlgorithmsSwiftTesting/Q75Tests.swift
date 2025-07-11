import Testing
import MyAlgorithms

@Test func testQ75() {
  // Test logic goes here.
  #expect(increasingTriplet([1,2,3,4,5]) == true)
  #expect(increasingTriplet([5,4,3,2,1]) == false)
  #expect(increasingTriplet([2,1,5,0,4,6]) == true)
}