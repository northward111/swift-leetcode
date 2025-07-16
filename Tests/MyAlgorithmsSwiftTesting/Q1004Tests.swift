import Testing
import MyAlgorithms

@Test func testQ1004LongestOnes() {
  // Test logic goes here.
  #expect(q1004LongestOnes([1,1,1,0,0,0,1,1,1,1,0], 2) == 6)
  #expect(q1004LongestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], 3) == 10)
  #expect(q1004LongestOnes([0,0,1,1,1,0,0], 0) == 3)
}