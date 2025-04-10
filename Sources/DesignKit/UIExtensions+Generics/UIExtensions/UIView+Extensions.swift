import UIKit

extension UIView {
    public func addSubviewsAndMaskFalse(_ subviews: [UIView]) {
        self.addSubviews(subviews)
        autoresizingMaskFalse(subviews)
    }
    
    public func addSubviews(_ subviews: [UIView]) {
            subviews.forEach { addSubview($0) }
        }
}
