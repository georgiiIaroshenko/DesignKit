import UIKit

public protocol OnboardingUIProtocol {
    func createNextScreenButton() -> UIButton
    func skipNextScreenButton() -> UIButton
    func myFlagImage() -> UIImage?
}

final public class OnboardingUI: OnboardingUIProtocol {
    private init() {}
    
    public static let shared = OnboardingUI()
    
    private var nextButtonConfiguration: ButtonConfiguration {
            return ButtonConfiguration(
                font: FontFactory(font: .semiBold, size: .large, color: .white100, alignment: .center, opacity: .full),
                style: .system,
                cornerRadius: .max,
                backgroundColor: .primary500,
                opacity: .full
            )
        }
    
    private var skipButtonConfiguration: ButtonConfiguration {
            return ButtonConfiguration(
                font: FontFactory(font: .light, size: .large, color: .primary900, alignment: .center, opacity: .fourty),
                style: .system,
                cornerRadius: .max,
                backgroundColor: .white100,
                opacity: .full
            )
        }
    
    public final func myFlagImage() -> UIImage? {
        let image = UIImage(named: "CupStar", in: .module, compatibleWith: nil)
        image?.withTintColor(DSColor.green200.uiColor)
        print("IMAGE:", image as Any)
        return image
    }
    
    public final func createNextScreenButton() -> UIButton {
            return createButton(with: nextButtonConfiguration)
        }
    
    public final func skipNextScreenButton() -> UIButton {
            return createButton(with: skipButtonConfiguration)
        }
}

public extension OnboardingUI {
    func createButton(with config: ButtonConfiguration) -> UIButton {
        return FactoryButton.nonActionButtonCreate(ButtonConfiguration(font: config.font,
                                                                       style: config.style,
                                                                       cornerRadius: config.cornerRadius,
                                                                       backgroundColor: config.backgroundColor,
                                                                       opacity: config.opacity )
        )
    }
}

