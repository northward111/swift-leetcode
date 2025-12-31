import Testing
@testable import MyAlgorithms

@Test func testQ3LengthOfLongestSubstring() {
  // Test logic goes here.
  #expect(q3LengthOfLongestSubstring("abcabcbb") == 3)
  #expect(q3LengthOfLongestSubstring("bbbbb") == 1)
  #expect(q3LengthOfLongestSubstring("pwwkew") == 3)
}