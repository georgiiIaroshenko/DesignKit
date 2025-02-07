import UIKit

class ActionButton {
    public enum Style: String, CaseIterable {
        case negative
        case positive
    }
    
    private let text: String
    private let frontText: FontFactory
    private let image: UIImage?
    private let style: ActionButton.Style
    private let cornerRadius: AppRadius
    private let backgroundColor: DSColor
    @objc private let action: () -> Void
    
    init(text: String, frontText: FontFactory, style: ActionButton.Style, cornerRadius: AppRadius, image: UIImage? = nil ,backgroundColor: DSColor, action: @escaping () -> Void) {
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
//        button.setTitle(text, for: .normal)
        button.titleLabel?.attributedText = frontText.attributedString(for: text)
        button.backgroundColor = backgroundColor.uiColor
        button.addTarget(self, action: #selector(getter: action), for: .touchUpInside)
        return button
    }
}
