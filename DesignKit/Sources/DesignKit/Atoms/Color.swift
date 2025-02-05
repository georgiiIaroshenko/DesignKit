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
        .black100:    loadColor("Colors/Black/black100"),
        .black200:    loadColor("Colors/Black/black200"),

        // Green
        .green100:    loadColor("Colors/Green/green100"),
        .green200:    loadColor("Colors/Green/green200"),
        .green300:    loadColor("Colors/Green/green300"),

        // Neutral
        .neutral100:  loadColor("Colors/Neutral/neutral100"),
        .neutral200:  loadColor("Colors/Neutral/neutral200"),
        .neutral300:  loadColor("Colors/Neutral/neutral300"),
        .neutral400:  loadColor("Colors/Neutral/neutral400"),
        .neutral500:  loadColor("Colors/Neutral/neutral500"),
        .neutral600:  loadColor("Colors/Neutral/neutral600"),
        .neutral700:  loadColor("Colors/Neutral/neutral700"),
        .neutral800:  loadColor("Colors/Neutral/neutral800"),
        .neutral900:  loadColor("Colors/Neutral/neutral900"),
        
        // Primary
        .primary100:  loadColor("Colors/Primary/primary100"),
        .primary200:  loadColor("Colors/Primary/primary200"),
        .primary300:  loadColor("Colors/Primary/primary300"),
        .primary400:  loadColor("Colors/Primary/primary400"),
        .primary500:  loadColor("Colors/Primary/primary500"),
        .primary600:  loadColor("Colors/Primary/primary600"),
        .primary700:  loadColor("Colors/Primary/primary700"),
        .primary800:  loadColor("Colors/Primary/primary800"),
        .primary900:  loadColor("Colors/Primary/primary900"),
        
        // Red
        .red100:      loadColor("Colors/Red/red100"),
        
        // Secondary
        .secondary100: loadColor("Colors/Secondary/secondary100"),
        .secondary200: loadColor("Colors/Secondary/secondary200"),
        .secondary300: loadColor("Colors/Secondary/secondary300"),
        .secondary400: loadColor("Colors/Secondary/secondary400"),
        .secondary500: loadColor("Colors/Secondary/secondary500"),
        .secondary600: loadColor("Colors/Secondary/secondary600"),
        .secondary700: loadColor("Colors/Secondary/secondary700"),
        .secondary800: loadColor("Colors/Secondary/secondary800"),
        .secondary900: loadColor("Colors/Secondary/secondary900"),
        
        // White
        .white100:    loadColor("Colors/White/white100"),
    ]
    
    private static func loadColor(_ assetName: String) -> UIColor {
        guard let color = UIColor(named: assetName) else {
            fatalError("Color asset not found: \(assetName)")
        }
        return color
    }
}
