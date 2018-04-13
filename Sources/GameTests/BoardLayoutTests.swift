import XCTest

final class BoardLayoutTests: XCTestCase {

    private let application = XCUIApplication()
    private let boardRowsPerColumn = 6
    private let boardColumnsPerRow = 7

    override func setUp() {
        super.setUp()
        application.launch()
    }

    func testNumberOfButtons() {
        XCTAssertEqual(application.buttons.count, boardColumnsPerRow * boardRowsPerColumn)
    }

    func testBoardButtonsAreAlignedHorizontally() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.minY, buttonAt(x: 1, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.minY, buttonAt(x: 1, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.minY, buttonAt(x: 1, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.minY, buttonAt(x: 1, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.minY, buttonAt(x: 1, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 5).frame.minY, buttonAt(x: 1, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.minY, buttonAt(x: 2, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.minY, buttonAt(x: 2, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.minY, buttonAt(x: 2, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.minY, buttonAt(x: 2, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.minY, buttonAt(x: 2, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 5).frame.minY, buttonAt(x: 2, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.minY, buttonAt(x: 3, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.minY, buttonAt(x: 3, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.minY, buttonAt(x: 3, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.minY, buttonAt(x: 3, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.minY, buttonAt(x: 3, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 5).frame.minY, buttonAt(x: 3, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.minY, buttonAt(x: 4, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.minY, buttonAt(x: 4, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.minY, buttonAt(x: 4, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.minY, buttonAt(x: 4, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.minY, buttonAt(x: 4, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 5).frame.minY, buttonAt(x: 4, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.minY, buttonAt(x: 5, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.minY, buttonAt(x: 5, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.minY, buttonAt(x: 5, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.minY, buttonAt(x: 5, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.minY, buttonAt(x: 5, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 5).frame.minY, buttonAt(x: 5, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.minY, buttonAt(x: 6, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.minY, buttonAt(x: 6, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.minY, buttonAt(x: 6, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.minY, buttonAt(x: 6, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.minY, buttonAt(x: 6, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 5).frame.minY, buttonAt(x: 6, y: 5).frame.minY, accuracy: 1)
    }

    func testBoardButtonsAreAlignedVertically() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.minX, buttonAt(x: 0, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.minX, buttonAt(x: 0, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.minX, buttonAt(x: 0, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.minX, buttonAt(x: 0, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.minX, buttonAt(x: 0, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.minX, buttonAt(x: 1, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.minX, buttonAt(x: 1, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.minX, buttonAt(x: 1, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.minX, buttonAt(x: 1, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.minX, buttonAt(x: 1, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.minX, buttonAt(x: 2, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.minX, buttonAt(x: 2, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.minX, buttonAt(x: 2, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.minX, buttonAt(x: 2, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.minX, buttonAt(x: 2, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.minX, buttonAt(x: 3, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.minX, buttonAt(x: 3, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.minX, buttonAt(x: 3, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.minX, buttonAt(x: 3, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.minX, buttonAt(x: 3, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.minX, buttonAt(x: 4, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.minX, buttonAt(x: 4, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.minX, buttonAt(x: 4, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.minX, buttonAt(x: 4, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.minX, buttonAt(x: 4, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.minX, buttonAt(x: 5, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.minX, buttonAt(x: 5, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.minX, buttonAt(x: 5, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.minX, buttonAt(x: 5, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.minX, buttonAt(x: 5, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 6, y: 0).frame.minX, buttonAt(x: 6, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 1).frame.minX, buttonAt(x: 6, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 2).frame.minX, buttonAt(x: 6, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 3).frame.minX, buttonAt(x: 6, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 4).frame.minX, buttonAt(x: 6, y: 5).frame.minX, accuracy: 1)
    }

    func testBoardButtonsDoNotOverlapHorizontally() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.maxX, buttonAt(x: 1, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.maxX, buttonAt(x: 1, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.maxX, buttonAt(x: 1, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.maxX, buttonAt(x: 1, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.maxX, buttonAt(x: 1, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 5).frame.maxX, buttonAt(x: 1, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.maxX, buttonAt(x: 2, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.maxX, buttonAt(x: 2, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.maxX, buttonAt(x: 2, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.maxX, buttonAt(x: 2, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.maxX, buttonAt(x: 2, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 5).frame.maxX, buttonAt(x: 2, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.maxX, buttonAt(x: 3, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.maxX, buttonAt(x: 3, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.maxX, buttonAt(x: 3, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.maxX, buttonAt(x: 3, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.maxX, buttonAt(x: 3, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 5).frame.maxX, buttonAt(x: 3, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.maxX, buttonAt(x: 4, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.maxX, buttonAt(x: 4, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.maxX, buttonAt(x: 4, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.maxX, buttonAt(x: 4, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.maxX, buttonAt(x: 4, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 5).frame.maxX, buttonAt(x: 4, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.maxX, buttonAt(x: 5, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.maxX, buttonAt(x: 5, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.maxX, buttonAt(x: 5, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.maxX, buttonAt(x: 5, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.maxX, buttonAt(x: 5, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 5).frame.maxX, buttonAt(x: 5, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.maxX, buttonAt(x: 6, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.maxX, buttonAt(x: 6, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.maxX, buttonAt(x: 6, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.maxX, buttonAt(x: 6, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.maxX, buttonAt(x: 6, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 5).frame.maxX, buttonAt(x: 6, y: 5).frame.minX, accuracy: 1)
    }

    func testBoardButtonsDoNotOverlapVertically() {
        XCTAssertEqual(buttonAt(x: 0, y: 0).frame.maxY, buttonAt(x: 0, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 1).frame.maxY, buttonAt(x: 0, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 2).frame.maxY, buttonAt(x: 0, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 3).frame.maxY, buttonAt(x: 0, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 0, y: 4).frame.maxY, buttonAt(x: 0, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 1, y: 0).frame.maxY, buttonAt(x: 1, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 1).frame.maxY, buttonAt(x: 1, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 2).frame.maxY, buttonAt(x: 1, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 3).frame.maxY, buttonAt(x: 1, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 1, y: 4).frame.maxY, buttonAt(x: 1, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 2, y: 0).frame.maxY, buttonAt(x: 2, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 1).frame.maxY, buttonAt(x: 2, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 2).frame.maxY, buttonAt(x: 2, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 3).frame.maxY, buttonAt(x: 2, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 2, y: 4).frame.maxY, buttonAt(x: 2, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 3, y: 0).frame.maxY, buttonAt(x: 3, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 1).frame.maxY, buttonAt(x: 3, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 2).frame.maxY, buttonAt(x: 3, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 3).frame.maxY, buttonAt(x: 3, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 3, y: 4).frame.maxY, buttonAt(x: 3, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 4, y: 0).frame.maxY, buttonAt(x: 4, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 1).frame.maxY, buttonAt(x: 4, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 2).frame.maxY, buttonAt(x: 4, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 3).frame.maxY, buttonAt(x: 4, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 4, y: 4).frame.maxY, buttonAt(x: 4, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 5, y: 0).frame.maxY, buttonAt(x: 5, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 1).frame.maxY, buttonAt(x: 5, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 2).frame.maxY, buttonAt(x: 5, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 3).frame.maxY, buttonAt(x: 5, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 5, y: 4).frame.maxY, buttonAt(x: 5, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(buttonAt(x: 6, y: 0).frame.maxY, buttonAt(x: 6, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 1).frame.maxY, buttonAt(x: 6, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 2).frame.maxY, buttonAt(x: 6, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 3).frame.maxY, buttonAt(x: 6, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(buttonAt(x: 6, y: 4).frame.maxY, buttonAt(x: 6, y: 5).frame.minY, accuracy: 1)
    }

    private func buttonAt(x: Int, y: Int) -> XCUIElement {
        let index = x * boardRowsPerColumn + y
        let button = application.buttons.element(boundBy: index)
        return button
    }

}
