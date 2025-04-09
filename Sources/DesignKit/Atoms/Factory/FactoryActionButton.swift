import UIKit

struct ActionButtonConfiguration {
    let text: String
    let fontFactory: FontFactory
    let image: UIImage?
    let style: Style
    let cornerRadius: DSRadius
    let backgroundColor: DSColor
    let opacity: DSOpacity
    let action: () -> Void
}

public enum Style: String, CaseIterable {
    case negative
    case positive
}

final public class FactoryActionButton {
    
    static func createButton(configuration: ActionButtonConfiguration) -> UIButton {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = configuration.cornerRadius.rawValue
        button.layer.opacity = configuration.opacity.rawValue
        let attributedTitle = configuration.fontFactory.attributedString(for: configuration.text)
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        print("Attributed title: \(configuration.text)")
        button.backgroundColor = configuration.backgroundColor.uiColor
        let uiAction = UIAction { _ in
            configuration.action()
        }
        button.addAction(uiAction, for: .touchUpInside)
        
        return button
    }
}


