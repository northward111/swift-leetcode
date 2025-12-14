import Testing
import MyAlgorithms

@Test func testQ206ReverseList() {
  // Test logic goes here.
  #expect(valArrayFrom(listNodeHead: q206ReverseList(headFrom(valArray: [1,2,3,4,5]))) == [5,4,3,2,1])
  #expect(valArrayFrom(listNodeHead: q206ReverseList(headFrom(valArray: [1,2]))) == [2,1])
  #expect(valArrayFrom(listNodeHead: q206ReverseList(headFrom(valArray: []))) == [])
}