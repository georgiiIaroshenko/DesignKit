import UIKit
internal protocol FontFactoryProtocol {
    func attributedString(for text: String) -> NSAttributedString
}

internal struct FontFactory: FontFactoryProtocol {
    private let font: DSFont
    private let size: AppFontSize
    private let color: DSColor
    private let alignment: NSTextAlignment
    
    internal init(font: DSFont, size: AppFontSize, color: DSColor, alignment: NSTextAlignment) {
        self.font = font
        self.size = size
        self.color = color
        self.alignment = alignment
    }
    
    internal func attributedString(for text: String = "") -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        
        return NSAttributedString(
            string: text,
            attributes: [
                .font: font.font(ofSize: size),
                .foregroundColor: color.uiColor,
                .paragraphStyle: paragraphStyle
            ]
        )
    }
}

