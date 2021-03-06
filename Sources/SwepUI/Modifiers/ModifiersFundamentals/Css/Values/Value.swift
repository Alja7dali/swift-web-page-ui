public protocol CSSValue {}

public struct Value<Kind: CSSValue> {
  public let rawValue: String

  internal init(_ value: String) {
    rawValue = value
  }
}

extension Value: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    rawValue = value
  }
}

extension Property {
  public init(_ value: Value<Self>) {
    self.init(
      value.rawValue,
      makeDeclarations(
        forValue: value.rawValue,
        withKey: Self.key,
        onBrowsers: Self.browsers
      )
    )
  }
}
