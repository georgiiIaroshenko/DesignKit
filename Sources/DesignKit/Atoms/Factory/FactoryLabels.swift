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

public struct FactoryGradientLabel {
    public init(){}
    public static func createLabel(numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor = .clear, gradientColor: [UIColor], gradientDirection: GradientDirection , font: FontFactory
    ) -> UILabel {
        let label = GradientLabel(frame: CGRect(x: 20, y: 100, width: 300, height: 50))
        label.gradientDirection = gradientDirection
        label.applyFrontStyle(font)
        label.gradientColors = gradientColor
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
}
