import XCTest
@testable import MyAlgorithms

final class Q345Tests: XCTestCase {
    override func setUpWithError() throws {
        // Setup code before each test (optional)
    }

    override func tearDownWithError() throws {
        // Cleanup code after each test (optional)
    }

    func testReverseVowels() throws {
        // Insert Assertions here
        XCTAssertEqual(reverseVowels("IceCreAm"), "AceCreIm")
        XCTAssertEqual(reverseVowels("leetcode"), "leotcede")
    }
}