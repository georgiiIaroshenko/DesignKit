import UIKit

public class ActionButton {
    
    let text: String
    let frontText: FontFactory
    let image: UIImage?
    let style: Style
    let cornerRadius: DSRadius
    let backgroundColor: DSColor
    let opacity: DSOpacity
    let action: () -> Void
    
    init(text: String, frontText: FontFactory, style: Style, cornerRadius: DSRadius, image: UIImage? = nil ,backgroundColor: DSColor, opacity: DSOpacity, action: @escaping () -> Void) {
        self.text = text
        self.frontText = frontText
        self.style = style
        self.cornerRadius = cornerRadius
        self.image = image
        self.backgroundColor = backgroundColor
        self.opacity = opacity
        self.action = action
    }
    
    func createButton() -> UIButton {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = cornerRadius.radiusValue()
        button.layer.opacity = opacity.opacityValue()
        let attributedTitle = frontText.attributedString(for: text)
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        print("Attributed title: \(text)")
        button.backgroundColor = backgroundColor.uiColor
        let uiAction = UIAction { [action = self.action] _ in
            action()
        }
        button.addAction(uiAction, for: .touchUpInside)
        
        return button
    }
}

public enum Style: String, CaseIterable {
    case negative
    case positive
}
