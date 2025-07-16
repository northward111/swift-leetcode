import Testing
import MyAlgorithms

@Test func testQ2390RemoveStars() {
  // Test logic goes here.
  #expect(q2390RemoveStars("leet**cod*e") == "lecoe")
  #expect(q2390RemoveStars("erase*****") == "")
}