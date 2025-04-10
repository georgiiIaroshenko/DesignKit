import UIKit

extension UILabel: AttributedTextSettable {
    func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }
}
