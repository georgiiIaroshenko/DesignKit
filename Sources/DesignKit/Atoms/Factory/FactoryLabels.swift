import UIKit


public struct FactoryLabel {
    public init(){}
    public static func createLabel(
        text: String?, numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor, font: FontFactoryStyle
    ) -> UILabel {
        let label = UILabel()
        label.attributedText = FontFactory.attributedString(for: text, style: font)
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
}
