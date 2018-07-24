import Foundation

enum BoardDisc {
    case empty
    case player1
    case player2
}

enum BoardPlayer {
    case player1
    case player2
}

protocol BoardDelegate: AnyObject {
    func board(_ board: Board, didUpdateDiscAtIndex index: Int, to disc: BoardDisc)
    func board(_ board: Board, didBeginTurnFor player: BoardPlayer)
}

final class Board {
    weak var delegate: BoardDelegate?

    private let width = 7
    private let height = 6
    private var currentPlayer: BoardPlayer = .player1

    init(delegate: BoardDelegate) {
        self.delegate = delegate

        for discIndex in 0 ..< width * height {
            delegate.board(self, didUpdateDiscAtIndex: discIndex, to: .empty)
        }

        delegate.board(self, didBeginTurnFor: currentPlayer)
    }

    func placeDisc(atIndex index: Int) {
        let disc: BoardDisc
        switch currentPlayer {
        case .player1: disc = .player1
        case .player2: disc = .player2
        }

        let column = index / height
        let columnFirstIndex = column * height
        let columnLastIndex = columnFirstIndex + height - 1

        delegate?.board(self, didUpdateDiscAtIndex: columnLastIndex, to: disc)
        delegate?.board(self, didBeginTurnFor: nextPlayer)

        currentPlayer = nextPlayer
    }

    private var nextPlayer: BoardPlayer {
        switch currentPlayer {
        case .player1: return .player2
        case .player2: return .player1
        }
    }
}
