import Testing
import MyAlgorithms

@Test func testq283MoveZeroes() {
  // Test logic goes here.
  var nums = [0,1,0,3,12]
  q283MoveZeroes(&nums)
  #expect(nums == [1,3,12,0,0])
  nums = [0]
  q283MoveZeroes(&nums)
  #expect(nums == [0])
  nums = [0,0,1]
  q283MoveZeroes(&nums)
  #expect(nums == [1,0,0])
  nums = [0,0]
  q283MoveZeroes(&nums)
  #expect(nums == [0,0])
  nums = [4,2,4,0,0,3,0,5,1,0]
  q283MoveZeroes(&nums)
  #expect(nums == [4,2,4,3,5,1,0,0,0,0])
}