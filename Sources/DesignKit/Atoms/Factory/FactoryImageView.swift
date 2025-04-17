import UIKit

public struct ImageViewStyle {
    let image: Image
    let backgroundColor: DSColor
    
    public init(image: Image, backgroundColor: DSColor) {
        self.backgroundColor = backgroundColor
        self.image = image
    }
}

final public class FactoryImageView: UIImageView {
    public static func createImageView(_ style: ImageViewStyle) -> UIImageView {
        let iw = UIImageView()
        iw.image = style.image.image
        return iw
    }
}
