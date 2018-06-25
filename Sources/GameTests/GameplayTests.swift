import XCTest

final class GameplayTests: TestCase {
    func testBoardIsEmptyWhenGameStarts() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 0, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 0, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 0, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 0, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 0, y: 5).label, "Empty")

        XCTAssertEqual(buttonAt(x: 1, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 1, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 1, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 1, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 1, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 1, y: 5).label, "Empty")

        XCTAssertEqual(buttonAt(x: 2, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 2, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 2, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 2, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 2, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 2, y: 5).label, "Empty")

        XCTAssertEqual(buttonAt(x: 3, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 3, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 3, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 3, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 3, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 3, y: 5).label, "Empty")

        XCTAssertEqual(buttonAt(x: 4, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 4, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 4, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 4, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 4, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 4, y: 5).label, "Empty")

        XCTAssertEqual(buttonAt(x: 5, y: 0).label, "Empty")
        XCTAssertEqual(buttonAt(x: 5, y: 1).label, "Empty")
        XCTAssertEqual(buttonAt(x: 5, y: 2).label, "Empty")
        XCTAssertEqual(buttonAt(x: 5, y: 3).label, "Empty")
        XCTAssertEqual(buttonAt(x: 5, y: 4).label, "Empty")
        XCTAssertEqual(buttonAt(x: 5, y: 5).label, "Empty")
    }
}
