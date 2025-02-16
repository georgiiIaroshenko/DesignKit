import UIKit

public struct FontFactory {
    private let font: DSFont
    private let size: DSFontSize
    private let color: DSColor
    private let alignment: NSTextAlignment
    private let opacity: DSOpacity
    
    public init(font: DSFont, size: DSFontSize, color: DSColor, alignment: NSTextAlignment, opacity: DSOpacity) {
        self.font = font
        self.size = size
        self.color = color
        self.alignment = alignment
        self.opacity = opacity
    }
    
    public func attributedString(for text: String?) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        
        
        return NSAttributedString(
            string: text ?? "",
            attributes: [
                .font: font.font(ofSize: size),
                .foregroundColor: color.uiColor,
//                    .withAlphaComponent(CGFloat(opacity.opacityValue())),
                .paragraphStyle: paragraphStyle
            ]
        )
    }
}

