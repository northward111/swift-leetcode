import Testing
import MyAlgorithms

@Test func testQ394DecodeString() {
  // Test logic goes here.
  #expect(q394DecodeString("3[a]2[bc]") == "aaabcbc")
  #expect(q394DecodeString("3[a2[c]]") == "accaccacc")
  #expect(q394DecodeString("2[abc]3[cd]ef") == "abcabccdcdcdef")
}