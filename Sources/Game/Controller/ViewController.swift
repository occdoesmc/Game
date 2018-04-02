import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var columnButtons: [UIButton] = []
    @IBOutlet private var discViews: [CircleView] = []

    @IBAction private func userDidTapColumnButton(_ columnButton: UIButton) {
        print(columnButtons.index(of: columnButton)!)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
