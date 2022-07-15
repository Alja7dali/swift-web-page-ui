public protocol HasValueOfDuration: CSSValue {}

extension CssPropAnimationDelay: HasValueOfDuration {}
extension CssPropAnimationDuration: HasValueOfDuration {}

extension CssPropTransitionDelay: HasValueOfDuration {}
extension CssPropTransitionDuration: HasValueOfDuration {}

public enum CSSDuration: HasValueOfDuration {}

public extension Value where Kind: HasValueOfDuration {
  static func s(_ value: Int) -> Self { return .init("\(value)s") }

  static func ms(_ value: Int) -> Self { return .init("\(value)ms") }
}