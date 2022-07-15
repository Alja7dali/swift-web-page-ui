public protocol HasValueOfNormal: CSSValue {}

extension CssPropAnimationDirection: HasValueOfNormal {}

extension CssPropBackgroundBlendMode: HasValueOfNormal {}

extension CssPropFontKerning: HasValueOfNormal {}

extension CssPropContent: HasValueOfNormal {}

extension CssPropColumnCount: HasValueOfNormal {}

extension CssPropLineHeight: HasValueOfNormal {}
extension CssPropLetterSpacing: HasValueOfNormal {}

public extension Value where Kind: HasValueOfNormal {
  static var normal: Self { return "normal" }
}