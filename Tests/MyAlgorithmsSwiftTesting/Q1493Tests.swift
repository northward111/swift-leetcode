import Testing
import MyAlgorithms

@Test func testQ1493LongestSubarray() {
  // Test logic goes here.
  #expect(q1493LongestSubarray([1,1,0,1]) == 3)
  #expect(q1493LongestSubarray([0,1,1,1,0,1,1,0,1]) == 5)
  #expect(q1493LongestSubarray([1,1,1]) == 2)
}