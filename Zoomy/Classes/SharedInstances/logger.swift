import UIKit

enum LogLevel {
    case `default`, debug, info, error
}

struct Logger {
    func logError(_ message: CustomStringConvertible) {
        print("[ERROR]", message.description)
    }

    func log(_ message: CustomStringConvertible = "", file: String = #file, line: Int = #line, function: String = #function, atLevel level: LogLevel = .default) {
        print("[LOG]", file, line, function, message.description)
    }

    internal func logGesture(with gestureRecognizer: UIGestureRecognizer, atLevel level: LogLevel, inFile file: String = #file, inFunction function: String = #function, atLine line: Int = #line) {
        guard gestureRecognizer.state != .changed else { return }
        logger.log(gestureRecognizer.state, file: file, line: line, function: function, atLevel: level)
    }
}

internal let logger = Logger()
