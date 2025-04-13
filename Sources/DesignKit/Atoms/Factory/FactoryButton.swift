import UIKit

public struct ButtonConfiguration {
    let font: FontFactory
    let style: UIButton.ButtonType
    let cornerRadius: DSRadius
    let backgroundColor: DSColor = .clear
    let opacity: DSOpacity
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


