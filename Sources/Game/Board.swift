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

    private let width = 7
    private let height = 6

    init(delegate: BoardDelegate) {
        self.delegate = delegate

        for discIndex in 0 ..< width * height {
            delegate.board(self, didUpdate: .none, atIndex: discIndex)
        }

        delegate.board(self, didBeginTurnFor: .player1)
    }

    func placeDisc(atIndex index: Int) {
        let column = index / height
        let columnFirstIndex = column * height
        let columnLastIndex = columnFirstIndex + height - 1

        delegate?.board(self, didUpdate: .player1, atIndex: columnLastIndex)
    }
}
