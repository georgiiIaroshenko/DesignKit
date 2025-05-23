import UIKit

public class GradientLabel: UILabel {
    
    /// Градиентный слой, который будет показывать цвета.
    private let gradientLayer = CAGradientLayer()
    
    /// Цвета градиента. Можно сделать публичным свойством, чтобы внешний код мог задавать градиент.
    public var gradientColors: [UIColor] = [.red, .blue] {
        didSet {
            // Обновляем градиентные цвета при изменении
            gradientLayer.colors = gradientColors.map { $0.cgColor }
        }
    }
    
    public var gradientDirection: GradientDirection = .leftToRight {
            didSet {
                gradientLayer.startPoint = gradientDirection.startPoint
                gradientLayer.endPoint = gradientDirection.endPoint
            }
        }
    
    // Инициализаторы:
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    /// Общая настройка: задаём прозрачный цвет текста и конфигурируем градиентный слой.
    private func commonInit() {
        // Чтобы текст не отрисовывался привычным способом, скрываем его цвет:
        textColor = .clear
        
        // Настроим начальные параметры градиента
        gradientLayer.colors = gradientColors.map { $0.cgColor }
        // Инициализируем с дефолтным направлением
        gradientLayer.startPoint = gradientDirection.startPoint
        gradientLayer.endPoint = gradientDirection.endPoint
        
        // Добавляем слой только один раз
        layer.addSublayer(gradientLayer)
    }
    
    /// Каждый раз, когда меняется размер или текст лейбла, обновляем кадры и маску
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        // Устанавливаем градиентному слою тот же фрейм, что и у лейбла
        gradientLayer.frame = bounds
        
        // Создаем маску с помощью CATextLayer, который повторяет свойства лейбла.
        let textMask = CATextLayer()
        textMask.string = text
        textMask.frame = bounds
        textMask.alignmentMode = self.convertTextAlignment()
        textMask.contentsScale = UIScreen.main.scale
        textMask.font = font
        textMask.fontSize = font.pointSize
        // Используем маску, чтобы показать градиент только там, где отрисован текст
        gradientLayer.mask = textMask
    }
    
    /// Преобразование NSTextAlignment к строковому представлению для CATextLayer
    private func convertTextAlignment() -> CATextLayerAlignmentMode {
        switch textAlignment {
        case .left:
            return .left
        case .center:
            return .center
        case .right:
            return .right
        case .justified:
            return .justified
        case .natural:
            return .natural
        @unknown default:
            return .left
        }
    }
}

public enum GradientDirection {
    case leftToRight
    case topToBottom
    case topLeftToBottomRight
    case topRightToBottomLeft

    var startPoint: CGPoint {
        switch self {
        case .leftToRight:
            return CGPoint(x: 0, y: 0.5)
        case .topToBottom:
            return CGPoint(x: 0.5, y: 0)
        case .topLeftToBottomRight:
            return CGPoint(x: 0, y: 0)
        case .topRightToBottomLeft:
            return CGPoint(x: 1, y: 0)
        }
    }

    var endPoint: CGPoint {
        switch self {
        case .leftToRight:
            return CGPoint(x: 1, y: 0.5)
        case .topToBottom:
            return CGPoint(x: 0.5, y: 1)
        case .topLeftToBottomRight:
            return CGPoint(x: 1, y: 1)
        case .topRightToBottomLeft:
            return CGPoint(x: 0, y: 1)
        }
    }
}
