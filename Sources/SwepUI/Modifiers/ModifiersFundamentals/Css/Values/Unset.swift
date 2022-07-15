public protocol HasValueOfUnset: CSSValue {}

extension CssPropClipPath: HasValueOfUnset {}

public extension Value where Kind: HasValueOfUnset {
  static var unset: Self { return "unset" }
}