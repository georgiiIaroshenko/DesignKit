import UIKit

extension UITextField: AttributedTextSettable {
    public func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }

}
