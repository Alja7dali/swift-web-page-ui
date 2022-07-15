public protocol HasValueOfNone: CSSValue {}

extension CssPropAnimationFillMode: HasValueOfNone {}

extension CssPropBackgroundImage: HasValueOfNone {}

extension CssPropBorderImageSource: HasValueOfNone {}

extension CssPropContent: HasValueOfNone {}
extension CssPropQuotes: HasValueOfNone {}
extension CssPropCounterReset: HasValueOfNone {}
extension CssPropCounterIncrement: HasValueOfNone {}

extension CssPropListStyleImage: HasValueOfNone {}

extension CssPropTextDecorationLine: HasValueOfNone {}

public extension Value where Kind: HasValueOfNone {
  static var none: Self { return "none" }
}