import XCTest // Import the XCTest framework
@testable import MyAlgorithms // Import your main module so you can access its types

final class Q1071Tests: XCTestCase { // Your test class must inherit from XCTestCase

    // Optional: Setup before each test method
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    // Optional: Teardown after each test method
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // A test method must start with 'test'
    func testCheckIf() throws {
        // XCTAssertEqual(checkIf("", divides: "abab"), true)
        XCTAssertEqual(checkIf("ab", divides: "abab"), true)
        XCTAssertEqual(checkIf("ab", divides: "abbb"), false)
        XCTAssertEqual(checkIf("a", divides: "aaaa"), true)
        XCTAssertEqual(checkIf("a", divides: "a"), true)
    }

    func testGCD() throws {
        XCTAssertEqual(gcdOfStrings("ABCABC", "ABC"), "ABC")
        XCTAssertEqual(gcdOfStrings("ABABAB", "ABAB"), "AB")
        XCTAssertEqual(gcdOfStrings("LEET", "CODE"), "")
        XCTAssertEqual(gcdOfStrings("AA", "A"), "A")
    }
}