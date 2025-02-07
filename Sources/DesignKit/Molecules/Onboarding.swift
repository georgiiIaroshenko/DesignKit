import UIKit

protocol OnboardingUIProtocol {
    func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public struct OnboardingUI: OnboardingUIProtocol {
    public init(){}
    public func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
        let font = FontFactory(font: .bold, size: .midium, color: .white100, alignment: .center)
        return ActionButton.init(text: text, frontText: font, style: .positive, cornerRadius: .minimum, backgroundColor: .primary500, action: action).createButton()
    }
}
