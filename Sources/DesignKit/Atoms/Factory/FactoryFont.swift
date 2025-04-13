import UIKit

protocol FontFactoryProtocol {
    var font: DSFont { get }
    var size: DSFontSize { get }
    var color: DSColor { get }
    var alignment: NSTextAlignment { get }
    var opacity: DSOpacity { get }
}

public struct FontFactory: FontFactoryProtocol {
    let font: DSFont
    let size: DSFontSize
    let color: DSColor
    let alignment: NSTextAlignment
    let opacity: DSOpacity
    
    public init(font: DSFont, size: DSFontSize, color: DSColor = .clear, alignment: NSTextAlignment, opacity: DSOpacity) {
        self.font = font
        self.size = size
        self.color = color
        self.alignment = alignment
        self.opacity = opacity
    }
}

