import UIKit


struct StackViewStyle {
    let axis: NSLayoutConstraint.Axis
    let spacing: DSSpacing
    let distribution: UIStackView.Distribution
    let alignment: UIStackView.Alignment
    
    public init(axis: NSLayoutConstraint.Axis, spacing: DSSpacing, distribution: UIStackView.Distribution, alignment: UIStackView.Alignment) {
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
    }
}

public class CustomUIStackView: UIStackView {
    func applyStyle(_ style: StackViewStyle) {
        self.axis = style.axis
        self.spacing = style.spacing.rawValue
        self.distribution = style.distribution
        self.alignment = style.alignment
    }
}
