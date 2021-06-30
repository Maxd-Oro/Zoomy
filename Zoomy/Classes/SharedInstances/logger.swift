import os.log
import UIKit

extension OSLog {
    func logError(_ message: CustomStringConvertible) {
        os_log("%{public}@", log: logger, type: .fault, message.description)
    }

    func log(_ message: CustomStringConvertible = "", file: String = #file, line: Int = #line, function: String = #function, atLevel level: OSLogType = .default) {
        os_log("%{public}@", log: logger, type: level, message.description)
    }

    internal func logGesture(with gestureRecognizer: UIGestureRecognizer, atLevel level: OSLogType, inFile file: String = #file, inFunction function: String = #function, atLine line: Int = #line) {
        guard gestureRecognizer.state != .changed else { return }
        logger.log(gestureRecognizer.state, file: file, line: line, function: function, atLevel: level)
    }
}

internal let logger = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "Logging")

internal typealias Loglevel = OSLog
