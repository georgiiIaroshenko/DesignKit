import UIKit

extension UIStackView {
    
    public func addArrangedSubviewsAndMaskFalse(_ views: [UIView]) {
        addArrangedSubviews(views)
        autoresizingMaskFalse(views)
    }
    
    private func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
