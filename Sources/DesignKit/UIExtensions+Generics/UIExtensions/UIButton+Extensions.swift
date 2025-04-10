import UIKit

extension UIButton: AttributedTextSettable {
    public func setAttributedContent(_ content: NSAttributedString) {
        self.setAttributedTitle(content, for: .normal)
    }
}
