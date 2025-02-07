import UIKit

protocol OnboardingUIProtocol {
    func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public class OnboardingUI: OnboardingUIProtocol {
    
    private init() {}
    
    public static let shared = OnboardingUI()
    
    public func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
        let font = FontFactory(font: .semiBold, size: .large, color: .white100, alignment: .center)
        return ActionButton(text: text, frontText: font, style: .positive, cornerRadius: .max, backgroundColor: .primary500, action: action).createButton()
    }
}
