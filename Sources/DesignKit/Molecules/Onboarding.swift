import UIKit

protocol OnboardingUIProtocol {
    func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public struct OnboardingUI: OnboardingUIProtocol {
    public init(){}
    public func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
        let font = FontFactory(font: .regular, size: .large, color: .black100, alignment: .center)
        return ActionButton.init(text: "adsdasdasd", frontText: font, style: .positive, cornerRadius: .max, backgroundColor: .primary500, action: action).createButton()
    }
}
