public protocol HasValueOfWidth {}

extension BorderBottomWidth: HasValueOfWidth {}
extension BorderWidth: HasValueOfWidth {}
extension BorderLeftWidth: HasValueOfWidth {}
extension BorderRightWidth: HasValueOfWidth {}
extension BorderTopWidth: HasValueOfWidth {}

extension Value where Kind: HasValueOfWidth {
  public init(_ value: Value<BorderWidth>) {
    self.init(value.rawValue)
  }
}

public protocol HasValueOfStyle {}

extension BorderBottomStyle: HasValueOfStyle {}
extension BorderStyle: HasValueOfStyle {}
extension BorderLeftStyle: HasValueOfStyle {}
extension BorderRightStyle: HasValueOfStyle {}
extension BorderTopStyle: HasValueOfStyle {}

extension Value where Kind: HasValueOfStyle {
  public init(_ value: Value<BorderStyle>) {
    self.init(value.rawValue)
  }
}