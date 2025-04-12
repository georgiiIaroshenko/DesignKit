import Foundation

protocol AttributedTextSettable {
    func setAttributedContent(_ content: NSAttributedString)
}

protocol FontStylable {
    associatedtype Style: FontFactoryProtocol
    func applyStyle(_ style: Style)
}

