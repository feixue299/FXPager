public protocol PagerProtocol {
    var title: String { get }
}

public extension PagerProtocol {
    var title: String {
        return ""
    }
}
