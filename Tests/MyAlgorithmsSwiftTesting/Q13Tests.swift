import Testing
import MyAlgorithms

@Test func testQ13RomanToInt() {
  // Test logic goes here.
  #expect(q13RomanToInt("III") == 3)
  #expect(q13RomanToInt("LVIII") == 58)
  #expect(q13RomanToInt("MCMXCIV") == 1994)
}