import XCTest
@testable import MyAlgorithms

final class Q151Tests: XCTestCase {
    override func setUpWithError() throws {
        // Setup code before each test (optional)
    }

    override func tearDownWithError() throws {
        // Cleanup code after each test (optional)
    }

    func testReverseWords() throws {
        // Insert Assertions here
        XCTAssertEqual(reverseWords("the sky is blue"), "blue is sky the")
        XCTAssertEqual(reverseWords("  hello world  "), "world hello")
        XCTAssertEqual(reverseWords("a good   example"), "example good a")
    }
}