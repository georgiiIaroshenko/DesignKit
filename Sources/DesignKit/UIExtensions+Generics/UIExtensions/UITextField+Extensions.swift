import UIKit

extension UITextField: AttributedTextSettable, FontStylable {
    typealias Style = FontFactory
     
    func applyFrontStyle(_ style: FontFactory) {
        self.font = style.font.font(ofSize: style.size)
        self.textColor = style.color.uiColor.withAlphaComponent(CGFloat(style.opacity.rawValue))
        self.textAlignment = style.alignment
        self.layer.opacity = Float(style.opacity.rawValue)
    }
    
    public func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }
    
    public func setAttributedContentPlaceholder(_ content: NSAttributedString) {
        self.attributedPlaceholder = content
    }
}
