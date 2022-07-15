extension Animation {
  public static var key: StaticString { return "animation" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDelay {
  public static var key: StaticString { return "animation-delay" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDirection {
  public static var key: StaticString { return "animation-direction" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDuration {
  public static var key: StaticString { return "animation-duration" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationFillMode {
  public static var key: StaticString { return "animation-fill-mode" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationIterationCount {
  public static var key: StaticString { return "animation-iteration-count" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationName {
  public static var key: StaticString { return "animation-name" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationPlayState {
  public static var key: StaticString { return "animation-play-state" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationTimingFunction {
  public static var key: StaticString { return "animation-timing-function" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}

extension Background {
  public static var key: StaticString { return "background" }
}
extension BackgroundAttachment {
  public static var key: StaticString { return "background-attachment" }
}
extension BackgroundBlendMode {
  public static var key: StaticString { return "background-blend-mode" }
}
extension BackgroundClip {
  public static var key: StaticString { return "background-clip" }
}
extension BackgroundColor {
  public static var key: StaticString { return "background-color" }
}
extension BackgroundImage {
  public static var key: StaticString { return "background-image" }
}
extension BackgroundOrigin {
  public static var key: StaticString { return "background-origin" }
}
extension BackgroundPosition {
  public static var key: StaticString { return "background-position" }
}
extension BackgroundRepeat {
  public static var key: StaticString { return "background-repeat" }
}
extension BackgroundSize {
  public static var key: StaticString { return "background-size" }
}

extension Border {
  public static var key: StaticString { return "border" }
}
extension BorderBottom {
  public static var key: StaticString { return "border-bottom" }
}
extension BorderBottomColor {
  public static var key: StaticString { return "border-bottom-color" }
}
extension BorderBottomLeftRadius {
  public static var key: StaticString { return "border-bottom-left-radius" }
}
extension BorderBottomRightRadius {
  public static var key: StaticString { return "border-bottom-right-radius" }
}
extension BorderBottomStyle {
  public static var key: StaticString { return "border-bottom-style" }
}
extension BorderBottomWidth {
  public static var key: StaticString { return "border-bottom-width" }
}
extension BorderCollapse {
  public static var key: StaticString { return "border-collapse" }
}
extension BorderColor {
  public static var key: StaticString { return "border-color" }
}
extension BorderImage {
  public static var key: StaticString { return "border-image" }
}
extension BorderImageOutset {
  public static var key: StaticString { return "border-image-outset" }
}
extension BorderImageRepeat {
  public static var key: StaticString { return "border-image-repeat" }
}
extension BorderImageSlice {
  public static var key: StaticString { return "border-image-slice" }
}
extension BorderImageSource {
  public static var key: StaticString { return "border-image-source" }
}
extension BorderImageWidth {
  public static var key: StaticString { return "border-image-width" }
}
extension BorderLeft {
  public static var key: StaticString { return "border-left" }
}
extension BorderLeftColor {
  public static var key: StaticString { return "border-left-color" }
}
extension BorderLeftStyle {
  public static var key: StaticString { return "border-left-style" }
}
extension BorderLeftWidth {
  public static var key: StaticString { return "border-left-width" }
}
extension BorderRadius {
  public static var key: StaticString { return "border-radius" }
}
extension BorderRight {
  public static var key: StaticString { return "border-right" }
}
extension BorderRightColor {
  public static var key: StaticString { return "border-right-color" }
}
extension BorderRightStyle {
  public static var key: StaticString { return "border-right-style" }
}
extension BorderRightWidth {
  public static var key: StaticString { return "border-right-width" }
}
extension BorderSpacing {
  public static var key: StaticString { return "border-spacing" }
}
extension BorderStyle {
  public static var key: StaticString { return "border-style" }
}
extension BorderTop {
  public static var key: StaticString { return "border-top" }
}
extension BorderTopColor {
  public static var key: StaticString { return "border-top-color" }
}
extension BorderTopLeftRadius {
  public static var key: StaticString { return "border-top-left-radius" }
}
extension BorderTopRightRadius {
  public static var key: StaticString { return "border-top-right-radius" }
}
extension BorderTopStyle {
  public static var key: StaticString { return "border-top-style" }
}
extension BorderTopWidth {
  public static var key: StaticString { return "border-top-width" }
}
extension BorderWidth {
  public static var key: StaticString { return "border-width" }
}

extension Color {
  public static var key: StaticString { return "color" }
}
extension Opacity {
  public static var key: StaticString { return "opacity" }
}

extension Height {
  public static var key: StaticString { return "height" }
}
extension MinHeight {
  public static var key: StaticString { return "min-height" }
}
extension MaxHeight {
  public static var key: StaticString { return "max-height" }
}
extension Width {
  public static var key: StaticString { return "width" }
}
extension MinWidth {
  public static var key: StaticString { return "min-width" }
}
extension MaxWidth {
  public static var key: StaticString { return "max-width" }
}

extension AlignContent {
  public static var key: StaticString { return "align-content" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension AlignItems {
  public static var key: StaticString { return "align-items" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension AlignSelf {
  public static var key: StaticString { return "align-self" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension Flex {
  public static var key: StaticString { return "flex" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexBasis {
  public static var key: StaticString { return "flex-basis" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexDirection {
  public static var key: StaticString { return "flex-direction" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexFlow {
  public static var key: StaticString { return "flex-flow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexGrow {
  public static var key: StaticString { return "flex-grow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexShrink {
  public static var key: StaticString { return "flex-shrink" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexWrap {
  public static var key: StaticString { return "flex-wrap" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension JustifyContent {
  public static var key: StaticString { return "justify-content" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Order {
  public static var key: StaticString { return "order" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Font {
  public static var key: StaticString { return "font" }
}
extension FontFamily {
  public static var key: StaticString { return "font-family" }
}
extension FontFeatureSettings {
  public static var key: StaticString { return "font-feature-settings" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FontKerning {
  public static var key: StaticString { return "font-kerning" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension FontSize {
  public static var key: StaticString { return "font-size" }
}
extension FontSizeAdjust {
  public static var key: StaticString { return "font-size-adjust" }
}
extension FontStretch {
  public static var key: StaticString { return "font-stretch" }
}
extension FontStyle {
  public static var key: StaticString { return "font-style" }
}
extension FontVariant {
  public static var key: StaticString { return "font-variant" }
}
extension FontVariantCaps {
  public static var key: StaticString { return "font-variant-caps" }
}
extension FontWeight {
  public static var key: StaticString { return "font-weight" }
}

extension Content {
  public static var key: StaticString { return "content" }
}
extension Quotes {
  public static var key: StaticString { return "quotes" }
}
extension CounterReset {
  public static var key: StaticString { return "counter-reset" }
}
extension CounterIncrement {
  public static var key: StaticString { return "counter-increment" }
}

extension ListStyle {
  public static var key: StaticString { return "list-style" }
}
extension ListStyleType {
  public static var key: StaticString { return "list-style-type" }
}
extension ListStylePosition {
  public static var key: StaticString { return "list-style-position" }
}
extension ListStyleImage {
  public static var key: StaticString { return "list-style-image" }
}

extension Margin {
  public static var key: StaticString { return "margin" }
}
extension MarginBottom {
  public static var key: StaticString { return "margin-bottom" }
}
extension MarginLeft {
  public static var key: StaticString { return "margin-left" }
}
extension MarginRight {
  public static var key: StaticString { return "margin-right" }
}
extension MarginTop {
  public static var key: StaticString { return "margin-top" }
}

extension ColumnCount {
  public static var key: StaticString { return "column-count" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnFill {
  public static var key: StaticString { return "column-fill" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnGap {
  public static var key: StaticString { return "column-gap" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRule {
  public static var key: StaticString { return "column-rule" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleColor {
  public static var key: StaticString { return "column-rule-color" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleStyle {
  public static var key: StaticString { return "column-rule-style" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleWidth {
  public static var key: StaticString { return "column-rule-width" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnSpan {
  public static var key: StaticString { return "column-span" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnWidth {
  public static var key: StaticString { return "column-width" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Columns {
  public static var key: StaticString { return "columns" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Outline {
  public static var key: StaticString { return "outline" }
}
extension OutlineColor {
  public static var key: StaticString { return "outline-color" }
}
extension OutlineOffset {
  public static var key: StaticString { return "outline-offset" }
}
extension OutlineStyle {
  public static var key: StaticString { return "outline-style" }
}
extension OutlineWidth {
  public static var key: StaticString { return "outline-width" }
}

extension Padding {
  public static var key: StaticString { return "padding" }
}
extension PaddingBottom {
  public static var key: StaticString { return "padding-bottom" }
}
extension PaddingLeft {
  public static var key: StaticString { return "padding-left" }
}
extension PaddingRight {
  public static var key: StaticString { return "padding-right" }
}
extension PaddingTop {
  public static var key: StaticString { return "padding-top" }
}

extension BreakAfter {
  public static var key: StaticString { return "break-after" }
}
extension BreakBefore {
  public static var key: StaticString { return "break-before" }
}
extension BreakInside {
  public static var key: StaticString { return "break-inside" }
}

extension TextAlign {
  public static var key: StaticString { return "text-align" }
}
extension TextAlignLast {
  public static var key: StaticString { return "text-align-last" }
}
extension TextDecoration {
  public static var key: StaticString { return "text-decoration" }
}
extension TextDecorationColor {
  public static var key: StaticString { return "text-decoration-color" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TextDecorationLine {
  public static var key: StaticString { return "text-decoration-line" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TextDecorationStyle {
  public static var key: StaticString { return "text-decoration-style" }
  public static var browsers: Array<StaticString> { return ["moz"] }
}
extension TextIndent {
  public static var key: StaticString { return "text-indent" }
}
extension TextJustify {
  public static var key: StaticString { return "text-justify" }
}
extension TextOverflow {
  public static var key: StaticString { return "text-overflow" }
}
extension TextShadow {
  public static var key: StaticString { return "text-shadow" }
}
extension TextTransform {
  public static var key: StaticString { return "text-transform" }
}
extension LineHeight {
  public static var key: StaticString { return "line-height" }
}
extension LetterSpacing {
  public static var key: StaticString { return "letter-spacing" }
}

extension BackfaceVisibility {
  public static var key: StaticString { return "backface-visibility" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Transform {
  public static var key: StaticString { return "transform" }
}
extension TransformOrigin {
  public static var key: StaticString { return "transform-origin" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TransformStyle {
  public static var key: StaticString { return "transform-style" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Transition {
  public static var key: StaticString { return "transition" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionDelay {
  public static var key: StaticString { return "transition-delay" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionDuration {
  public static var key: StaticString { return "transition-duration" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionProperty {
  public static var key: StaticString { return "transition-property" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionTimingFunction {
  public static var key: StaticString { return "transition-timing-function" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}

extension Display {
  public static var key: StaticString { return "display" }
}
extension Position {
  public static var key: StaticString { return "position" }
}
extension Top {
  public static var key: StaticString { return "top" }
}
extension Right {
  public static var key: StaticString { return "right" }
}
extension Bottom {
  public static var key: StaticString { return "bottom" }
}
extension Left {
  public static var key: StaticString { return "left" }
}
extension Float {
  public static var key: StaticString { return "float" }
}
extension Clear {
  public static var key: StaticString { return "clear" }
}
extension ZIndex {
  public static var key: StaticString { return "z-index" }
}
extension Overflow {
  public static var key: StaticString { return "overflow" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension OverflowX {
  public static var key: StaticString { return "overflow-x" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension OverflowY {
  public static var key: StaticString { return "overflow-y" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension ClipPath {
  public static var key: StaticString { return "clip-path" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension Visibility {
  public static var key: StaticString { return "visibility" }
}
extension BoxDecorationBreak {
  public static var key: StaticString { return "box-decoration-break" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension BoxShadow {
  public static var key: StaticString { return "box-shadow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension BoxSizing {
  public static var key: StaticString { return "box-sizing" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension CaretColor {
  public static var key: StaticString { return "caret-color" }
}
extension Cursor {
  public static var key: StaticString { return "cursor" }
}
