import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var boardPositionButtons: [UIButton] = []
    @IBOutlet private var boardDiscViews: [CircleView] = []

    private var board: Board!
    override func viewDidLoad() {
        super.viewDidLoad()
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

extension ViewController: BoardDelegate {
    func board(_ board: Board, didUpdate disc: BoardDisc, atIndex index: Int) {
        let discColorName: String
        let discAccessibilityLabel: String

        switch disc {
        case .none:
            discColorName = "Colors/Gray"
            discAccessibilityLabel = NSLocalizedString("board.disc.empty", comment: "")
        case .player1:
            discColorName = "Colors/Red"
            discAccessibilityLabel = NSLocalizedString("board.disc.player1", comment: "")
        case .player2:
            discColorName = "Colors/Yellow"
            discAccessibilityLabel = NSLocalizedString("board.disc.player2", comment: "")
        }

        boardDiscViews[index].backgroundColor = UIColor(named: discColorName)
        boardPositionButtons[index].accessibilityLabel = discAccessibilityLabel
    }
}
