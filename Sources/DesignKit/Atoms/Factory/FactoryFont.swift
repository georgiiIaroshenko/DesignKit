import UIKit

public struct FontFactory {
//    private let font: DSFont
//    private let size: DSFontSize
//    private let color: DSColor
//    private let alignment: NSTextAlignment
//    private let opacity: DSOpacity
//    
//    public init(font: DSFont, size: DSFontSize, color: DSColor, alignment: NSTextAlignment, opacity: DSOpacity) {
//        self.font = font
//        self.size = size
//        self.color = color
//        self.alignment = alignment
//        self.opacity = opacity
//    }
    
    public static func attributedString(for text: String?, style: FontFactoryStyle) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = style.alignment
        
        
        return NSAttributedString(
            string: text ?? "f",
            attributes: [
                .font: style.font.font(ofSize: style.size),
                .foregroundColor: style.color.uiColor.withAlphaComponent(CGFloat(style.opacity.rawValue)),
                .paragraphStyle: paragraphStyle
            ]
        )
    }
}

public struct FontFactoryStyle {
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
}
