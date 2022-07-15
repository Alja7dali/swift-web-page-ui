public protocol HasValueOfLength: HasValueOfInherit, HasValueOfAuto, HasValueOfPercentage {}

extension CssPropBorderImageWidth: HasValueOfLength {}

extension CssPropMargin: HasValueOfLength {}
extension CssPropMarginBottom: HasValueOfLength {}
extension CssPropMarginLeft: HasValueOfLength {}
extension CssPropMarginRight: HasValueOfLength {}
extension CssPropMarginTop: HasValueOfLength {}

extension CssPropPadding: HasValueOfLength {}
extension CssPropPaddingBottom: HasValueOfLength {}
extension CssPropPaddingLeft: HasValueOfLength {}
extension CssPropPaddingRight: HasValueOfLength {}
extension CssPropPaddingTop: HasValueOfLength {}

extension CssPropTextIndent: HasValueOfLength {}
extension CssPropLetterSpacing: HasValueOfLength {}

extension CssPropTop: HasValueOfLength {}
extension CssPropRight: HasValueOfLength {}
extension CssPropBottom: HasValueOfLength {}
extension CssPropLeft: HasValueOfLength {}

public enum CSSLength: HasValueOfLength {}

public extension Value where Kind: HasValueOfLength {
  /// MARK: - AbsoluteLength
  static func cm(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))cm")
  }
  static func mm(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))mm")
  }
  static func `in`(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))in")
  }
  static func px(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))px")
  }
  static func pt(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))pt")
  }
  static func pc(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))pc")
  }

  /// MARK: - RelativeLength
  static func em(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))em")
  }
  static func ex(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))ex")
  }
  static func ch(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))ch")
  }
  static func rem(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))rem")
  }
  static func vw(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vw")
  }
  static func vh(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vh")
  }
  static func vmin(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vmin")
  }
  static func vmax(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vmax")
  }
  static func pct(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))%")
  }
}

public protocol HasValueOfUnsignedLength: HasValueOfInherit, HasValueOfAuto, HasValueOfUnsignedPercentage {}

extension CssPropBorderBottomLeftRadius: HasValueOfUnsignedLength {}
extension CssPropBorderBottomRightRadius: HasValueOfUnsignedLength {}
extension CssPropBorderBottomWidth: HasValueOfUnsignedLength {}
extension CssPropBorderImageOutset: HasValueOfUnsignedLength {}
extension CssPropBorderLeftWidth: HasValueOfUnsignedLength {}
extension CssPropBorderRadius: HasValueOfUnsignedLength {}
extension CssPropBorderRightWidth: HasValueOfUnsignedLength {}
extension CssPropBorderSpacing: HasValueOfUnsignedLength {}
extension CssPropBorderTopLeftRadius: HasValueOfUnsignedLength {}
extension CssPropBorderTopRightRadius: HasValueOfUnsignedLength {}
extension CssPropBorderTopWidth: HasValueOfUnsignedLength {}
extension CssPropBorderWidth: HasValueOfUnsignedLength {}

extension CssPropHeight: HasValueOfUnsignedLength {}
extension CssPropMinHeight: HasValueOfUnsignedLength {}
extension CssPropMaxHeight: HasValueOfUnsignedLength {}
extension CssPropWidth: HasValueOfUnsignedLength {}
extension CssPropMinWidth: HasValueOfUnsignedLength {}
extension CssPropMaxWidth: HasValueOfUnsignedLength {}

extension CssPropFlexBasis: HasValueOfUnsignedLength {}

extension CssPropFontSize: HasValueOfUnsignedLength {}

extension CssPropColumnGap: HasValueOfUnsignedLength {}
extension CssPropColumnRuleWidth: HasValueOfUnsignedLength {}
extension CssPropColumnWidth: HasValueOfUnsignedLength {}

extension CssPropOutlineOffset: HasValueOfUnsignedLength {}
extension CssPropOutlineWidth: HasValueOfUnsignedLength {}

extension CssPropLineHeight: HasValueOfUnsignedLength {}

public enum CSSUnsignedLength: HasValueOfUnsignedLength {}

public extension Value where Kind: HasValueOfUnsignedLength {
  /// MARK: - AbsoluteLength
  static func cm(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))cm")
  }
  static func mm(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))mm")
  }
  static func `in`(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))in")
  }
  static func px(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))px")
  }
  static func pt(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))pt")
  }
  static func pc(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))pc")
  }

  /// MARK: - RelativeLength
  static func em(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))em")
  }
  static func ex(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))ex")
  }
  static func ch(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))ch")
  }
  static func rem(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))rem")
  }
  static func vw(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vw")
  }
  static func vh(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vh")
  }
  static func vmin(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vmin")
  }
  static func vmax(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vmax")
  }
  static func pct(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))%")
  }
}