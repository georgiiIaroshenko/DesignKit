import Foundation
import UIKit

protocol AttributedTextSettable {
    func setAttributedContent(_ content: NSAttributedString)
}

protocol FontStylable {
    associatedtype Style: FontFactoryProtocol
    func applyFrontStyle(_ style: Style)
}

