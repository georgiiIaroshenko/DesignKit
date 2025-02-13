import CoreFoundation


public enum DSOpacity: Float {
    case full, zero, fourty
    
    public func opacityValue() -> Float {
        switch self {
        case .full:
            return 1
        case .fourty:
            return 0.4
        case .zero:
            return 0
        }
    }
}
