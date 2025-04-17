import UIKit

public struct TextViewStyle {
    let font: FontFactory
    let backgroundColor: DSColor
    let isEnabled: Bool
    let isScrollEnabled: Bool
    
    public init(font: FontFactory, backgroundColor: DSColor, isEnabled: Bool, isScrollEnabled: Bool) {
        self.font = font
        self.backgroundColor = backgroundColor
        self.isEnabled = isEnabled
        self.isScrollEnabled = isScrollEnabled
    }
}

final public class FactoryTextView: UITextField {
    public static func createTextField(_ style: TextViewStyle) -> UITextField {
        let tf = UITextField()
        tf.font = style.font.font.font(ofSize: style.font.size)
        tf.textColor = style.font.color.uiColor
        tf.textAlignment = style.font.alignment
        tf.layer.opacity = style.font.opacity.rawValue
        tf.backgroundColor = style.backgroundColor.uiColor
        tf.isEnabled       = style.isEnabled
//        tf.isScrollEnabled = style.isScrollEnabled
        return tf
    }
}
