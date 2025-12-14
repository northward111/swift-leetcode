import Testing
import MyAlgorithms

@Test func testQ2130PairSum() {
  // Test logic goes here.
  #expect(q2130PairSum(headFrom(valArray: [5,4,2,1])) == 6)
  #expect(q2130PairSum(headFrom(valArray: [4,2,2,3])) == 7)
  #expect(q2130PairSum(headFrom(valArray: [1,100000])) == 100001)
}