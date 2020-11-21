import XCTest
@testable import AbstractDataTypes

final class AbstractDataTypesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AbstractDataTypes().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
