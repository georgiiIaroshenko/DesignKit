import UIKit

public protocol Image {
    var image: UIImage { get }
}
public enum DSSystemItemOnboarding: String, Image {
    case cupStar = "CupStar"
    case hands1 = "Hands1"
    case hands2 = "Hands2"
    case security = "Security"
    case shieldNetwork = "ShieldNetwork"
    
    public var image: UIImage {
        return UIImage(named: self.rawValue, in: .module, compatibleWith: nil) ?? UIImage(systemName: "pencil")!
    }
}

public enum DSSystemItemAuth: String, Image {
    case eye = "Eye"
    case eyeClosed = "EyeClosed"
    case agreement = "Agreement"
    
    public var image: UIImage {
        return UIImage(named: self.rawValue, in: .module, compatibleWith: nil) ?? UIImage(systemName: "pencil")!
    }
}
