fileprivate struct StyleModifier<Content: View>: View, ViewModifier {
  fileprivate typealias Body = Never

  fileprivate let properties: Array<AnyProperty>

  fileprivate init(_ properties: Array<AnyProperty>) {
    self.properties = properties
  }

  fileprivate func body(content: Content) -> some View {
    return content.modifier(self)
  }

  fileprivate func build(into builder: inout Builder) {
    builder.combine(last: Attribute(key: "style", value: properties.map { "\($0.key):\($0.value);" }.joined(separator: "")))
  }
}

extension View {
  fileprivate func appendStyle<P: Property>(_ property: P) -> some View {
    return self.modifier(StyleModifier<Self>(property.toArrayOfAnyProperty()))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Animation
extension View {
  public func cssAnimation(_ value: Value<Animation>) -> some View {
    return appendStyle(Animation(value))
  }

  public func cssAnimation(
    name: Value<AnimationName> = .default,
    duration: Value<AnimationDuration> = .default,
    timingFunction: Value<AnimationTimingFunction> = .default,
    delay: Value<AnimationDelay> = .default,
    iterationCount: Value<AnimationIterationCount> = .default,
    direction: Value<AnimationDirection> = .default,
    fillMode: Value<AnimationFillMode> = .default,
    playState: Value<AnimationPlayState> = .default
  ) -> some View {
    return appendStyle (
      Animation(
        name: name,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay,
        iterationCount: iterationCount,
        direction: direction,
        fillMode: fillMode,
        playState: playState
      )
    )
  }

  public func cssAnimationDelay(_ value: Value<AnimationDelay>) -> some View {
    return appendStyle(AnimationDelay(value))
  }

  public func cssAnimationDirection(_ value: Value<AnimationDirection>) -> some View {
    return appendStyle(AnimationDirection(value))
  }

  public func cssAnimationDuration(_ value: Value<AnimationDuration>) -> some View {
    return appendStyle(AnimationDuration(value))
  }

  public func cssAnimationFillMode(_ value: Value<AnimationFillMode>) -> some View {
    return appendStyle(AnimationFillMode(value))
  }

  public func cssAnimationIterationCount(_ value: Value<AnimationIterationCount>) -> some View {
    return appendStyle(AnimationIterationCount(value))
  }

  public func cssAnimationName(_ value: Value<AnimationName>) -> some View {
    return appendStyle(AnimationName(value))
  }

  public func cssAnimationPlayState(_ value: Value<AnimationPlayState>) -> some View {
    return appendStyle(AnimationPlayState(value))
  }

  public func cssAnimationTimingFunction(_ value: Value<AnimationTimingFunction>) -> some View {
    return appendStyle(AnimationTimingFunction(value))
  }

  public func cssAnimationTimingFunction(steps count: Int, at point: AnimationTimingFunctionPoint = .end) -> some View {
    return appendStyle(AnimationTimingFunction(.steps(count, at: point)))
  }

  public func cssAnimationTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> some View {
    return appendStyle(AnimationTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Background
extension View {
  public func cssBackground(_ value: Value<Background>) -> some View {
    return appendStyle(Background(value))
  }

  public func cssBackground(
    color: Value<BackgroundColor> = .default,
    image: Value<BackgroundImage> = .default,
    position: Value<BackgroundPosition> = .default,
    size: Value<BackgroundSize> = .default,
    `repeat`: Value<BackgroundRepeat> = .default,
    _ moreRepeatings: Value<BackgroundRepeat> ...,
    origin: Value<BackgroundOrigin> = .default,
    clip: Value<BackgroundClip> = .default,
    attachment: Value<BackgroundAttachment> = .default
  ) -> some View {
    return appendStyle (
      Background(
        color: color,
        image: image,
        position: position,
        size: size,
        repeat: [`repeat`] + moreRepeatings,
        origin: origin,
        clip: clip,
        attachment: attachment
      )
    )
  }

  public func cssBackgroundAttachment(_ value: Value<BackgroundAttachment>) -> some View {
    return appendStyle(BackgroundAttachment(value))
  }

  public func cssBackgroundBlendMode(_ value: Value<BackgroundBlendMode>) -> some View {
    return appendStyle(BackgroundBlendMode(value))
  }

  public func cssBackgroundClip(_ value: Value<BackgroundClip>) -> some View {
    return appendStyle(BackgroundClip(value))
  }

  public func cssBackgroundColor(_ value: Value<BackgroundColor>) -> some View {
    return appendStyle(BackgroundColor(value))
  }

  public func cssBackgroundImage(_ value: Value<BackgroundImage>) -> some View {
    return appendStyle(BackgroundImage(value))
  }

  public func cssBackgroundOrigin(_ value: Value<BackgroundOrigin>) -> some View {
    return appendStyle(BackgroundOrigin(value))
  }

  public func cssBackgroundPosition(_ value: Value<BackgroundPosition>) -> some View {
    return appendStyle(BackgroundPosition(value))
  }

  public func cssBackgroundPosition(_ x: Value<CSSLength>, _ y: Value<CSSLength> = .auto) -> some View {
    return appendStyle(BackgroundPosition(x, y))
  }

  public func cssBackgroundPosition(_ horizontal: Value<CSSSide>, _ vertical: Value<CSSSide> = .center) -> some View {
    return appendStyle(BackgroundPosition(horizontal, vertical))
  }

  public func cssBackgroundRepeat(
    _ value: Value<BackgroundRepeat>,
    _ moreValues: Value<BackgroundRepeat> ...
  ) -> some View {
    return appendStyle(BackgroundRepeat([value] + moreValues))
  }

  public func cssBackgroundSize(_ value: Value<BackgroundSize>) -> some View {
    return appendStyle(BackgroundSize(value))
  }

  public func cssBackgroundSize(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) -> some View {
    return appendStyle(BackgroundSize(width, height))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssBorder(_ value: Value<Border>) -> some View {
    return appendStyle(Border(value))
  }

  public func cssBorder(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> some View {
    return appendStyle(Border(width: width, style: style, color: color))
  }

  public func cssBorderBottom(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> some View {
    return appendStyle(BorderBottom(width: width, style: style, color: color))
  }

  public func cssBorderBottomColor(_ value: Value<BorderBottomColor>) -> some View {
    return appendStyle(BorderBottomColor(value))
  }

  public func cssBorderBottomLeftRadius(_ value: Value<BorderBottomLeftRadius>) -> some View {
    return appendStyle(BorderBottomLeftRadius(value))
  }

  public func cssBorderBottomRightRadius(_ value: Value<BorderBottomRightRadius>) -> some View {
    return appendStyle(BorderBottomRightRadius(value))
  }

  public func cssBorderBottomStyle(_ value: Value<BorderBottomStyle>) -> some View {
    return appendStyle(BorderBottomStyle(value))
  }

  public func cssBorderBottomWidth(_ value: Value<BorderBottomWidth>) -> some View {
    return appendStyle(BorderBottomWidth(value))
  }

  public func cssBorderCollapse(_ value: Value<BorderCollapse>) -> some View {
    return appendStyle(BorderCollapse(value))
  }

  public func cssBorderColor(_ value: Value<BorderColor>) -> some View {
    return appendStyle(BorderColor(value))
  }

  public func cssBorderColor(_ topBottom: Value<CSSColor>, _ leftRight: Value<CSSColor>) -> some View {
    return appendStyle(BorderColor(topBottom, leftRight))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ leftRight: Value<CSSColor>, _ bottom: Value<CSSColor>) -> some View {
    return appendStyle(BorderColor(top, leftRight, bottom))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ right: Value<CSSColor>, _ bottom: Value<CSSColor>, _ left: Value<CSSColor>) -> some View {
    return appendStyle(BorderColor(top, right, bottom, left))
  }

  public func cssBorderImage(
    source: Value<BorderImageSource> = .default,
    slice: Value<BorderImageSlice> = .default,
    width: Value<BorderImageWidth> = .default,
    outset: Value<BorderImageOutset> = .default,
    `repeat`: Value<BorderImageRepeat> = .default
  ) -> some View {
    return appendStyle (
      BorderImage(
        source: source,
        slice: slice,
        width: width,
        outset: outset,
        repeat: `repeat`
      )
    )
  }

  public func cssBorderImageOutset(_ value: Value<BorderImageOutset>) -> some View {
    return appendStyle(BorderImageOutset(value))
  }

  public func cssBorderImageOutset(_ topBottom: Value<BorderImageOutset>, _ leftRight: Value<BorderImageOutset>) -> some View {
    return appendStyle(BorderImageOutset(topBottom, leftRight))
  }

  public func cssBorderImageOutset(_ top: Value<BorderImageOutset>, _ leftRight: Value<BorderImageOutset>, _ bottom: Value<BorderImageOutset>) -> some View {
    return appendStyle(BorderImageOutset(top, leftRight, bottom))
  }

  public func cssBorderImageOutset(_ top: Value<BorderImageOutset>, _ right: Value<BorderImageOutset>, _ bottom: Value<BorderImageOutset>, _ left: Value<BorderImageOutset>) -> some View {
    return appendStyle(BorderImageOutset(top, right, bottom, left))
  }

  public func cssBorderImageRepeat(_ value: Value<BorderImageRepeat>) -> some View {
    return appendStyle(BorderImageRepeat(value))
  }

  public func cssBorderImageSlice(_ value: Value<BorderImageSlice>) -> some View {
    return appendStyle(BorderImageSlice(value))
  }

  public func cssBorderImageSlice(_ topBottom: Value<BorderImageSlice>, _ leftRight: Value<BorderImageSlice>) -> some View {
    return appendStyle(BorderImageSlice(topBottom, leftRight))
  }

  public func cssBorderImageSlice(_ top: Value<BorderImageSlice>, _ leftRight: Value<BorderImageSlice>, _ bottom: Value<BorderImageSlice>) -> some View {
    return appendStyle(BorderImageSlice(top, leftRight, bottom))
  }

  public func cssBorderImageSlice(_ top: Value<BorderImageSlice>, _ right: Value<BorderImageSlice>, _ bottom: Value<BorderImageSlice>, _ left: Value<BorderImageSlice>) -> some View {
    return appendStyle(BorderImageSlice(top, right, bottom, left))
  }

  public func cssBorderImageSource(_ value: Value<BorderImageSource>) -> some View {
    return appendStyle(BorderImageSource(value))
  }

  public func cssBorderImageWidth(_ value: Value<BorderImageWidth>) -> some View {
    return appendStyle(BorderImageWidth(value))
  }

  public func cssBorderImageWidth(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(BorderImageWidth(topBottom, leftRight))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(BorderImageWidth(top, leftRight, bottom))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(BorderImageWidth(top, right, bottom, left))
  }

  public func cssBorderLeft(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> some View {
    return appendStyle(BorderLeft(width: width, style: style, color: color))
  }

  public func cssBorderLeftColor(_ value: Value<BorderLeftColor>) -> some View {
    return appendStyle(BorderLeftColor(value))
  }

  public func cssBorderLeftStyle(_ value: Value<BorderLeftStyle>) -> some View {
    return appendStyle(BorderLeftStyle(value))
  }

  public func cssBorderLeftWidth(_ value: Value<BorderLeftWidth>) -> some View {
    return appendStyle(BorderLeftWidth(value))
  }

  public func cssBorderRadius(_ value: Value<BorderRadius>) -> some View {
    return appendStyle(BorderRadius(value))
  }

  public func cssBorderRadius(_ topBottom: Value<BorderRadius>, _ leftRight: Value<BorderRadius>) -> some View {
    return appendStyle(BorderRadius(topBottom, leftRight))
  }

  public func cssBorderRadius(_ top: Value<BorderRadius>, _ leftRight: Value<BorderRadius>, _ bottom: Value<BorderRadius>) -> some View {
    return appendStyle(BorderRadius(top, leftRight, bottom))
  }

  public func cssBorderRadius(_ top: Value<BorderRadius>, _ right: Value<BorderRadius>, _ bottom: Value<BorderRadius>, _ left: Value<BorderRadius>) -> some View {
    return appendStyle(BorderRadius(top, right, bottom, left))
  }

  public func cssBorderRight(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> some View {
    return appendStyle(BorderRight(width: width, style: style, color: color))
  }

  public func cssBorderRightColor(_ value: Value<BorderRightColor>) -> some View {
    return appendStyle(BorderRightColor(value))
  }

  public func cssBorderRightStyle(_ value: Value<BorderRightStyle>) -> some View {
    return appendStyle(BorderRightStyle(value))
  }

  public func cssBorderRightWidth(_ value: Value<BorderRightWidth>) -> some View {
    return appendStyle(BorderRightWidth(value))
  }

  public func cssBorderSpacing(_ value: Value<BorderSpacing>) -> some View {
    return appendStyle(BorderSpacing(value))
  }

  public func cssBorderSpacing(_ horizontal: Value<CSSLength>, _ vertical: Value<CSSLength>) -> some View {
    return appendStyle(BorderSpacing(horizontal, vertical))
  }

  public func cssBorderStyle(_ value: Value<BorderStyle>) -> some View {
    return appendStyle(BorderStyle(value))
  }

  public func cssBorderStyle(_ topBottom: Value<BorderStyle>, _ leftRight: Value<BorderStyle>) -> some View {
    return appendStyle(BorderStyle(topBottom, leftRight))
  }

  public func cssBorderStyle(_ top: Value<BorderStyle>, _ leftRight: Value<BorderStyle>, _ bottom: Value<BorderStyle>) -> some View {
    return appendStyle(BorderStyle(top, leftRight, bottom))
  }

  public func cssBorderStyle(_ top: Value<BorderStyle>, _ right: Value<BorderStyle>, _ bottom: Value<BorderStyle>, _ left: Value<BorderStyle>) -> some View {
    return appendStyle(BorderStyle(top, right, bottom, left))
  }

  public func cssBorderTop(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> some View {
    return appendStyle(BorderTop(width: width, style: style, color: color))
  }

  public func cssBorderTopColor(_ value: Value<BorderTopColor>) -> some View {
    return appendStyle(BorderTopColor(value))
  }

  public func cssBorderTopLeftRadius(_ value: Value<BorderTopLeftRadius>) -> some View {
    return appendStyle(BorderTopLeftRadius(value))
  }

  public func cssBorderTopRightRadius(_ value: Value<BorderTopRightRadius>) -> some View {
    return appendStyle(BorderTopRightRadius(value))
  }

  public func cssBorderTopStyle(_ value: Value<BorderTopStyle>) -> some View {
    return appendStyle(BorderTopStyle(value))
  }

  public func cssBorderTopWidth(_ value: Value<BorderTopWidth>) -> some View {
    return appendStyle(BorderTopWidth(value))
  }

  public func cssBorderWidth(_ value: Value<BorderWidth>) -> some View {
    return appendStyle(BorderWidth(value))
  }

  public func cssBorderWidth(_ topBottom: Value<BorderWidth>, _ leftRight: Value<BorderWidth>) -> some View {
    return appendStyle(BorderWidth(topBottom, leftRight))
  }

  public func cssBorderWidth(_ top: Value<BorderWidth>, _ leftRight: Value<BorderWidth>, _ bottom: Value<BorderWidth>) -> some View {
    return appendStyle(BorderWidth(top, leftRight, bottom))
  }

  public func cssBorderWidth(_ top: Value<BorderWidth>, _ right: Value<BorderWidth>, _ bottom: Value<BorderWidth>, _ left: Value<BorderWidth>) -> some View {
    return appendStyle(BorderWidth(top, right, bottom, left))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Color
extension View {
  public func cssColor(_ value: Value<Color>) -> some View {
    return appendStyle(Color(value))
  }

  public func cssOpacity(_ value: Value<Opacity>) -> some View {
    return appendStyle(Opacity(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Dimension
extension View {
  public func cssHeight(_ value: Value<Height>) -> some View {
    return appendStyle(Height(value))
  }

  public func cssMinHeight(_ value: Value<MinHeight>) -> some View {
    return appendStyle(MinHeight(value))
  }

  public func cssMaxHeight(_ value: Value<MaxHeight>) -> some View {
    return appendStyle(MaxHeight(value))
  }

  public func cssWidth(_ value: Value<Width>) -> some View {
    return appendStyle(Width(value))
  }

  public func cssMinWidth(_ value: Value<MinWidth>) -> some View {
    return appendStyle(MinWidth(value))
  }

  public func cssMaxWidth(_ value: Value<MaxWidth>) -> some View {
    return appendStyle(MaxWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: FlexibleBox
extension View {
  public func cssAlignContent(_ value: Value<AlignContent>) -> some View {
    return appendStyle(AlignContent(value))
  }

  public func cssAlignItems(_ value: Value<AlignItems>) -> some View {
    return appendStyle(AlignItems(value))
  }

  public func cssAlignSelf(_ value: Value<AlignSelf>) -> some View {
    return appendStyle(AlignSelf(value))
  }

  public func cssFlex(_ value: Value<Flex>) -> some View {
    return appendStyle(Flex(value))
  }

  public func cssFlex(
    grow: Value<FlexGrow> = .default,
    shrink: Value<FlexShrink> = .default,
    basis: Value<FlexBasis> = .default
  ) -> some View {
    return appendStyle(Flex(grow: grow, shrink: shrink, basis: basis))
  }

  public func cssFlexBasis(_ value: Value<FlexBasis>) -> some View {
    return appendStyle(FlexBasis(value))
  }

  public func cssFlexDirection(_ value: Value<FlexDirection>) -> some View {
    return appendStyle(FlexDirection(value))
  }

  public func cssFlexFlow(_ value: Value<FlexFlow>) -> some View {
    return appendStyle(FlexFlow(value))
  }

  public func cssFlexFlow(
    direction: Value<FlexDirection> = .default,
    wrap: Value<FlexWrap> = .default
  ) -> some View {
    return appendStyle(FlexFlow(direction: direction, wrap: wrap))
  }

  public func cssFlexGrow(_ value: Value<FlexGrow>) -> some View {
    return appendStyle(FlexGrow(value))
  }

  public func cssFlexShrink(_ value: Value<FlexShrink>) -> some View {
    return appendStyle(FlexShrink(value))
  }

  public func cssFlexWrap(_ value: Value<FlexWrap>) -> some View {
    return appendStyle(FlexWrap(value))
  }

  public func cssJustifyContent(_ value: Value<JustifyContent>) -> some View {
    return appendStyle(JustifyContent(value))
  }

  public func cssOrder(_ value: Value<Order>) -> some View {
    return appendStyle(Order(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Font
extension View {
  public func cssFont(_ value: Value<Font>) -> some View {
    return appendStyle(Font(value))
  }

  public func cssFont(
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    size: Value<FontSize>,
    family: Value<FontFamily>
  ) -> some View {
    return appendStyle (
      Font(
        style: style,
        variant: variant,
        weight: weight,
        size: size,
        family: family
      )
    )
  }

  public func cssFont(
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    lineHeight: Value<LineHeight>,
    family: Value<FontFamily>
  ) -> some View {
    return appendStyle(
      Font(
        style: style,
        variant: variant,
        weight: weight,
        lineHeight: lineHeight,
        family: family
      )
    )
  }

  public func cssFontFamily(_ value: Value<FontFamily>) -> some View {
    return appendStyle(FontFamily(value))
  }

  public func cssFontFeatureSettings(_ value: String) -> some View {
    return appendStyle(FontFeatureSettings(value))
  }

  public func cssFontKerning(_ value: Value<FontKerning>) -> some View {
    return appendStyle(FontKerning(value))
  }

  public func cssFontSize(_ value: Value<FontSize>) -> some View {
    return appendStyle(FontSize(value))
  }

  public func cssFontSizeAdjust(_ value: Value<FontSizeAdjust>) -> some View {
    return appendStyle(FontSizeAdjust(value))
  }

  public func cssFontStretch(_ value: Value<FontStretch>) -> some View {
    return appendStyle(FontStretch(value))
  }

  public func cssFontStyle(_ value: Value<FontStyle>) -> some View {
    return appendStyle(FontStyle(value))
  }

  public func cssFontVariant(_ value: Value<FontVariant>) -> some View {
    return appendStyle(FontVariant(value))
  }

  public func cssFontVariantCaps(_ value: Value<FontVariantCaps>) -> some View {
    return appendStyle(FontVariantCaps(value))
  }

  public func cssFontWeight(_ value: Value<FontWeight>) -> some View {
    return appendStyle(FontWeight(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: GeneratedContent
extension View {
  public func cssContent(_ value: Value<Content>) -> some View {
    return appendStyle(Content(value))
  }

  public func cssQuotes(_ value: Value<Quotes>) -> some View {
    return appendStyle(Quotes(value))
  }

  public func cssCounterReset(_ value: Value<CounterReset>) -> some View {
    return appendStyle(CounterReset(value))
  }

  public func cssCounterIncrement(_ value: Value<CounterIncrement>) -> some View {
    return appendStyle(CounterIncrement(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: List

public protocol ContainsLi {}
extension Ol: ContainsLi {}
extension Ul: ContainsLi {}

extension View where Self: ContainsLi {
  public func cssListStyle(_ value: Value<ListStyle>) -> some View {
    return appendStyle(ListStyle(value))
  }

  public func cssListStyle(
    type: Value<ListStyleType> = .default,
    position: Value<ListStylePosition> = .default,
    image: Value<ListStyleImage> = .default
  ) -> some View {
    return appendStyle(ListStyle(type: type, position: position, image: image))
  }

  public func cssListStyleType(_ value: Value<ListStyleType>) -> some View {
    return appendStyle(ListStyleType(value))
  }

  public func cssListStylePosition(_ value: Value<ListStylePosition>) -> some View {
    return appendStyle(ListStylePosition(value))
  }

  public func cssListStyleImage(_ value: Value<ListStyleImage>) -> some View {
    return appendStyle(ListStyleImage(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Margin
extension View {
  public func cssMargin(_ value: Value<Margin>) -> some View {
    return appendStyle(Margin(value))
  }

  public func cssMargin(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(Margin(topBottom, leftRight))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(Margin(top, leftRight, bottom))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(Margin(top, right, bottom, left))
  }

  public func cssMarginBottom(_ value: Value<MarginBottom>) -> some View {
    return appendStyle(MarginBottom(value))
  }

  public func cssMarginLeft(_ value: Value<MarginLeft>) -> some View {
    return appendStyle(MarginLeft(value))
  }

  public func cssMarginRight(_ value: Value<MarginRight>) -> some View {
    return appendStyle(MarginRight(value))
  }

  public func cssMarginTop(_ value: Value<MarginTop>) -> some View {
    return appendStyle(MarginTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: MultiColumn
extension View {
  public func cssColumnCount(_ value: Value<ColumnCount>) -> some View {
    return appendStyle(ColumnCount(value))
  }

  public func cssColumnFill(_ value: Value<ColumnFill>) -> some View {
    return appendStyle(ColumnFill(value))
  }

  public func cssColumnGap(_ value: Value<ColumnGap>) -> some View {
    return appendStyle(ColumnGap(value))
  }

  public func cssColumnRule(_ value: Value<ColumnRule>) -> some View {
    return appendStyle(ColumnRule(value))
  }

  public func cssColumnRule(
    width: Value<ColumnRuleWidth> = .medium,
    style: Value<ColumnRuleStyle> = .none,
    color: Value<ColumnRuleColor> = .default
  ) -> some View {
    return appendStyle(ColumnRule(width: width, style: style, color: color))
  }

  public func cssColumnRuleColor(_ value: Value<ColumnRuleColor>) -> some View {
    return appendStyle(ColumnRuleColor(value))
  }

  public func cssColumnRuleStyle(_ value: Value<ColumnRuleStyle>) -> some View {
    return appendStyle(ColumnRuleStyle(value))
  }

  public func cssColumnRuleWidth(_ value: Value<ColumnRuleWidth>) -> some View {
    return appendStyle(ColumnRuleWidth(value))
  }

  public func cssColumnSpan(_ value: Value<ColumnSpan>) -> some View {
    return appendStyle(ColumnSpan(value))
  }

  public func cssColumnWidth(_ value: Value<ColumnWidth>) -> some View {
    return appendStyle(ColumnWidth(value))
  }

  public func cssColumns(_ value: Value<Columns>) -> some View {
    return appendStyle(Columns(value))
  }

  public func cssColumns(
    width: Value<ColumnWidth> = .default,
    count: Value<ColumnCount> = .default
  ) -> some View {
    return appendStyle(Columns(width: width, count: count))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssOutline(_ value: Value<Outline>) -> some View {
    return appendStyle(Outline(value))
  }

  public func cssOutline(
    width: Value<OutlineWidth> = .medium,
    style: Value<OutlineStyle> = .none,
    color: Value<OutlineColor> = .default
  ) -> some View {
    return appendStyle(Outline(width: width, style: style, color: color))
  }

  public func cssOutlineColor(_ value: Value<OutlineColor>) -> some View {
    return appendStyle(OutlineColor(value))
  }

  public func cssOutlineOffset(_ value: Value<OutlineOffset>) -> some View {
    return appendStyle(OutlineOffset(value))
  }

  public func cssOutlineStyle(_ value: Value<OutlineStyle>) -> some View {
    return appendStyle(OutlineStyle(value))
  }

  public func cssOutlineWidth(_ value: Value<OutlineWidth>) -> some View {
    return appendStyle(OutlineWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Padding
extension View {
  public func cssPadding(_ value: Value<Padding>) -> some View {
    return appendStyle(Padding(value))
  }

  public func cssPadding(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(Padding(topBottom, leftRight))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(Padding(top, leftRight, bottom))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(Padding(top, right, bottom, left))
  }

  public func cssPaddingBottom(_ value: Value<PaddingBottom>) -> some View {
    return appendStyle(PaddingBottom(value))
  }

  public func cssPaddingLeft(_ value: Value<PaddingLeft>) -> some View {
    return appendStyle(PaddingLeft(value))
  }

  public func cssPaddingRight(_ value: Value<PaddingRight>) -> some View {
    return appendStyle(PaddingRight(value))
  }

  public func cssPaddingTop(_ value: Value<PaddingTop>) -> some View {
    return appendStyle(PaddingTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Print
extension View {
  public func cssBreakAfter(_ value: Value<BreakAfter>) -> some View {
    return appendStyle(BreakAfter(value))
  }

  public func cssBreakBefore(_ value: Value<BreakBefore>) -> some View {
    return appendStyle(BreakBefore(value))
  }

  public func cssBreakInside(_ value: Value<BreakInside>) -> some View {
    return appendStyle(BreakInside(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Text
extension View {
  public func cssTextAlign(_ value: Value<TextAlign>) -> some View {
    return appendStyle(TextAlign(value))
  }

  public func cssTextLastAlign(_ value: Value<TextAlignLast>) -> some View {
    return appendStyle(TextAlignLast(value))
  }

  public func cssTextDecoration(_ value: Value<TextDecoration>) -> some View {
    return appendStyle(TextDecoration(value))
  }

  public func cssTextDecoration(
    line: Value<TextDecorationLine> = .none,
    color: Value<TextDecorationColor> = .currentColor,
    style: Value<TextDecorationStyle> = .solid
  ) -> some View {
    return appendStyle(TextDecoration(line: line, color: color, style: style))
  }

  public func cssTextDecorationColor(_ value: Value<TextDecorationColor>) -> some View {
    return appendStyle(TextDecorationColor(value))
  }

  public func cssTextDecorationLine(
    _ value: Value<TextDecorationLine>,
    _ moreValues: Value<TextDecorationLine> ...
  ) -> some View {
    return appendStyle(TextDecorationLine([value] + moreValues))
  }

  public func cssTextDecorationStyle(_ value: Value<TextDecorationStyle>) -> some View {
    return appendStyle(TextDecorationStyle(value))
  }

  public func cssTextIndent(_ value: Value<TextIndent>) -> some View {
    return appendStyle(TextIndent(value))
  }

  public func cssTextJustify(_ value: Value<TextJustify>) -> some View {
    return appendStyle(TextJustify(value))
  }

  public func cssTextOverflow(_ value: Value<TextOverflow>) -> some View {
    return appendStyle(TextOverflow(value))
  }

  public func cssTextShadow(_ value: Value<TextShadow>) -> some View {
    return appendStyle(TextShadow(value))
  }

  public func cssTextShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Value<CSSLength> = .px(0),
    _ color: Value<CSSColor>
  ) -> some View {
    return appendStyle(TextShadow(hShadow, vShadow, blurRadius, color))
  }

  public func cssTextTransform(_ value: Value<TextTransform>) -> some View {
    return appendStyle(TextTransform(value))
  }

  public func cssLineHeight(_ value: Value<LineHeight>) -> some View {
    return appendStyle(LineHeight(value))
  }

  public func cssLetterSpacing(_ value: Value<LetterSpacing>) -> some View {
    return appendStyle(LetterSpacing(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transform
extension View {
  public func cssBackfaceVisibility(_ value: Value<BackfaceVisibility>) -> some View {
    return appendStyle(BackfaceVisibility(value))
  }

  public func cssTransformOrigin(_ value: Value<TransformOrigin>) -> some View {
    return appendStyle(TransformOrigin(value))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>) -> some View {
    return appendStyle(TransformOrigin(x, y))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>, _ z: Value<CSSZAxis>) -> some View {
    return appendStyle(TransformOrigin(x, y, z))
  }

  public func cssTransformStyle(_ value: Value<TransformStyle>) -> some View {
    return appendStyle(TransformStyle(value))
  }

  public func cssTransform(_ value: Value<Transform>) -> some View {
    return appendStyle(Transform(value))
  }

  public func cssTransform(_ function: (Value<Transform>, Bool), _ moreFunctions: (Value<Transform>, Bool) ...) -> some View {
    return appendStyle(Transform([function] + moreFunctions))
  }

  public func cssTransform(_ functions: Array<(Value<Transform>, Bool)>) -> some View {
    return appendStyle(Transform(functions))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transition
extension View {
  public func cssTransition(_ value: Value<Transition>) -> some View {
    return appendStyle(Transition(value))
  }

  public func cssTransition(
    property: Value<TransitionProperty> = .default,
    duration: Value<TransitionDuration> = .default,
    timingFunction: Value<TransitionTimingFunction> = .default,
    delay: Value<TransitionDelay> = .default
  ) -> some View {
    return appendStyle(
      Transition(
        property: property,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay
      )
    )
  }

  public func cssTransitionDelay(_ value: Value<TransitionDelay>) -> some View {
    return appendStyle(TransitionDelay(value))
  }

  public func cssTransitionDuration(_ value: Value<TransitionDuration>) -> some View {
    return appendStyle(TransitionDuration(value))
  }

  public func cssTransitionProperty(_ value: Value<TransitionProperty>) -> some View {
    return appendStyle(TransitionProperty(value))
  }

  public func cssTransitionTimingFunction(_ value: Value<TransitionTimingFunction>) -> some View {
    return appendStyle(TransitionTimingFunction(value))
  }

  public func cssTransitionTimingFunction(steps count: Int, at point: TransitionTimingFunctionPoint = .end) -> some View {
    return appendStyle(TransitionTimingFunction(.steps(count, at: point)))
  }

  public func cssTransitionTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> some View {
    return appendStyle(TransitionTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: VisualFormatting
extension View {
  public func cssDisplay(_ value: Value<Display>) -> some View {
    return appendStyle(Display(value))
  }

  public func cssPosition(_ value: Value<Position>) -> some View {
    return appendStyle(Position(value))
  }

  public func cssTop(_ value: Value<Top>) -> some View {
    return appendStyle(Top(value))
  }

  public func cssRight(_ value: Value<Right>) -> some View {
    return appendStyle(Right(value))
  }

  public func cssBottom(_ value: Value<Bottom>) -> some View {
    return appendStyle(Bottom(value))
  }

  public func cssLeft(_ value: Value<Left>) -> some View {
    return appendStyle(Left(value))
  }

  public func cssFloat(_ value: Value<Float>) -> some View {
    return appendStyle(Float(value))
  }

  public func cssClear(_ value: Value<Clear>) -> some View {
    return appendStyle(Clear(value))
  }

  public func cssZIndex(_ value: Value<ZIndex>) -> some View {
    return appendStyle(ZIndex(value))
  }

  public func cssOverflow(_ value: Value<Overflow>) -> some View {
    return appendStyle(Overflow(value))
  }

  public func cssOverflowX(_ value: Value<OverflowX>) -> some View {
    return appendStyle(OverflowX(value))
  }

  public func cssOverflowY(_ value: Value<OverflowY>) -> some View {
    return appendStyle(OverflowY(value))
  }

  public func cssClipPath(_ value: String) -> some View {
    return appendStyle(ClipPath(value))
  }

  public func cssVisibility(_ value: Value<Visibility>) -> some View {
    return appendStyle(Visibility(value))
  }

  public func cssBoxDecorationBreak(_ value: Value<BoxDecorationBreak>) -> some View {
    return appendStyle(BoxDecorationBreak(value))
  }

  public func cssBoxShadow(_ value: Value<BoxShadow>) -> some View {
    return appendStyle(BoxShadow(value))
  }

  public func cssBoxShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Optional<Value<CSSLength>> = nil,
    _ spreadRadius: Optional<Value<CSSLength>> = nil,
    _ color: Value<CSSColor> = .black
  ) -> some View {
    return appendStyle(BoxShadow(hShadow, vShadow, blurRadius, spreadRadius, color))
  }

  public func cssBoxSizing(_ value: Value<BoxSizing>) -> some View {
    return appendStyle(BoxSizing(value))
  }

  public func cssCaretColor(_ value: Value<CaretColor>) -> some View {
    return appendStyle(CaretColor(value))
  }

  public func cssCursor(_ value: Value<Cursor>) -> some View {
    return appendStyle(Cursor(value))
  }
}