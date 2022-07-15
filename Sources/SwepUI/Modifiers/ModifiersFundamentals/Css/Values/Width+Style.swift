public protocol HasValueOfWidth {}

extension CssPropBorderBottomWidth: HasValueOfWidth {}
extension CssPropBorderWidth: HasValueOfWidth {}
extension CssPropBorderLeftWidth: HasValueOfWidth {}
extension CssPropBorderRightWidth: HasValueOfWidth {}
extension CssPropBorderTopWidth: HasValueOfWidth {}

extension Value where Kind: HasValueOfWidth {
  public init(_ value: Value<CssPropBorderWidth>) {
    self.init(value.rawValue)
  }
}

public protocol HasValueOfStyle {}

extension CssPropBorderBottomStyle: HasValueOfStyle {}
extension CssPropBorderStyle: HasValueOfStyle {}
extension CssPropBorderLeftStyle: HasValueOfStyle {}
extension CssPropBorderRightStyle: HasValueOfStyle {}
extension CssPropBorderTopStyle: HasValueOfStyle {}

extension Value where Kind: HasValueOfStyle {
  public init(_ value: Value<CssPropBorderStyle>) {
    self.init(value.rawValue)
  }
}