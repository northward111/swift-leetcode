import Testing
import MyAlgorithms

@Test func testQ1657CloseStrings() {
  // Test logic goes here.
  #expect(q1657CloseStrings("abc", "bca") == true)
  #expect(q1657CloseStrings("a", "aa") == false)
  #expect(q1657CloseStrings("cabbba", "abbccc") == true)
}