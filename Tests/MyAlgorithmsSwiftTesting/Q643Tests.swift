import Testing
import MyAlgorithms

@Test func testQ643FindMaxAverage() {
  // Test logic goes here.
  #expect(abs(q643FindMaxAverage([1,12,-5,-6,50,3], 4)-12.75000) < 10e-5)
  #expect(abs(q643FindMaxAverage([5], 1)-5.00000) < 10e-5)
}