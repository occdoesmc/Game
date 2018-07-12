import XCTest

final class BoardLayoutTests: XCTestCase, BoardTesting {
    let app = XCUIApplication()

    func testNumberOfButtons() {
        app.launch()

        XCTAssertEqual(app.buttons.count, defaultBoardButtonCount)
    }

    func testBoardButtonsAreAlignedHorizontally() {
        app.launch()

        XCTAssertEqual(boardButtonAt(x: 0, y: 0).frame.minY, boardButtonAt(x: 1, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 1).frame.minY, boardButtonAt(x: 1, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 2).frame.minY, boardButtonAt(x: 1, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 3).frame.minY, boardButtonAt(x: 1, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 4).frame.minY, boardButtonAt(x: 1, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 5).frame.minY, boardButtonAt(x: 1, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 1, y: 0).frame.minY, boardButtonAt(x: 2, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 1).frame.minY, boardButtonAt(x: 2, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 2).frame.minY, boardButtonAt(x: 2, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 3).frame.minY, boardButtonAt(x: 2, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 4).frame.minY, boardButtonAt(x: 2, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 5).frame.minY, boardButtonAt(x: 2, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 2, y: 0).frame.minY, boardButtonAt(x: 3, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 1).frame.minY, boardButtonAt(x: 3, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 2).frame.minY, boardButtonAt(x: 3, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 3).frame.minY, boardButtonAt(x: 3, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 4).frame.minY, boardButtonAt(x: 3, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 5).frame.minY, boardButtonAt(x: 3, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 3, y: 0).frame.minY, boardButtonAt(x: 4, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 1).frame.minY, boardButtonAt(x: 4, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 2).frame.minY, boardButtonAt(x: 4, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 3).frame.minY, boardButtonAt(x: 4, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 4).frame.minY, boardButtonAt(x: 4, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 5).frame.minY, boardButtonAt(x: 4, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 4, y: 0).frame.minY, boardButtonAt(x: 5, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 1).frame.minY, boardButtonAt(x: 5, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 2).frame.minY, boardButtonAt(x: 5, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 3).frame.minY, boardButtonAt(x: 5, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 4).frame.minY, boardButtonAt(x: 5, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 5).frame.minY, boardButtonAt(x: 5, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 5, y: 0).frame.minY, boardButtonAt(x: 6, y: 0).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 1).frame.minY, boardButtonAt(x: 6, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 2).frame.minY, boardButtonAt(x: 6, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 3).frame.minY, boardButtonAt(x: 6, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 4).frame.minY, boardButtonAt(x: 6, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 5).frame.minY, boardButtonAt(x: 6, y: 5).frame.minY, accuracy: 1)
    }

    func testBoardButtonsAreAlignedVertically() {
        app.launch()

        XCTAssertEqual(boardButtonAt(x: 0, y: 0).frame.minX, boardButtonAt(x: 0, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 1).frame.minX, boardButtonAt(x: 0, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 2).frame.minX, boardButtonAt(x: 0, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 3).frame.minX, boardButtonAt(x: 0, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 4).frame.minX, boardButtonAt(x: 0, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 1, y: 0).frame.minX, boardButtonAt(x: 1, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 1).frame.minX, boardButtonAt(x: 1, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 2).frame.minX, boardButtonAt(x: 1, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 3).frame.minX, boardButtonAt(x: 1, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 4).frame.minX, boardButtonAt(x: 1, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 2, y: 0).frame.minX, boardButtonAt(x: 2, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 1).frame.minX, boardButtonAt(x: 2, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 2).frame.minX, boardButtonAt(x: 2, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 3).frame.minX, boardButtonAt(x: 2, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 4).frame.minX, boardButtonAt(x: 2, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 3, y: 0).frame.minX, boardButtonAt(x: 3, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 1).frame.minX, boardButtonAt(x: 3, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 2).frame.minX, boardButtonAt(x: 3, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 3).frame.minX, boardButtonAt(x: 3, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 4).frame.minX, boardButtonAt(x: 3, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 4, y: 0).frame.minX, boardButtonAt(x: 4, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 1).frame.minX, boardButtonAt(x: 4, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 2).frame.minX, boardButtonAt(x: 4, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 3).frame.minX, boardButtonAt(x: 4, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 4).frame.minX, boardButtonAt(x: 4, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 5, y: 0).frame.minX, boardButtonAt(x: 5, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 1).frame.minX, boardButtonAt(x: 5, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 2).frame.minX, boardButtonAt(x: 5, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 3).frame.minX, boardButtonAt(x: 5, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 4).frame.minX, boardButtonAt(x: 5, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 6, y: 0).frame.minX, boardButtonAt(x: 6, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 1).frame.minX, boardButtonAt(x: 6, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 2).frame.minX, boardButtonAt(x: 6, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 3).frame.minX, boardButtonAt(x: 6, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 4).frame.minX, boardButtonAt(x: 6, y: 5).frame.minX, accuracy: 1)
    }

    func testBoardButtonsDoNotOverlapHorizontally() {
        app.launch()

        XCTAssertEqual(boardButtonAt(x: 0, y: 0).frame.maxX, boardButtonAt(x: 1, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 1).frame.maxX, boardButtonAt(x: 1, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 2).frame.maxX, boardButtonAt(x: 1, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 3).frame.maxX, boardButtonAt(x: 1, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 4).frame.maxX, boardButtonAt(x: 1, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 5).frame.maxX, boardButtonAt(x: 1, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 1, y: 0).frame.maxX, boardButtonAt(x: 2, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 1).frame.maxX, boardButtonAt(x: 2, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 2).frame.maxX, boardButtonAt(x: 2, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 3).frame.maxX, boardButtonAt(x: 2, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 4).frame.maxX, boardButtonAt(x: 2, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 5).frame.maxX, boardButtonAt(x: 2, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 2, y: 0).frame.maxX, boardButtonAt(x: 3, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 1).frame.maxX, boardButtonAt(x: 3, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 2).frame.maxX, boardButtonAt(x: 3, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 3).frame.maxX, boardButtonAt(x: 3, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 4).frame.maxX, boardButtonAt(x: 3, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 5).frame.maxX, boardButtonAt(x: 3, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 3, y: 0).frame.maxX, boardButtonAt(x: 4, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 1).frame.maxX, boardButtonAt(x: 4, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 2).frame.maxX, boardButtonAt(x: 4, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 3).frame.maxX, boardButtonAt(x: 4, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 4).frame.maxX, boardButtonAt(x: 4, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 5).frame.maxX, boardButtonAt(x: 4, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 4, y: 0).frame.maxX, boardButtonAt(x: 5, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 1).frame.maxX, boardButtonAt(x: 5, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 2).frame.maxX, boardButtonAt(x: 5, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 3).frame.maxX, boardButtonAt(x: 5, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 4).frame.maxX, boardButtonAt(x: 5, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 5).frame.maxX, boardButtonAt(x: 5, y: 5).frame.minX, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 5, y: 0).frame.maxX, boardButtonAt(x: 6, y: 0).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 1).frame.maxX, boardButtonAt(x: 6, y: 1).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 2).frame.maxX, boardButtonAt(x: 6, y: 2).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 3).frame.maxX, boardButtonAt(x: 6, y: 3).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 4).frame.maxX, boardButtonAt(x: 6, y: 4).frame.minX, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 5).frame.maxX, boardButtonAt(x: 6, y: 5).frame.minX, accuracy: 1)
    }

    func testBoardButtonsDoNotOverlapVertically() {
        app.launch()

        XCTAssertEqual(boardButtonAt(x: 0, y: 0).frame.maxY, boardButtonAt(x: 0, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 1).frame.maxY, boardButtonAt(x: 0, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 2).frame.maxY, boardButtonAt(x: 0, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 3).frame.maxY, boardButtonAt(x: 0, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 0, y: 4).frame.maxY, boardButtonAt(x: 0, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 1, y: 0).frame.maxY, boardButtonAt(x: 1, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 1).frame.maxY, boardButtonAt(x: 1, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 2).frame.maxY, boardButtonAt(x: 1, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 3).frame.maxY, boardButtonAt(x: 1, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 1, y: 4).frame.maxY, boardButtonAt(x: 1, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 2, y: 0).frame.maxY, boardButtonAt(x: 2, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 1).frame.maxY, boardButtonAt(x: 2, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 2).frame.maxY, boardButtonAt(x: 2, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 3).frame.maxY, boardButtonAt(x: 2, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 2, y: 4).frame.maxY, boardButtonAt(x: 2, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 3, y: 0).frame.maxY, boardButtonAt(x: 3, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 1).frame.maxY, boardButtonAt(x: 3, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 2).frame.maxY, boardButtonAt(x: 3, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 3).frame.maxY, boardButtonAt(x: 3, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 3, y: 4).frame.maxY, boardButtonAt(x: 3, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 4, y: 0).frame.maxY, boardButtonAt(x: 4, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 1).frame.maxY, boardButtonAt(x: 4, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 2).frame.maxY, boardButtonAt(x: 4, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 3).frame.maxY, boardButtonAt(x: 4, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 4, y: 4).frame.maxY, boardButtonAt(x: 4, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 5, y: 0).frame.maxY, boardButtonAt(x: 5, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 1).frame.maxY, boardButtonAt(x: 5, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 2).frame.maxY, boardButtonAt(x: 5, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 3).frame.maxY, boardButtonAt(x: 5, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 5, y: 4).frame.maxY, boardButtonAt(x: 5, y: 5).frame.minY, accuracy: 1)

        XCTAssertEqual(boardButtonAt(x: 6, y: 0).frame.maxY, boardButtonAt(x: 6, y: 1).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 1).frame.maxY, boardButtonAt(x: 6, y: 2).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 2).frame.maxY, boardButtonAt(x: 6, y: 3).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 3).frame.maxY, boardButtonAt(x: 6, y: 4).frame.minY, accuracy: 1)
        XCTAssertEqual(boardButtonAt(x: 6, y: 4).frame.maxY, boardButtonAt(x: 6, y: 5).frame.minY, accuracy: 1)
    }
}
