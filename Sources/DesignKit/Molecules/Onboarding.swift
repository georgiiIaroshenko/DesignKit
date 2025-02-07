import UIKit

protocol OnboardingUIProtocol {
    static func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public class OnboardingUI: OnboardingUIProtocol {
    
    private init() {}
    
    static let shared = OnboardingUI()
    
    public static func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
        let font = FontFactory(font: .regular, size: .large, color: .black100, alignment: .right)
        return ActionButton(text: text, frontText: font, style: .positive, cornerRadius: .max, backgroundColor: .primary500, action: action).createButton()
    }
}
