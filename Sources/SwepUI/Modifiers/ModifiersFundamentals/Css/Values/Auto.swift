public protocol HasValueOfAuto: CSSValue {}

extension CssPropBackgroundSize: HasValueOfAuto {}

extension CssPropBorderBottomLeftRadius: HasValueOfAuto {}
extension CssPropBorderBottomRightRadius: HasValueOfAuto {}
extension CssPropBorderBottomWidth: HasValueOfAuto {}
extension CssPropBorderImageOutset: HasValueOfAuto {}
extension CssPropBorderImageWidth: HasValueOfAuto {}
extension CssPropBorderLeftWidth: HasValueOfAuto {}
extension CssPropBorderRadius: HasValueOfAuto {}
extension CssPropBorderRightWidth: HasValueOfAuto {}
extension CssPropBorderSpacing: HasValueOfAuto {}
extension CssPropBorderTopLeftRadius: HasValueOfAuto {}
extension CssPropBorderTopRightRadius: HasValueOfAuto {}
extension CssPropBorderTopWidth: HasValueOfAuto {}
extension CssPropBorderWidth: HasValueOfAuto {}

extension CssPropHeight: HasValueOfAuto {}
extension CssPropMinHeight: HasValueOfAuto {}
extension CssPropMaxHeight: HasValueOfAuto {}
extension CssPropWidth: HasValueOfAuto {}
extension CssPropMinWidth: HasValueOfAuto {}
extension CssPropMaxWidth: HasValueOfAuto {}

extension CssPropAlignSelf: HasValueOfAuto {}
extension CssPropFlexBasis: HasValueOfAuto {}

extension CssPropFontKerning: HasValueOfAuto {}
extension CssPropFontSize: HasValueOfAuto {}

extension CssPropMargin: HasValueOfAuto {}
extension CssPropMarginBottom: HasValueOfAuto {}
extension CssPropMarginLeft: HasValueOfAuto {}
extension CssPropMarginRight: HasValueOfAuto {}
extension CssPropMarginTop: HasValueOfAuto {}

extension CssPropColumnCount: HasValueOfAuto {}
extension CssPropColumnFill: HasValueOfAuto {}
extension CssPropColumnGap: HasValueOfAuto {}
extension CssPropColumnRuleWidth: HasValueOfAuto {}
extension CssPropColumnWidth: HasValueOfAuto {}

extension CssPropOutlineOffset: HasValueOfAuto {}
extension CssPropOutlineWidth: HasValueOfAuto {}

extension CssPropPadding: HasValueOfAuto {}
extension CssPropPaddingBottom: HasValueOfAuto {}
extension CssPropPaddingLeft: HasValueOfAuto {}
extension CssPropPaddingRight: HasValueOfAuto {}
extension CssPropPaddingTop: HasValueOfAuto {}

extension CssPropBreakAfter: HasValueOfAuto {}
extension CssPropBreakBefore: HasValueOfAuto {}
extension CssPropBreakInside: HasValueOfAuto {}

extension CssPropTextAlignLast: HasValueOfAuto {}
extension CssPropTextIndent: HasValueOfAuto {}
extension CssPropTextJustify: HasValueOfAuto {}

extension CssPropLineHeight: HasValueOfAuto {}
extension CssPropLetterSpacing: HasValueOfAuto {}

extension CssPropTop: HasValueOfAuto {}
extension CssPropRight: HasValueOfAuto {}
extension CssPropBottom: HasValueOfAuto {}
extension CssPropLeft: HasValueOfAuto {}

extension CssPropZIndex: HasValueOfAuto {}

public extension Value where Kind: HasValueOfAuto {
  static var auto: Self { return "auto" }
}