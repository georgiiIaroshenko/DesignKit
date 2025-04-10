import UIKit

public func autoresizingMaskFalse<T: UIView>(_ uiElement: [T]) {
    uiElement.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
}
