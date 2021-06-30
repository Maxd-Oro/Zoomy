import UIKit

internal class ZoomyLogger {
    
    internal func logGesture(with gestureRecognizer: UIGestureRecognizer, atLevel level: LogLevel, inFile file: String = #file, inFunction function: String = #function, atLine line: Int = #line) {
        guard gestureRecognizer.state != .changed else { return }
        logger.log(gestureRecognizer.state, file: file, line: line, function: function, atLevel: level)
    }
}
