import UIKit
import CoreText


public enum DSFont: String {
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
    public func font(ofSize size: DSFontSize) -> UIFont {
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
            "Poppins-Regular",
            "Poppins-SemiBold",
            "Poppins-Bold",
            "Poppins-Medium",
            "Poppins-Light"
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

public enum DSFontSize: CGFloat {
    case small = 12.0
    case medium = 14.0
    case large = 16.0
    case gradientMedium = 20.0
    case gradientLarge = 28.0
}

public enum DSFontNumberOfLines: Int {
 case zero = 0
}
