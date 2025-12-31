import Testing
@testable import MyAlgorithms

@Test func testQ4FindMedianSortedArrays() {
  // Test logic goes here.
  #expect(q4FindMedianSortedArrays([1,3], [2]) == 2.0)
  #expect(q4FindMedianSortedArrays([1,2], [3,4]) == 2.5)
  #expect(q4FindMedianSortedArrays([1,2,3,6,7], [4,5,8,9,10]) == 5.5)
}