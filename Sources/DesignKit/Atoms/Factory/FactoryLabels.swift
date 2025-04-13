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

public class PaddedLabel: UILabel {
    private var horizontalPadding: CGFloat = 10

    public static func createLabel(numberOfLines: DSFontNumberOfLines, backgroundColor: DSColor, font: FontFactory
    ) -> UILabel {
        let label = UILabel()
        label.applyFrontStyle(font)
        label.backgroundColor = backgroundColor.uiColor
        label.numberOfLines = numberOfLines.rawValue
        return label
    }
    
    // Переопределяем метод, отвечающий за вычисление прямоугольника для текста.
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        // Сначала уменьшаем bounds на нужные отступы, чтобы вызвать super метод
        let insetRect = bounds.insetBy(dx: horizontalPadding, dy: 0)
        let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        // Затем возвращаем текстовый прямоугольник, расширив его обратно, чтобы добавить отступы
        return textRect.insetBy(dx: -horizontalPadding, dy: 0)
    }
    
    // Переопределяем отрисовку текста, чтобы применить отступы
    public override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: horizontalPadding, bottom: 0, right: horizontalPadding)
        super.drawText(in: rect.inset(by: insets))
    }
    
    // Обновляем intrinsicContentSize, чтобы он учитывал отступы
    public override var intrinsicContentSize: CGSize {
        let originalSize = super.intrinsicContentSize
        return CGSize(width: originalSize.width + 2 * horizontalPadding, height: originalSize.height)
    }
}
