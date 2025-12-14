import Testing
import MyAlgorithms

@Test func testQ1372LongestZigZag() {
  // Test logic goes here.
  let root = TreeNode.buildTree(from: [1,1,1,nil,1,nil,nil,1,1,nil,1])
  #expect(q1372LongestZigZag(root) == 4)
}