import UIKit

extension UILabel: AttributedTextSettable, FontStylable {
    public typealias Style = FontFactory
    
    public func applyFrontStyle(_ style: Style) {
        self.font = style.font.font(ofSize: style.size)
        self.textColor = style.color.uiColor.withAlphaComponent(CGFloat(style.opacity.rawValue))
        self.textAlignment = style.alignment
        self.layer.opacity = Float(style.opacity.rawValue)
    }
    
    public func setAttributedContent(_ content: NSAttributedString) {
        self.attributedText = content
    }
}
