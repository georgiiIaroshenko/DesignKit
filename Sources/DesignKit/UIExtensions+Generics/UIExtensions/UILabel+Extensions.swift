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
    
    public override var intrinsicContentSize: CGSize {
            // Получаем стандартный размер
            var size = super.intrinsicContentSize
            // При необходимости добавляем дополнительные отступы
            size.height += 10
            size.width += 20
            return size
        }
}
