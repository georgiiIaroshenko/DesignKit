import UIKit

public struct ButtonConfiguration {
    let font: FontFactory
    let style: UIButton.ButtonType
    let cornerRadius: DSRadius
    let backgroundColor: DSColor
    let opacity: DSOpacity
//    let action: (() -> Void)?
}

public class FactoryButton {
    
//    public static func actionButtonCreate(_ configuration: ButtonConfiguration) -> UIButton {
//        let button = UIButton(type: configuration.style)
//        button.layer.cornerRadius = configuration.cornerRadius.rawValue
//        button.layer.opacity = configuration.opacity.rawValue
//        button.applyFrontStyle(configuration.font)
//        button.backgroundColor = configuration.backgroundColor.uiColor
//        
//        switch configuration.action {
//        case .none:
//        case .some(let value):
//            let uiAction = UIAction { _ in
//                configuration.action()
//            }
//            button.addAction(uiAction, for: .touchUpInside)
//        }
//        
//        return button
//    }
    
    public static func nonActionButtonCreate(_ configuration: ButtonConfiguration) -> UIButton {
        let button = UIButton(type: configuration.style)
        button.layer.cornerRadius = configuration.cornerRadius.rawValue
        button.layer.opacity = configuration.opacity.rawValue
        button.applyFrontStyle(configuration.font)
        button.backgroundColor = configuration.backgroundColor.uiColor
        return button
    }
}


