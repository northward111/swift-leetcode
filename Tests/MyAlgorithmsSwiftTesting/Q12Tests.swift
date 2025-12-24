import Testing
@testable import MyAlgorithms

@Test func testQ12IntToRoman() {
  // Test logic goes here.
  #expect( q12IntToRoman(3749) == "MMMDCCXLIX")
  #expect( q12IntToRoman(58) == "LVIII")
  #expect( q12IntToRoman(1994) == "MCMXCIV")
}