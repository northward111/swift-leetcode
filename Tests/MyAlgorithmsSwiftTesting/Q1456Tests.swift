import Testing
import MyAlgorithms

@Test func testQ1456MaxVowels() {
  // Test logic goes here.
  #expect(q1456MaxVowels("abciiidef", 3) == 3)
  #expect(q1456MaxVowels("aeiou", 2) == 2)
  #expect(q1456MaxVowels("leetcode", 3) == 2)
}