import UIKit


public struct FactoryLabel {
    public init(){}
    public static func createLabel(
        text: String?, numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor, font: FontFactory
    ) -> UILabel {
        let label = UILabel()
        label.attributedText = font.attributedString(for: text)
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
}
