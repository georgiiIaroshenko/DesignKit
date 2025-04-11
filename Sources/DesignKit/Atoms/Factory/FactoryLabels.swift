import UIKit


public struct FactoryLabel {
    public init(){}
    public static func createLabel(numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor, font: FontFactory
    ) -> UILabel {
        let label = UILabel()
        font.apply(to: label)
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
}
