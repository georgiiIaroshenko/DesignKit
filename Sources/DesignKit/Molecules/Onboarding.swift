import UIKit

protocol OnboardingUIProtocol {
    static func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public struct OnboardingUI: OnboardingUIProtocol {
    public init(){}
    static func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
        let font = FontFactory(font: .bold, size: .midium, color: .green100, alignment: .center)
        return ActionButton.init(text: text, frontText: font, style: .positive, cornerRadius: .minimum, backgroundColor: .green300, action: action).createButton()
    }
}
