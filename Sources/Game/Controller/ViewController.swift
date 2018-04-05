import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var boardPositionButtons: [UIButton] = []
    @IBOutlet private var boardDiscViews: [CircleView] = []

    @IBAction private func userDidTapOn(button: UIButton) {
        print("\(boardPositionButtons.index(of: button))")
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
