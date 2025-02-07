import UIKit

internal enum DSColor {
    // Black
    case black100
    case black200
    
    // Green
    case green100
    case green200
    case green300
    
    // Neutral
    case neutral100
    case neutral200
    case neutral300
    case neutral400
    case neutral500
    case neutral600
    case neutral700
    case neutral800
    case neutral900
    
    // Primary
    case primary100
    case primary200
    case primary300
    case primary400
    case primary500
    case primary600
    case primary700
    case primary800
    case primary900
    
    // Red
    case red100
    
    // Secondary
    case secondary100
    case secondary200
    case secondary300
    case secondary400
    case secondary500
    case secondary600
    case secondary700
    case secondary800
    case secondary900
    
    // White
    case white100
    
    var uiColor: UIColor {
        DSColor.colorMap[self]
            // Если вдруг цвет не найден — fallback.
            ?? .magenta
    }
    private static let colorMap: [DSColor: UIColor] = [
        // Black
        .black100:    loadColor("Colors/black100"),
        .black200:    loadColor("Colors/black200"),

        // Green
        .green100:    loadColor("Colors/green100"),
        .green200:    loadColor("Colors/green200"),
        .green300:    loadColor("Colors/green300"),

        // Neutral
        .neutral100:  loadColor("Colors/neutral100"),
        .neutral200:  loadColor("Colors/neutral200"),
        .neutral300:  loadColor("Colors/neutral300"),
        .neutral400:  loadColor("Colors/neutral400"),
        .neutral500:  loadColor("Colors/neutral500"),
        .neutral600:  loadColor("Colors/neutral600"),
        .neutral700:  loadColor("Colors/neutral700"),
        .neutral800:  loadColor("Colors/neutral800"),
        .neutral900:  loadColor("Colors/neutral900"),
        
        // Primary
        .primary100:  loadColor("Colors/primary100"),
        .primary200:  loadColor("Colors/primary200"),
        .primary300:  loadColor("Colors/primary300"),
        .primary400:  loadColor("Colors/primary400"),
        .primary500:  loadColor("Colors/primary500"),
        .primary600:  loadColor("Colors/primary600"),
        .primary700:  loadColor("Colors/primary700"),
        .primary800:  loadColor("Colors/primary800"),
        .primary900:  loadColor("Colors/primary900"),
        
        // Red
        .red100:      loadColor("Colors/Red/red100"),
        
        // Secondary
        .secondary100: loadColor("Colors/secondary100"),
        .secondary200: loadColor("Colors/secondary200"),
        .secondary300: loadColor("Colors/secondary300"),
        .secondary400: loadColor("Colors/secondary400"),
        .secondary500: loadColor("Colors/secondary500"),
        .secondary600: loadColor("Colors/secondary600"),
        .secondary700: loadColor("Colors/secondary700"),
        .secondary800: loadColor("Colors/secondary800"),
        .secondary900: loadColor("Colors/secondary900"),
        
        // White
        .white100:    loadColor("Colors/white100"),
    ]
    
    private static func loadColor(_ assetName: String) -> UIColor {
        guard let color = UIColor(named: assetName, in: .module, compatibleWith: nil) else {
            fatalError("Color asset not found: \(assetName)")
        }
        return color
    }
}
