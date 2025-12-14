import Testing
import MyAlgorithms

@Test func testQ2095DeleteMiddle() {
  // Test logic goes here.
  var head = headFrom(valArray: [1,3,4,7,1,2,6])
  var res = valArrayFrom(listNodeHead: q2095DeleteMiddle(head))
  #expect(res == [1,3,4,1,2,6])
  head = headFrom(valArray: [1,2,3,4])
  res = valArrayFrom(listNodeHead: q2095DeleteMiddle(head))
  #expect(res == [1,2,4])
  head = headFrom(valArray: [2,1])
  res = valArrayFrom(listNodeHead: q2095DeleteMiddle(head))
  #expect(res == [2])
}