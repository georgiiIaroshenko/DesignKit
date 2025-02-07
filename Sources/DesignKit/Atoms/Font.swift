import UIKit
import CoreText


internal enum DSFont: String {
    case regular  = "Poppins-Regular"
    case semiBold = "Poppins-SemiBold"
    case bold     = "Poppins-Bold"
    case medium   = "Poppins-Medium"
    case light    = "Poppins-Light"
    
    /// Ленивая регистрация шрифтов один раз
    private static var didRegisterFonts: Bool = {
        registerAllFonts()
        return true
    }()
    
    /// Возвращает шрифт нужного размера, предварительно регистрируя его
    func font(ofSize size: AppFontSize) -> UIFont {
        // Гарантируем, что шрифты зарегистрированы
        _ = Self.didRegisterFonts
        
        guard let font = UIFont(name: self.rawValue, size: size.rawValue) else {
            // fallback на системный
            return .systemFont(ofSize: size.rawValue)
        }
        return font
    }

    /// Фактическая регистрация файлов TTF из ресурсов
    private static func registerAllFonts() {
        // Названия самих .ttf файлов
        let fontFiles = [
            "Poppins-Regular.ttf",
            "Poppins-SemiBold.ttf",
            "Poppins-Bold.ttf",
            "Poppins-Medium.ttf",
            "Poppins-Light.ttf"
        ]
        
        for fileName in fontFiles {
            guard let fontURL = Bundle.module.url(forResource: fileName, withExtension: "ttf") else {
                print("⚠️ Font file not found in module resources:", fileName)
                continue
            }
            var errorRef: Unmanaged<CFError>?
            CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &errorRef)
            if let error = errorRef?.takeUnretainedValue() {
                print("⚠️ Failed to register \(fileName): \(error)")
            }
        }
    }
}

internal enum AppFontSize: CGFloat {
    case  small, midium, large
    
    func returnSize() -> CGFloat {
        switch self {
        case .midium:
            return 14.0
        case .small:
            return 12.0
        case .large:
            return 16.0
        }
    }
}
