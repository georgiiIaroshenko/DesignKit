import UIKit

public protocol OnboardingUIProtocol {
    func createNextScreenButton(action: @escaping () -> Void) -> UIButton
    func skipNextScreenButton(action: @escaping () -> Void) -> UIButton
    func myFlagImage() -> UIImage?
}

final public class OnboardingUI: OnboardingUIProtocol {
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
    
    public final func myFlagImage() -> UIImage? {
        let image = UIImage(named: "CupStar", in: .module, compatibleWith: nil)
        image?.withTintColor(DSColor.green200.uiColor)
        print("IMAGE:", image as Any)
        return image
    }
    
    public final func createNextScreenButton(action: @escaping () -> Void) -> UIButton {
            return createButton(with: nextButtonConfiguration, action: action)
        }
    
    public final func skipNextScreenButton(action: @escaping () -> Void) -> UIButton {
            return createButton(with: skipButtonConfiguration, action: action)
        }
}

public extension OnboardingUI {
    func createButton(with config: ButtonConfiguration, action: @escaping () -> Void) -> UIButton {
        return FactoryActionButton.createButton(configuration: ActionButtonConfiguration(fontFactory: config.font,
                                                                                         image: nil,
                                                                                         style: config.style,
                                                                                         cornerRadius: config.cornerRadius,
                                                                                         backgroundColor: config.backgroundColor,
                                                                                         opacity: config.opacity,
                                                                                         action: action))
    }
}

public struct ButtonConfiguration {
    let font: FontFactory
    let backgroundColor: DSColor
    let cornerRadius: DSRadius
    let style: Style
    let opacity: DSOpacity
}

