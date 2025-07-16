import Testing
import MyAlgorithms

@Test func testQ2215FindDifference() {
  // Test logic goes here.
  #expect(q2215FindDifference([1,2,3], [2,4,6]).map { $0.sorted() } == [[1,3],[4,6]])
  #expect(q2215FindDifference([1,2,3,3], [1,1,2,2]).map { $0.sorted() } == [[3],[]])
}