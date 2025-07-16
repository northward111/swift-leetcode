import Testing
import MyAlgorithms

@Test func testQ1207UniqueOccurrences() {
  // Test logic goes here.
  #expect(q1207UniqueOccurrences([1,2,2,1,1,3]) == true)
  #expect(q1207UniqueOccurrences([1,2]) == false)
  #expect(q1207UniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]) == true)
}