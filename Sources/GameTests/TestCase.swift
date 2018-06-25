import XCTest

class TestCase: XCTestCase {
    let application = XCUIApplication()
    let boardRowsPerColumn = 6
    let boardColumnsPerRow = 7

    override func setUp() {
        super.setUp()
        application.launch()
    }

    // swiftlint:disable:next identifier_name
    func buttonAt(x: Int, y: Int) -> XCUIElement {
        let index = x * boardRowsPerColumn + y
        let button = application.buttons.element(boundBy: index)
        return button
    }
}
