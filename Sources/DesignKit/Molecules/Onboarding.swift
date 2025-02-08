import UIKit

public protocol OnboardingUIProtocol {
    func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
    func skipNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton
}

public class OnboardingUI: OnboardingUIProtocol {
    private init() {}
    
    public static let shared = OnboardingUI()
    
    private var nextButtonConfiguration: ButtonConfiguration {
            return ButtonConfiguration(
                font: FontFactory(font: .semiBold, size: .large, color: .white100, alignment: .center, opacity: .full),
                backgroundColor: .primary500,
                cornerRadius: .max,
                style: .positive,
                opacity: .full
            )
        }
    
    private var skipButtonConfiguration: ButtonConfiguration {
            return ButtonConfiguration(
                font: FontFactory(font: .light, size: .large, color: .primary900, alignment: .center, opacity: .fourty),
                backgroundColor: .white100,
                cornerRadius: .max,
                style: .positive,
                opacity: .full
            )
        }
    
    public func createNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
            return createButton(with: nextButtonConfiguration, text: text, action: action)
        }
    
    public func skipNextScreenButton(text: String, action: @escaping () -> Void) -> UIButton {
            return createButton(with: skipButtonConfiguration, text: text, action: action)
        }
}

public extension OnboardingUI {
    func createButton(with configuration: ButtonConfiguration, text: String, action: @escaping () -> Void) -> UIButton {
        return ActionButton(
            text: text,
            frontText: configuration.font,
            style: configuration.style,
            cornerRadius: configuration.cornerRadius,
            backgroundColor: configuration.backgroundColor,
            opacity: configuration.opacity,
            action: action
        ).createButton()
    }
}

public struct ButtonConfiguration {
    let font: FontFactory
    let backgroundColor: DSColor
    let cornerRadius: AppRadius
    let style: Style
    let opacity: DSOpacity
}

