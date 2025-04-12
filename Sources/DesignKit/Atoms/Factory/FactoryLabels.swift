import UIKit


public struct FactoryLabel {
    public init(){}
    public static func createLabel(numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor, font: FontFactory
    ) -> UILabel {
        let label = UILabel()
        label.applyFrontStyle(font)
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
}
