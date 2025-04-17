import UIKit

public struct TextViewStyle {
    let font: FontFactory
    let backgroundColor: DSColor
    
    public init(font: FontFactory, backgroundColor: DSColor) {
        self.font = font
        self.backgroundColor = backgroundColor
    }
}

final public class FactoryTextView: UITextField {
    public static func createTextField(_ style: TextViewStyle) -> UITextField {
        let sw = UITextField()
        sw.font = style.font.font.font(ofSize: style.font.size)
        sw.textColor = style.font.color.uiColor
        sw.textAlignment = style.font.alignment
        sw.layer.opacity = style.font.opacity.rawValue
        sw.backgroundColor = style.backgroundColor.uiColor
        return sw
    }
}
