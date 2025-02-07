import UIKit

internal enum AppRadius: CGFloat {
    case minimum, normal, max
    func fgfg() -> CGFloat {
        switch self {
        case .minimum:
            return 6.0
        case .normal:
            return 6.0
        case .max:
            return 25.0
        }
    }
}
