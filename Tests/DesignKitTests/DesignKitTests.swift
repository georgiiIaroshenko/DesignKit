import XCTest
@testable import DesignKit

final class DesignKitTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    
    func testNonActionButtonConfiguration_appliesAllProperties() {
        // arrange
        let config = ButtonConfiguration(
            font: .system(size: 14, weight: .bold),
            style: .custom,
            cornerRadius: .small,           // пусть small = 4
            backgroundColor: .brandPrimary,
            opacity: .semiTransparent       // пусть semiTransparent = 0.5
        )

        // act
        let button = FactoryButton.nonActionButtonCreate(config)

        // assert
        XCTAssertEqual(button.layer.cornerRadius, DSRadius.small.rawValue)
        XCTAssertEqual(button.layer.opacity, DSOpacity.semiTransparent.rawValue)
        XCTAssertEqual(button.backgroundColor, DSColor.brandPrimary.uiColor)
        // …и, например, проверим, что applyFrontStyle применил правильный шрифт
        XCTAssertEqual(button.titleLabel?.font, config.font.makeUIFont())
    }
}
