import UIKit

extension UILabel: AttributedTextSettable {
    public func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }
}
