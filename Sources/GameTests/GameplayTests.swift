import XCTest

final class GameplayTests: XCTestCase, BoardTesting {
    let app = XCUIApplication()

    func testBoardIsEmptyWhenGameStarts() {
        app.launch()

        XCTAssertEqual(boardButtons.matching(.button, identifier: "Empty").count, defaultBoardButtonCount)
    }

    func testDiscPlacementForFirstTurn() {
        for boardCoordinate in allBoardCoordinates {
            app.launch()

            boardButtonAt(x: boardCoordinate.x, y: boardCoordinate.y).tap()

            XCTAssertEqual(boardButtonAt(x: boardCoordinate.x, y: defaultBoardRowsPerColumn - 1).label, "First Player", "\(boardCoordinate)")
            XCTAssertEqual(boardButtons.matching(.button, identifier: "Empty").count, defaultBoardButtonCount - 1, "\(boardCoordinate)")
        }
    }

    func testPlayerTurnIndicator() {
        app.launch()

        XCTAssertTrue(app.staticTexts["It’s First Player’s Turn"].isHittable)
        XCTAssertTrue(app.staticTexts["Second Player"].isHittable)

        XCTAssertFalse(app.staticTexts["First Player"].exists)
        XCTAssertFalse(app.staticTexts["It’s Second Player’s Turn"].exists)
    }
}
