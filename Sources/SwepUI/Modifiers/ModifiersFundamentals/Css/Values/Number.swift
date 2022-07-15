public protocol HasValueOfIntegerLiteral {}

public protocol HasValueOfInteger: HasValueOfIntegerLiteral {}

public protocol HasValueOfUnsignedInteger: HasValueOfIntegerLiteral {}


public protocol HasValueOfFloatLiteral {}

public protocol HasValueOfNumber: HasValueOfFloatLiteral, HasValueOfInteger {}

public protocol HasValueOfUnsignedNumber : HasValueOfFloatLiteral, HasValueOfUnsignedInteger {}


extension CssPropZIndex: HasValueOfInteger {}

// extension Property where Self: HasValueOfInteger {
//   public init(_ value: Int) {
//     self.init(
//       value.description,
//       makeDeclarations(
//         forValue: value.description,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension CssPropFlexGrow: HasValueOfUnsignedInteger {}
extension CssPropFlexShrink: HasValueOfUnsignedInteger {}

extension CssPropOrder: HasValueOfUnsignedInteger {}

extension CssPropFontWeight: HasValueOfUnsignedInteger {}

extension CssPropColumnCount: HasValueOfUnsignedInteger {}

// extension Property where Self: HasValueOfUnsignedInteger {
//   public init(_ value: UInt) {
//     self.init(
//       value.description,
//       makeDeclarations(
//         forValue: value.description,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension Value: ExpressibleByIntegerLiteral where Kind: HasValueOfIntegerLiteral {
  public init(integerLiteral value: Int) {
    if Kind.self is HasValueOfUnsignedInteger.Type {
      rawValue = abs(value).description
    } else {
      rawValue = value.description
    }
  }
}




extension CssPropAnimationIterationCount: HasValueOfNumber {}

extension CssPropBorderImageSlice: HasValueOfNumber {}

extension CssPropBorderImageWidth: HasValueOfNumber {}

// extension Property where Self: HasValueOfNumber {
//   public init(_ value: Double) {
//     let val = prettyDescription(value)
//     self.init(
//       val,
//       makeDeclarations(
//         forValue: val,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension CssPropBorderImageOutset: HasValueOfUnsignedNumber {}

extension CssPropFontSizeAdjust: HasValueOfUnsignedNumber {}

extension CssPropLineHeight: HasValueOfUnsignedNumber {}

// extension Property where Self: HasValueOfUnsignedNumber {
//   public init(_ value: Double) {
//     let val = prettyDescription(abs(value))
//     self.init(
//       val,
//       makeDeclarations(
//         forValue: val,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension Value: ExpressibleByFloatLiteral where Kind: HasValueOfFloatLiteral {
  public init(floatLiteral value: Double) {
    if Kind.self is HasValueOfUnsignedNumber.Type {
      rawValue = prettyDescription(abs(value))
    } else {
      rawValue = prettyDescription(value)
    }
  }
}