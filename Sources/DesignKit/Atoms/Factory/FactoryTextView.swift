import UIKit

public struct TextViewStyle {
    let font: FontFactory
    let backgroundColor: DSColor
    let isEditable: Bool
    let isScrollEnabled: Bool
    
    public init(font: FontFactory, backgroundColor: DSColor, isEditable: Bool, isScrollEnabled: Bool) {
        self.font = font
        self.backgroundColor = backgroundColor
        self.isEditable = isEditable
        self.isScrollEnabled = isScrollEnabled
    }
}

final public class FactoryTextView: UITextView {
    public static func createTextField(_ style: TextViewStyle) -> UITextView {
        let sw = UITextView()
        sw.font = style.font.font.font(ofSize: style.font.size)
        sw.textColor = style.font.color.uiColor
        sw.textAlignment = style.font.alignment
        sw.layer.opacity = style.font.opacity.rawValue
        sw.backgroundColor = style.backgroundColor.uiColor
        sw.isEditable = style.isEditable
        sw.isScrollEnabled = style.isScrollEnabled
        return sw
    }
}
