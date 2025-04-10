import UIKit

extension UITextField: AttributedTextSettable {
    public func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }
    
    public func setAttributedContentPlaceholder(_ content: NSAttributedString) {
        self.attributedPlaceholder = content
    }
}
