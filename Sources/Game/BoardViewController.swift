import UIKit

final class BoardViewController: UIViewController {
    private enum LocalizedStringKey: String {
        case discEmpty = "board.disc.empty"
        case player1 = "board.player1"
        case player2 = "board.player2"
        case player1Turn = "board.turn.player1"
        case player2Turn = "board.turn.player2"
    }

    private enum ColorName: String {
        case lightGray = "Colors/LightGray"
        case darkGray = "Colors/DarkGray"
        case red = "Colors/Red"
        case yellow = "Colors/Yellow"
    }

    @IBOutlet private var boardPositionButtons: [UIButton] = []
    @IBOutlet private var boardDiscViews: [CircleView] = []

    @IBOutlet private var turnIndicator1: UIView!
    @IBOutlet private var turnIndicator2: UIView!

    private var board: Board!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        board = Board(delegate: self)
    }

    @IBAction private func userDidTapOn(button: UIButton) {
        let buttonIndex = boardPositionButtons.index(of: button)!
        board.placeDisc(atIndex: buttonIndex)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

extension BoardViewController: BoardDelegate {
    func board(_ board: Board, didUpdate disc: BoardDisc, atIndex index: Int) {
        let discColor: ColorName
        let discAccessibilityLabel: LocalizedStringKey

        switch disc {
        case .none:
            discColor = .lightGray
            discAccessibilityLabel = .discEmpty
        case .player1:
            discColor = .red
            discAccessibilityLabel = .player1
        case .player2:
            discColor = .yellow
            discAccessibilityLabel = .player2
        }

        boardDiscViews[index].backgroundColor = UIColor(named: discColor.rawValue)
        boardPositionButtons[index].accessibilityLabel = NSLocalizedString(discAccessibilityLabel.rawValue, comment: "")
    }

    func board(_ board: Board, didBeginTurnFor player: BoardPlayer) {
        let turnIndicator1BackgroundColor: ColorName
        let turnIndicator2BackgroundColor: ColorName
        let turnIndicator1AccessiblityLabel: LocalizedStringKey
        let turnIndicator2AccessiblityLabel: LocalizedStringKey

        switch player {
        case .player1:
            turnIndicator1BackgroundColor = .red
            turnIndicator2BackgroundColor = .darkGray
            turnIndicator1AccessiblityLabel = .player1Turn
            turnIndicator2AccessiblityLabel = .player2

        case .player2:
            turnIndicator1BackgroundColor = .darkGray
            turnIndicator2BackgroundColor = .yellow
            turnIndicator1AccessiblityLabel = .player1
            turnIndicator2AccessiblityLabel = .player2Turn
        }

        turnIndicator1.backgroundColor = UIColor(named: turnIndicator1BackgroundColor.rawValue)
        turnIndicator2.backgroundColor = UIColor(named: turnIndicator2BackgroundColor.rawValue)
        turnIndicator1.accessibilityLabel = NSLocalizedString(turnIndicator1AccessiblityLabel.rawValue, comment: "")
        turnIndicator2.accessibilityLabel = NSLocalizedString(turnIndicator2AccessiblityLabel.rawValue, comment: "")
    }
}
