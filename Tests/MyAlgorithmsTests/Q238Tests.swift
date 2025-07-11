import XCTest
@testable import MyAlgorithms

final class Q238Tests: XCTestCase {
    override func setUpWithError() throws {
        // Setup code before each test (optional)
    }

    override func tearDownWithError() throws {
        // Cleanup code after each test (optional)
    }

    func testProductExceptSelf() throws {
        // Insert Assertions here
        XCTAssertEqual(productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
    }
}