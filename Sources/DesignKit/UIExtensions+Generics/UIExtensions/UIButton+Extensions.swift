import UIKit

extension UIButton: AttributedTextSettable {
    func setAttributedContent(_ content: NSAttributedString) {
        self.setAttributedTitle(content, for: .normal)
    }
}
