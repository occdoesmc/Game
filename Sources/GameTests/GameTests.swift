import XCTest

final class GameTests: XCTestCase {

    private let application = XCUIApplication()
    private let rowsPerColumn = 6

    override func setUp() {
        super.setUp()
        application.launch()
    }

    func testNumberOfButtons() {
        XCTAssertEqual(application.buttons.count, 7 * 6)
    }

    func testBoardLayoutVertically() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.maxY, buttonAt(x: 0, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.maxY, buttonAt(x: 0, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.maxY, buttonAt(x: 0, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.maxY, buttonAt(x: 0, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.maxY, buttonAt(x: 0, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.maxY, buttonAt(x: 1, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.maxY, buttonAt(x: 1, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.maxY, buttonAt(x: 1, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.maxY, buttonAt(x: 1, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.maxY, buttonAt(x: 1, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.maxY, buttonAt(x: 2, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.maxY, buttonAt(x: 2, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.maxY, buttonAt(x: 2, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.maxY, buttonAt(x: 2, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.maxY, buttonAt(x: 2, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.maxY, buttonAt(x: 3, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.maxY, buttonAt(x: 3, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.maxY, buttonAt(x: 3, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.maxY, buttonAt(x: 3, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.maxY, buttonAt(x: 3, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.maxY, buttonAt(x: 4, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.maxY, buttonAt(x: 4, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.maxY, buttonAt(x: 4, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.maxY, buttonAt(x: 4, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.maxY, buttonAt(x: 4, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.maxY, buttonAt(x: 5, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.maxY, buttonAt(x: 5, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.maxY, buttonAt(x: 5, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.maxY, buttonAt(x: 5, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.maxY, buttonAt(x: 5, y: 5).frame.minY)

        XCTAssertEqual(buttonAt(x: 6, y: 0).frame.maxY, buttonAt(x: 6, y: 1).frame.minY)
        XCTAssertEqual(buttonAt(x: 6, y: 1).frame.maxY, buttonAt(x: 6, y: 2).frame.minY)
        XCTAssertEqual(buttonAt(x: 6, y: 2).frame.maxY, buttonAt(x: 6, y: 3).frame.minY)
        XCTAssertEqual(buttonAt(x: 6, y: 3).frame.maxY, buttonAt(x: 6, y: 4).frame.minY)
        XCTAssertEqual(buttonAt(x: 6, y: 4).frame.maxY, buttonAt(x: 6, y: 5).frame.minY)
    }

    func testBoardLayoutHorizontally() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.maxX, buttonAt(x: 1, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.maxX, buttonAt(x: 1, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.maxX, buttonAt(x: 1, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.maxX, buttonAt(x: 1, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.maxX, buttonAt(x: 1, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 0, y: 5).frame.maxX, buttonAt(x: 1, y: 5).frame.minX)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.maxX, buttonAt(x: 2, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.maxX, buttonAt(x: 2, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.maxX, buttonAt(x: 2, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.maxX, buttonAt(x: 2, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.maxX, buttonAt(x: 2, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 1, y: 5).frame.maxX, buttonAt(x: 2, y: 5).frame.minX)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.maxX, buttonAt(x: 3, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.maxX, buttonAt(x: 3, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.maxX, buttonAt(x: 3, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.maxX, buttonAt(x: 3, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.maxX, buttonAt(x: 3, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 2, y: 5).frame.maxX, buttonAt(x: 3, y: 5).frame.minX)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.maxX, buttonAt(x: 4, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.maxX, buttonAt(x: 4, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.maxX, buttonAt(x: 4, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.maxX, buttonAt(x: 4, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.maxX, buttonAt(x: 4, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 3, y: 5).frame.maxX, buttonAt(x: 4, y: 5).frame.minX)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.maxX, buttonAt(x: 5, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.maxX, buttonAt(x: 5, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.maxX, buttonAt(x: 5, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.maxX, buttonAt(x: 5, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.maxX, buttonAt(x: 5, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 4, y: 5).frame.maxX, buttonAt(x: 5, y: 5).frame.minX)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.maxX, buttonAt(x: 6, y: 0).frame.minX)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.maxX, buttonAt(x: 6, y: 1).frame.minX)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.maxX, buttonAt(x: 6, y: 2).frame.minX)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.maxX, buttonAt(x: 6, y: 3).frame.minX)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.maxX, buttonAt(x: 6, y: 4).frame.minX)
        XCTAssertEqual(buttonAt(x: 5, y: 5).frame.maxX, buttonAt(x: 6, y: 5).frame.minX)
    }


    private func buttonAt(x: Int, y: Int) -> XCUIElement {
        let index = x * rowsPerColumn + y
        let button = application.buttons.element(boundBy: index)
        return button
    }

}
