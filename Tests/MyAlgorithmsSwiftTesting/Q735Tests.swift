import Testing
import MyAlgorithms

@Test func testQ735AsteroidCollision() {
  // Test logic goes here.
  #expect(q735AsteroidCollision([5,10,-5]) == [5,10])
  #expect(q735AsteroidCollision([8,-8]) == [])
  #expect(q735AsteroidCollision([10,2,-5]) == [10])
}