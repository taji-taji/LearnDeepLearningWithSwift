public protocol Addable: ExpressibleByIntegerLiteral {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int   : Addable {}
extension Double: Addable {}

public extension Sequence where Iterator.Element: Addable {
    public var sum: Iterator.Element {
        return reduce(0, +)
    }
}
