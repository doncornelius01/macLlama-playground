import XCTest
@testable import MarkdownDetection

final class MarkdownDetectionTests: XCTestCase {
    func testMarkdownDetected() throws {
        XCTAssertTrue(containsMarkdown("This has **bold** text"))
    }

    func testPlainText() throws {
        XCTAssertFalse(containsMarkdown("Just plain text"))
    }
}
