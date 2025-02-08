import CoreFoundation


enum DSOpacity: Float {
    case full, zero, fourty
    
    func alpha() -> Float {
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
