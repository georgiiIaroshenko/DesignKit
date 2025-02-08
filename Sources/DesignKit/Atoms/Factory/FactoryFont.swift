import UIKit
internal protocol FontFactoryProtocol {
    func attributedString(for text: String) -> NSAttributedString
}

internal struct FontFactory: FontFactoryProtocol {
    private let font: DSFont
    private let size: AppFontSize
    private let color: DSColor
    private let alignment: NSTextAlignment
    private let opacity: DSOpacity
    
    internal init(font: DSFont, size: AppFontSize, color: DSColor, alignment: NSTextAlignment, opacity: DSOpacity) {
        self.font = font
        self.size = size
        self.color = color
        self.alignment = alignment
        self.opacity = opacity
    }
    
    internal func attributedString(for text: String) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        
        
        return NSAttributedString(
            string: text,
            attributes: [
                .font: font.font(ofSize: size),
//                .font: UIFont.systemFont(ofSize: 20),
                .foregroundColor: color.uiColor.withAlphaComponent(CGFloat(opacity.opacityValue())),
                .paragraphStyle: paragraphStyle
            ]
        )
    }
}

