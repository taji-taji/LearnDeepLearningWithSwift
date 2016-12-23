import XCTest
@testable import LearnDeepLearningWithSwift

class LearnDeepLearningWithSwiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(LearnDeepLearningWithSwift().text, "Hello, World!")
    }


    static var allTests : [(String, (LearnDeepLearningWithSwiftTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
