import UIKit


public enum DSSystemItemOnboarding: String {
    case cupStar = "CupStar"
    case hands1 = "Hands1"
    case hands2 = "Hands2"
    case security = "Security"
    case shieldNetwork = "ShieldNetwork"
    
    public var image: UIImage {
        return UIImage(named: self.rawValue, in: .module, compatibleWith: nil) ?? UIImage(systemName: "pencil")!
    }
}

public enum DSSystemItemAuthReg: String {
    case  eye = "Eye"
    case eyeClosed = "EyeClosed"
    
    public var image: UIImage {
        return UIImage(named: self.rawValue, in: .module, compatibleWith: nil) ?? UIImage(systemName: "pencil")!
    }
}
