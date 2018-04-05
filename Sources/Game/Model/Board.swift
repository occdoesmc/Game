import Foundation

enum BoardDisc {

    case player1
    case player2
    case none

}

protocol BoardDelegate: AnyObject {

    func board(_ board: Board, didPlaceDiscAtIndex index: Int)
    func board(_ board: Board, didUpdate: BoardDisc, atIndex index: Int)
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
