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

    private static let width = 7
    private static let height = 6
    private var currentPlayer: BoardPlayer = .player1
    private var discs: [BoardDisc] = Array(repeating: .empty, count: width * height)

    init(delegate: BoardDelegate) {
        self.delegate = delegate

        for index in discs.indices {
            delegate.board(self, didUpdateDiscAtIndex: index, to: discs[index])
        }

        delegate.board(self, didBeginTurnFor: currentPlayer)
    }

    func placeDisc(atIndex index: Int) {
        let column = index / Board.height
        let columnFirstIndex = column * Board.height
        let columnLastIndex = columnFirstIndex + Board.height - 1
        let columnRange = columnFirstIndex ... columnLastIndex
        let columnDiscs = discs[columnRange]
        let columnDiscsReversed = Array(columnDiscs.reversed())

        guard let discIndexInColumn = columnDiscsReversed.firstIndex(of: .empty) else { return }
        let discIndex = columnFirstIndex + Board.height - discIndexInColumn - 1

        let disc: BoardDisc
        switch currentPlayer {
        case .player1: disc = .player1
        case .player2: disc = .player2
        }

        discs[discIndex] = disc

        delegate?.board(self, didUpdateDiscAtIndex: discIndex, to: disc)
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
