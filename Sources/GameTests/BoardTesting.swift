import XCTest

protocol BoardTesting {
    var app: XCUIApplication { get }
}

extension BoardTesting {
    var allBoardCoordinates: [(x: Int, y: Int)] {
        var coordinates: [(x: Int, y: Int)] = []
        for positionX in 0..<defaultBoardColumnsPerRow {
            for positionY in 0..<defaultBoardRowsPerColumn {
                coordinates.append((x: positionX, y: positionY))
            }
        }
        return coordinates
    }

    func boardButtonAt(x positionX: Int, y positionY: Int) -> XCUIElement {
        let index = positionX * defaultBoardRowsPerColumn + positionY
        let button = boardButtons.element(boundBy: index)
        return button
    }

    var boardButtons: XCUIElementQuery {
        return app.otherElements["Board"].buttons
    }

    var defaultBoardButtonCount: Int {
        return defaultBoardColumnsPerRow * defaultBoardRowsPerColumn
    }

    var defaultBoardRowsPerColumn: Int { return 6 }
    var defaultBoardColumnsPerRow: Int { return 7 }
}
