import UIKit

public enum DSRadius: CGFloat {
    case minimum, normal, max
    public func radiusValue() -> CGFloat {
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
