import XCTest

final class GameplayTests: XCTestCase, BoardTesting {
    let app = XCUIApplication()

    func testBoardIsEmptyWhenGameStarts() {
        app.launch()

        XCTAssertEqual(boardButtons.matching(.button, identifier: "Empty").count, defaultBoardButtonCount)
    }

    func testDiscPlacementForTurn1() {
        for boardCoordinate in allBoardCoordinates {
            app.launch()

            boardButtonAt(x: boardCoordinate.x, y: boardCoordinate.y).tap()

            XCTAssertEqual(boardButtonAt(x: boardCoordinate.x, y: defaultBoardRowsPerColumn - 1).label, "First Player", "\(boardCoordinate)")
            XCTAssertEqual(boardButtons.matching(.button, identifier: "Empty").count, defaultBoardButtonCount - 1, "\(boardCoordinate)")
        }
    }

    func testDiscPlacementForTurn2() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 1, y: 0).tap()

        XCTAssertEqual(boardButtonAt(x: 0, y: 5).label, "First Player")
        XCTAssertEqual(boardButtonAt(x: 1, y: 5).label, "Second Player")
    }

    func testDiscPlacementForTurn3() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 1, y: 0).tap()
        boardButtonAt(x: 2, y: 0).tap()

        XCTAssertEqual(boardButtonAt(x: 0, y: 5).label, "First Player")
        XCTAssertEqual(boardButtonAt(x: 1, y: 5).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 2, y: 5).label, "First Player")
    }

    func testDiscStacking1() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()

        XCTAssertEqual(boardButtonAt(x: 0, y: 4).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 5).label, "First Player")
    }

    func testDiscStacking2() {
        app.launch()

        boardButtonAt(x: 1, y: 0).tap()
        boardButtonAt(x: 1, y: 0).tap()

        XCTAssertEqual(boardButtonAt(x: 1, y: 4).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 1, y: 5).label, "First Player")
    }

    func testDiscStacking3() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 1).tap()

        XCTAssertEqual(boardButtonAt(x: 0, y: 4).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 5).label, "First Player")
    }

    func testDiscStacking4() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()

        boardButtonAt(x: 0, y: 0).tap()

        XCTAssertEqual(boardButtonAt(x: 0, y: 0).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 1).label, "First Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 2).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 3).label, "First Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 4).label, "Second Player")
        XCTAssertEqual(boardButtonAt(x: 0, y: 5).label, "First Player")
    }

    func testPlayerTurnIndicatorForTurn1() {
        app.launch()

        XCTAssertTrue(app.staticTexts["It’s First Player’s Turn"].isHittable)
        XCTAssertTrue(app.staticTexts["Second Player"].isHittable)

        XCTAssertFalse(app.staticTexts["First Player"].exists)
        XCTAssertFalse(app.staticTexts["It’s Second Player’s Turn"].exists)
    }

    func testPlayerTurnIndicatorForTurn2() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()

        XCTAssertTrue(app.staticTexts["It’s Second Player’s Turn"].isHittable)
        XCTAssertTrue(app.staticTexts["First Player"].isHittable)

        XCTAssertFalse(app.staticTexts["Second Player"].exists)
        XCTAssertFalse(app.staticTexts["It’s First Player’s Turn"].exists)
    }

    func testPlayerTurnIndicatorForTurn3() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()

        XCTAssertTrue(app.staticTexts["It’s First Player’s Turn"].isHittable)
        XCTAssertTrue(app.staticTexts["Second Player"].isHittable)

        XCTAssertFalse(app.staticTexts["First Player"].exists)
        XCTAssertFalse(app.staticTexts["It’s Second Player’s Turn"].exists)
    }

    func testPlayerTurnIndicatorForInvalidTurn() {
        app.launch()

        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()
        boardButtonAt(x: 0, y: 0).tap()

        boardButtonAt(x: 0, y: 0).tap()

        XCTAssertTrue(app.staticTexts["It’s First Player’s Turn"].isHittable)
        XCTAssertTrue(app.staticTexts["Second Player"].isHittable)
    }

    func testDraw() {
        app.launch()

        for _ in 1...defaultBoardRowsPerColumn {
            boardButtonAt(x: 0, y: 0).tap()
            boardButtonAt(x: 2, y: 0).tap()
            boardButtonAt(x: 4, y: 0).tap()
            boardButtonAt(x: 6, y: 0).tap()

            boardButtonAt(x: 1, y: 0).tap()
            boardButtonAt(x: 3, y: 0).tap()
            boardButtonAt(x: 5, y: 0).tap()
        }

        XCTAssertTrue(app.alerts["It's a draw!"].exists)
        app.buttons["Play again"].tap()
        XCTAssertEqual(boardButtons.matching(.button, identifier: "Empty").count, defaultBoardButtonCount)
    }
}
