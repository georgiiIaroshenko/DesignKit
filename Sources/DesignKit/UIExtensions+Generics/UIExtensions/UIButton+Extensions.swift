import UIKit

extension UIButton: AttributedTextSettable, FontStylable {
    typealias Style = FontFactory
    typealias configuration = ButtonConfiguration
    
    public func applyFrontStyle(_ style: FontFactory) {
        self.titleLabel?.font = style.font.font(ofSize: style.size)
        self.setTitleColor( style.color.uiColor, for: .normal)
        self.titleLabel?.textAlignment = style.alignment
        self.layer.opacity = Float(style.opacity.rawValue)
    }
    
    public func setAttributedContent(_ content: NSAttributedString) {
        self.setAttributedTitle(content, for: .normal)
    }
}
