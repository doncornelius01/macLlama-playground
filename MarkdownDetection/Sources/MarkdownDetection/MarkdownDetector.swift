import Foundation
public func containsMarkdown(_ text: String) -> Bool {
    let pattern = "(\\*\\*|_|`|```|#|\\[.*?\\]\\(.*?\\))"
    return text.range(of: pattern, options: .regularExpression) != nil
}
