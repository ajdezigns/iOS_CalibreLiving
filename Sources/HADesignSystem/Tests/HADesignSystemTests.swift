@testable import HADesignSystem
import SwiftUI
import XCTest

final class HADesignSystemTests: XCTestCase {
    func testSpacingScale() {
        XCTAssertEqual(DesignSystem.Spaces.one, 8)
        XCTAssertEqual(DesignSystem.Spaces.two, 16)
        XCTAssertEqual(DesignSystem.Spaces.six, 48)
    }

    func testCornerRadiusScale() {
        XCTAssertEqual(DesignSystem.CornerRadius.one, 8)
        XCTAssertEqual(HACornerRadius.standard, 8)
    }

    #if canImport(UIKit)
    func testHaPrimaryResolvesToBrandColor() {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        UIColor(Color.haPrimary).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        XCTAssertEqual(red, 0xC5 / 255.0, accuracy: 0.01)
        XCTAssertEqual(green, 0xA0 / 255.0, accuracy: 0.01)
        XCTAssertEqual(blue, 0x59 / 255.0, accuracy: 0.01)
        XCTAssertEqual(alpha, 1, accuracy: 0.01)
    }

    func testHaOnPrimaryResolvesToBrandNavy() {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        UIColor(Color.haOnPrimary).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        XCTAssertEqual(red, 0x0B / 255.0, accuracy: 0.01)
        XCTAssertEqual(green, 0x15 / 255.0, accuracy: 0.01)
        XCTAssertEqual(blue, 0x26 / 255.0, accuracy: 0.01)
        XCTAssertEqual(alpha, 1, accuracy: 0.01)
    }
    #endif
}
