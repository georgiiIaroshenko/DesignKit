import UIKit

extension UIColor {
    
    convenience init?(hex: String) {
        var hexFormatted = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted.remove(at: hexFormatted.startIndex)
        }
        
        let length = hexFormatted.count
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        switch length {
        case 6:
            self.init(
                red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                alpha: 1.0
            )
        case 8:
            self.init(
                red: CGFloat((rgbValue & 0xFF000000) >> 24) / 255.0,
                green: CGFloat((rgbValue & 0x00FF0000) >> 16) / 255.0,
                blue: CGFloat((rgbValue & 0x0000FF00) >> 8) / 255.0,
                alpha: CGFloat(rgbValue & 0x000000FF) / 255.0
            )
        default:
            return nil
        }
    }
    
    // Создаёт динамический UIColor, адаптирующийся под светлый и тёмный режимы.
    // - Parameters:
    //   - lightHex: HEX-строка для светлого режима.
    //   - darkHex: HEX-строка для тёмного режима. Если не указана, используется светлый цвет.
    // - Returns: Динамический UIColor.
    
    static func dynamicColor(lightHex: String, darkHex: String? = nil) -> UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { traitCollection in
                if traitCollection.userInterfaceStyle == .dark {
                    if let darkHex = darkHex, let darkColor = UIColor(hex: darkHex) {
                        return darkColor
                    } else {
                        return UIColor(hex: lightHex) ?? UIColor.black
                    }
                } else {
                    return UIColor(hex: lightHex) ?? UIColor.black
                }
            }
        } else {
            return UIColor(hex: lightHex) ?? UIColor.black
        }
    }
}
