import Foundation

enum BoardDisc {
    case none
    case player1
    case player2
}

enum BoardPlayer {
    case player1
    case player2
}

protocol BoardDelegate: AnyObject {
    func board(_ board: Board, didUpdate disc: BoardDisc, atIndex index: Int)
    func board(_ board: Board, didBeginTurnFor player: BoardPlayer)
}

final class Board {
    weak var delegate: BoardDelegate?

    init(delegate: BoardDelegate) {
        self.delegate = delegate

        for discIndex in 0..<42 {
            delegate.board(self, didUpdate: .none, atIndex: discIndex)
        }

        delegate.board(self, didBeginTurnFor: .player1)
    }

    func placeDisc(atIndex index: Int) {
    }
}
