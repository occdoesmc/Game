import Foundation

enum BoardDisc {
    case none
    case player1
    case player2
}

protocol BoardDelegate: AnyObject {
//    func board(_ board: Board, didPlaceDiscAtIndex index: Int)
    func board(_ board: Board, didUpdate disc: BoardDisc, atIndex index: Int)
//    func board(_ board: Board, didUpdateActive isActive: Bool, forDiscAtIndex index: Int)
//    func board(_ board: Board, didEndGameWithMessage message: String)
}

final class Board {
    weak var delegate: BoardDelegate?
    init(delegate: BoardDelegate) {
        self.delegate = delegate
        for discIndex in 0..<42 {
            delegate.board(self, didUpdate: .none, atIndex: discIndex)
        }
    }

    func placeDisc(atIndex index: Int) {
    }
}
