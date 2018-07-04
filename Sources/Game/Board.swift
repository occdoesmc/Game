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
    // Temporary workaround for old SwiftLint which itself
    // is a temporary workaround for Xcode beta.
    // https://stackoverflow.com/questions/51174105/xcode-10-beta-3-command-phasescriptexecution-failed-with-a-nonzero-exit-code
    // swiftlint:disable:next weak_delegate
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
