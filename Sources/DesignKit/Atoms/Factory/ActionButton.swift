import UIKit

class ActionButton {
    
     let text: String
     let frontText: FontFactory
     let image: UIImage?
     let style: Style
     let cornerRadius: AppRadius
     let backgroundColor: DSColor
     let action: () -> Void
    
    init(text: String, frontText: FontFactory, style: Style, cornerRadius: AppRadius, image: UIImage? = nil ,backgroundColor: DSColor, action: @escaping () -> Void) {
        self.text = text
        self.frontText = frontText
        self.style = style
        self.cornerRadius = cornerRadius
        self.image = image
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    func createButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = cornerRadius.fgfg()
        
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
