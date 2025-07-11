import XCTest // Import the XCTest framework
@testable import MyAlgorithms // Import your main module so you can access its types

final class Q1431Tests: XCTestCase { // Your test class must inherit from XCTestCase

    // Optional: Setup before each test method
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    // Optional: Teardown after each test method
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // A test method must start with 'test'
    func testKidsWithCandies() throws {
        XCTAssertEqual(kidsWithCandies([2,3,5,1,3], 3), [true,true,true,false,true])
        XCTAssertEqual(kidsWithCandies([4,2,1,1,2], 1), [true,false,false,false,false])
        XCTAssertEqual(kidsWithCandies([12,1,12], 10), [true,false,true])
    }
}