import Testing
import MyAlgorithms

@Test func testQ443Compress() {
  // Test logic goes here.
  var chars: [Character] = ["a","a","b","b","c","c","c"]
  #expect(Q443Compress(&chars) == 6)
  print(chars)
  chars = ["a"]
  #expect(Q443Compress(&chars) == 1)
  print(chars)
  chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
  #expect(Q443Compress(&chars) == 4)
  print(chars)
}