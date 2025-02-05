import UIKit

internal enum DSFont: String {
    case regular = "Poppins-Regular"
    case semiBold = "Poppins-SemiBold"
    case bold = "Poppins-Bold"
    case medium = "Poppins-Medium"
    case light = "Poppins-Light"
    
    public func font(ofSize size: AppFontSize) -> UIFont {
        guard let front = UIFont(name: self.rawValue, size: size.rawValue) else {
            return UIFont.systemFont(ofSize: size.rawValue)
        }
        return front
    }
    //MARK: - Заготовка для динамичного типа
//    @available(iOS 11.0, *)
//       public func preferredFont(for textStyle: UIFont.TextStyle, maximumPointSize: CGFloat? = nil) -> UIFont {
//           let metrics = UIFontMetrics(forTextStyle: textStyle)
//           let baseFont = self.font(ofSize: UIFont.systemFontSize)
//           if let maxSize = maximumPointSize {
//               return metrics.scaledFont(for: baseFont, maximumPointSize: maxSize)
//           } else {
//               return metrics.scaledFont(for: baseFont)
//           }
//       }
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
