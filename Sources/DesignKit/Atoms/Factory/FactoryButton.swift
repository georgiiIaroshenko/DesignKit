import UIKit

public struct ButtonConfiguration {
    let font: FontFactory
    let style: UIButton.ButtonType
    let cornerRadius: DSRadius
    let backgroundColor: DSColor
    let opacity: DSOpacity
    
    public init(font: FontFactory,
                 style: UIButton.ButtonType,
                 cornerRadius: DSRadius,
                 backgroundColor: DSColor = .clear,
                 opacity: DSOpacity){
        self.font = font
        self.style = style
        self.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.opacity = opacity
    }
}

public class FactoryButton {
    public init(){}
    public static func nonActionButtonCreate(_ configuration: ButtonConfiguration) -> UIButton {
        let button = UIButton(type: configuration.style)
        button.layer.cornerRadius = configuration.cornerRadius.rawValue
        button.layer.opacity = configuration.opacity.rawValue
        button.applyFrontStyle(configuration.font)
        button.backgroundColor = configuration.backgroundColor.uiColor
        return button
    }
}


