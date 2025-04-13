import UIKit


public struct StackViewStyle {
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

final public class FactoryStackView: UIStackView {
    public static func createStackView(_ style: StackViewStyle) -> UIStackView {
        let sw = UIStackView()
        sw.axis = style.axis
        sw.spacing = style.spacing.rawValue
        sw.distribution = style.distribution
        sw.alignment = style.alignment
        return sw
    }
}
