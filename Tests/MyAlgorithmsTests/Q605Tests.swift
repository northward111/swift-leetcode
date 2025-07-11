import XCTest // Import the XCTest framework
@testable import MyAlgorithms // Import your main module so you can access its types

final class Q605Tests: XCTestCase { // Your test class must inherit from XCTestCase

    // Optional: Setup before each test method
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    // Optional: Teardown after each test method
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // A test method must start with 'test'
    func testCanPlaceFlowers() throws {
        // XCTAssertEqual(checkIf("", divides: "abab"), true)
        XCTAssertTrue(canPlaceFlowers([1,0,0,0,1], 1))
        XCTAssertFalse(canPlaceFlowers([1,0,0,0,1], 2))
    }
}