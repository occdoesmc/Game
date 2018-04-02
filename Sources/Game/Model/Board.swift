import Foundation

enum BoardDiscColor {

    case yellow
    case red
    case gray

}

protocol BoardDelegate: AnyObject {

    func board(_ board: Board, didPlaceDiscAtIndex index: Int)
    func board(_ board: Board, didUpdateColor: BoardDiscColor, forDiscAtIndex index: Int)
    func board(_ board: Board, didUpdateActive isActive: Bool, forDiscAtIndex index: Int)
    func board(_ board: Board, didEndGameWithMessage message: String)

}

final class Board {

    weak var delegate: BoardDelegate?

    init() {
    }

    func placeDisc(inColumn column: Int) {

    }

}
