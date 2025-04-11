import UIKit

public struct FontFactory {
    let font: DSFont
    let size: DSFontSize
    let color: DSColor
    let alignment: NSTextAlignment
    let opacity: DSOpacity
    
    public init(font: DSFont, size: DSFontSize, color: DSColor, alignment: NSTextAlignment, opacity: DSOpacity) {
        self.font = font
        self.size = size
        self.color = color
        self.alignment = alignment
        self.opacity = opacity
    }
    
    public func uiFont() -> UIFont? {
        return font.font(ofSize: size)
    }
    
    /// Возвращает цвет с учётом opacity
    public func uiColor() -> UIColor {
        return color.uiColor.withAlphaComponent(CGFloat(opacity.rawValue))
    }
    
    public func apply(to label: UILabel) {
        label.font = uiFont()
        label.textColor = uiColor()
        label.textAlignment = alignment
        label.layer.opacity = Float(opacity.rawValue)
    }
    
    public func apply(to button: UIButton) {
        button.titleLabel?.font = uiFont()
        button.setTitleColor(uiColor(), for: .normal)
        button.titleLabel?.textAlignment = alignment
        button.layer.opacity = Float(opacity.rawValue)
    }
}

