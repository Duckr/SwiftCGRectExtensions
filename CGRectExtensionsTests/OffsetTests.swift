import CGRectExtensions
import XCTest

class OffsetTests: XCTestCase {

    let rect = CGRect(x: 1, y: 2, width: 10, height: 20)

    func testOffsettingDxDy() {
        XCTAssertEqual(rect.offsetBy(dx: 3, dy: 4), CGRect(x: 4, y: 6, width: 10, height: 20))
    }

    func testOffsettingDx() {
        XCTAssertEqual(rect.offsetBy(dx: 3), CGRect(x: 4, y: 2, width: 10, height: 20))
    }

    func testOffsettingDy() {
        XCTAssertEqual(rect.offsetBy(dy: 4), CGRect(x: 1, y: 6, width: 10, height: 20))
    }

    func testOffsettingBySize() {
        XCTAssertEqual(rect.offsetBy(by: CGSize(3, 4)), CGRect(x: 4, y: 6, width: 10, height: 20))
    }
}

class MutatingOffsetTests: XCTestCase {

    var rect = CGRect(x: 1, y: 2, width: 10, height: 20)

    func testOffsettingDxDy() {
        rect.offsetInPlace(dx: 3, dy: 4)
        XCTAssertEqual(rect, CGRect(x: 4, y: 6, width: 10, height: 20))
    }

    func testOffsettingDx() {
        rect.offsetInPlace(dx: 3)
        XCTAssertEqual(rect, CGRect(x: 4, y: 2, width: 10, height: 20))
    }

    func testOffsettingDy() {
        rect.offsetInPlace(dy: 4)
        XCTAssertEqual(rect, CGRect(x: 1, y: 6, width: 10, height: 20))
    }

    func testOffsettingBySize() {
        rect.offsetInPlace(by: CGSize(3, 4))
        XCTAssertEqual(rect, CGRect(x: 4, y: 6, width: 10, height: 20))
    }
}
