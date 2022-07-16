fileprivate struct StyleModifier<Content: View>: ViewModifier {
  fileprivate typealias Body = Never

  fileprivate let properties: Array<AnyProperty>

  fileprivate init(_ properties: Array<AnyProperty>) {
    self.properties = properties
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
  public func cssAnimation(_ value: Value<CssPropAnimation>) -> some View {
    return appendStyle(CssPropAnimation(value))
  }

  public func cssAnimation(
    name: Value<CssPropAnimationName> = .default,
    duration: Value<CssPropAnimationDuration> = .default,
    timingFunction: Value<CssPropAnimationTimingFunction> = .default,
    delay: Value<CssPropAnimationDelay> = .default,
    iterationCount: Value<CssPropAnimationIterationCount> = .default,
    direction: Value<CssPropAnimationDirection> = .default,
    fillMode: Value<CssPropAnimationFillMode> = .default,
    playState: Value<CssPropAnimationPlayState> = .default
  ) -> some View {
    return appendStyle(
      CssPropAnimation(
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

  public func cssAnimationDelay(_ value: Value<CssPropAnimationDelay>) -> some View {
    return appendStyle(CssPropAnimationDelay(value))
  }

  public func cssAnimationDirection(_ value: Value<CssPropAnimationDirection>) -> some View {
    return appendStyle(CssPropAnimationDirection(value))
  }

  public func cssAnimationDuration(_ value: Value<CssPropAnimationDuration>) -> some View {
    return appendStyle(CssPropAnimationDuration(value))
  }

  public func cssAnimationFillMode(_ value: Value<CssPropAnimationFillMode>) -> some View {
    return appendStyle(CssPropAnimationFillMode(value))
  }

  public func cssAnimationIterationCount(_ value: Value<CssPropAnimationIterationCount>) -> some View {
    return appendStyle(CssPropAnimationIterationCount(value))
  }

  public func cssAnimationName(_ value: Value<CssPropAnimationName>) -> some View {
    return appendStyle(CssPropAnimationName(value))
  }

  public func cssAnimationPlayState(_ value: Value<CssPropAnimationPlayState>) -> some View {
    return appendStyle(CssPropAnimationPlayState(value))
  }

  public func cssAnimationTimingFunction(_ value: Value<CssPropAnimationTimingFunction>) -> some View {
    return appendStyle(CssPropAnimationTimingFunction(value))
  }

  public func cssAnimationTimingFunction(steps count: Int, at point: AnimationTimingFunctionPoint = .end) -> some View {
    return appendStyle(CssPropAnimationTimingFunction(.steps(count, at: point)))
  }

  public func cssAnimationTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> some View {
    return appendStyle(CssPropAnimationTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Background
extension View {
  public func cssBackground(_ value: Value<CssPropBackground>) -> some View {
    return appendStyle(CssPropBackground(value))
  }

  public func cssBackground(
    color: Value<CssPropBackgroundColor> = .default,
    image: Value<CssPropBackgroundImage> = .default,
    position: Value<CssPropBackgroundPosition> = .default,
    size: Value<CssPropBackgroundSize> = .default,
    `repeat`: Value<CssPropBackgroundRepeat> = .default,
    _ moreRepeatings: Value<CssPropBackgroundRepeat> ...,
    origin: Value<CssPropBackgroundOrigin> = .default,
    clip: Value<CssPropBackgroundClip> = .default,
    attachment: Value<CssPropBackgroundAttachment> = .default
  ) -> some View {
    return appendStyle(
      CssPropBackground(
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

  public func cssBackgroundAttachment(_ value: Value<CssPropBackgroundAttachment>) -> some View {
    return appendStyle(CssPropBackgroundAttachment(value))
  }

  public func cssBackgroundBlendMode(_ value: Value<CssPropBackgroundBlendMode>) -> some View {
    return appendStyle(CssPropBackgroundBlendMode(value))
  }

  public func cssBackgroundClip(_ value: Value<CssPropBackgroundClip>) -> some View {
    return appendStyle(CssPropBackgroundClip(value))
  }

  public func cssBackgroundColor(_ value: Value<CssPropBackgroundColor>) -> some View {
    return appendStyle(CssPropBackgroundColor(value))
  }

  public func cssBackgroundImage(_ value: Value<CssPropBackgroundImage>) -> some View {
    return appendStyle(CssPropBackgroundImage(value))
  }

  public func cssBackgroundOrigin(_ value: Value<CssPropBackgroundOrigin>) -> some View {
    return appendStyle(CssPropBackgroundOrigin(value))
  }

  public func cssBackgroundPosition(_ value: Value<CssPropBackgroundPosition>) -> some View {
    return appendStyle(CssPropBackgroundPosition(value))
  }

  public func cssBackgroundPosition(_ x: Value<CSSLength>, _ y: Value<CSSLength> = .auto) -> some View {
    return appendStyle(CssPropBackgroundPosition(x, y))
  }

  public func cssBackgroundPosition(_ horizontal: Value<CSSSide>, _ vertical: Value<CSSSide> = .center) -> some View {
    return appendStyle(CssPropBackgroundPosition(horizontal, vertical))
  }

  public func cssBackgroundRepeat(
    _ value: Value<CssPropBackgroundRepeat>,
    _ moreValues: Value<CssPropBackgroundRepeat> ...
  ) -> some View {
    return appendStyle(CssPropBackgroundRepeat([value] + moreValues))
  }

  public func cssBackgroundSize(_ value: Value<CssPropBackgroundSize>) -> some View {
    return appendStyle(CssPropBackgroundSize(value))
  }

  public func cssBackgroundSize(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) -> some View {
    return appendStyle(CssPropBackgroundSize(width, height))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssBorder(_ value: Value<CssPropBorder>) -> some View {
    return appendStyle(CssPropBorder(value))
  }

  public func cssBorder(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> some View {
    return appendStyle(CssPropBorder(width: width, style: style, color: color))
  }

  public func cssBorderBottom(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> some View {
    return appendStyle(CssPropBorderBottom(width: width, style: style, color: color))
  }

  public func cssBorderBottomColor(_ value: Value<CssPropBorderBottomColor>) -> some View {
    return appendStyle(CssPropBorderBottomColor(value))
  }

  public func cssBorderBottomLeftRadius(_ value: Value<CssPropBorderBottomLeftRadius>) -> some View {
    return appendStyle(CssPropBorderBottomLeftRadius(value))
  }

  public func cssBorderBottomRightRadius(_ value: Value<CssPropBorderBottomRightRadius>) -> some View {
    return appendStyle(CssPropBorderBottomRightRadius(value))
  }

  public func cssBorderBottomStyle(_ value: Value<CssPropBorderBottomStyle>) -> some View {
    return appendStyle(CssPropBorderBottomStyle(value))
  }

  public func cssBorderBottomWidth(_ value: Value<CssPropBorderBottomWidth>) -> some View {
    return appendStyle(CssPropBorderBottomWidth(value))
  }

  public func cssBorderCollapse(_ value: Value<CssPropBorderCollapse>) -> some View {
    return appendStyle(CssPropBorderCollapse(value))
  }

  public func cssBorderColor(_ value: Value<CssPropBorderColor>) -> some View {
    return appendStyle(CssPropBorderColor(value))
  }

  public func cssBorderColor(_ topBottom: Value<CSSColor>, _ leftRight: Value<CSSColor>) -> some View {
    return appendStyle(CssPropBorderColor(topBottom, leftRight))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ leftRight: Value<CSSColor>, _ bottom: Value<CSSColor>) -> some View {
    return appendStyle(CssPropBorderColor(top, leftRight, bottom))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ right: Value<CSSColor>, _ bottom: Value<CSSColor>, _ left: Value<CSSColor>) -> some View {
    return appendStyle(CssPropBorderColor(top, right, bottom, left))
  }

  public func cssBorderImage(
    source: Value<CssPropBorderImageSource> = .default,
    slice: Value<CssPropBorderImageSlice> = .default,
    width: Value<CssPropBorderImageWidth> = .default,
    outset: Value<CssPropBorderImageOutset> = .default,
    `repeat`: Value<CssPropBorderImageRepeat> = .default
  ) -> some View {
    return appendStyle(
      CssPropBorderImage(
        source: source,
        slice: slice,
        width: width,
        outset: outset,
        repeat: `repeat`
      )
    )
  }

  public func cssBorderImageOutset(_ value: Value<CssPropBorderImageOutset>) -> some View {
    return appendStyle(CssPropBorderImageOutset(value))
  }

  public func cssBorderImageOutset(_ topBottom: Value<CssPropBorderImageOutset>, _ leftRight: Value<CssPropBorderImageOutset>) -> some View {
    return appendStyle(CssPropBorderImageOutset(topBottom, leftRight))
  }

  public func cssBorderImageOutset(_ top: Value<CssPropBorderImageOutset>, _ leftRight: Value<CssPropBorderImageOutset>, _ bottom: Value<CssPropBorderImageOutset>) -> some View {
    return appendStyle(CssPropBorderImageOutset(top, leftRight, bottom))
  }

  public func cssBorderImageOutset(_ top: Value<CssPropBorderImageOutset>, _ right: Value<CssPropBorderImageOutset>, _ bottom: Value<CssPropBorderImageOutset>, _ left: Value<CssPropBorderImageOutset>) -> some View {
    return appendStyle(CssPropBorderImageOutset(top, right, bottom, left))
  }

  public func cssBorderImageRepeat(_ value: Value<CssPropBorderImageRepeat>) -> some View {
    return appendStyle(CssPropBorderImageRepeat(value))
  }

  public func cssBorderImageSlice(_ value: Value<CssPropBorderImageSlice>) -> some View {
    return appendStyle(CssPropBorderImageSlice(value))
  }

  public func cssBorderImageSlice(_ topBottom: Value<CssPropBorderImageSlice>, _ leftRight: Value<CssPropBorderImageSlice>) -> some View {
    return appendStyle(CssPropBorderImageSlice(topBottom, leftRight))
  }

  public func cssBorderImageSlice(_ top: Value<CssPropBorderImageSlice>, _ leftRight: Value<CssPropBorderImageSlice>, _ bottom: Value<CssPropBorderImageSlice>) -> some View {
    return appendStyle(CssPropBorderImageSlice(top, leftRight, bottom))
  }

  public func cssBorderImageSlice(_ top: Value<CssPropBorderImageSlice>, _ right: Value<CssPropBorderImageSlice>, _ bottom: Value<CssPropBorderImageSlice>, _ left: Value<CssPropBorderImageSlice>) -> some View {
    return appendStyle(CssPropBorderImageSlice(top, right, bottom, left))
  }

  public func cssBorderImageSource(_ value: Value<CssPropBorderImageSource>) -> some View {
    return appendStyle(CssPropBorderImageSource(value))
  }

  public func cssBorderImageWidth(_ value: Value<CssPropBorderImageWidth>) -> some View {
    return appendStyle(CssPropBorderImageWidth(value))
  }

  public func cssBorderImageWidth(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(CssPropBorderImageWidth(topBottom, leftRight))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(CssPropBorderImageWidth(top, leftRight, bottom))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(CssPropBorderImageWidth(top, right, bottom, left))
  }

  public func cssBorderLeft(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> some View {
    return appendStyle(CssPropBorderLeft(width: width, style: style, color: color))
  }

  public func cssBorderLeftColor(_ value: Value<CssPropBorderLeftColor>) -> some View {
    return appendStyle(CssPropBorderLeftColor(value))
  }

  public func cssBorderLeftStyle(_ value: Value<CssPropBorderLeftStyle>) -> some View {
    return appendStyle(CssPropBorderLeftStyle(value))
  }

  public func cssBorderLeftWidth(_ value: Value<CssPropBorderLeftWidth>) -> some View {
    return appendStyle(CssPropBorderLeftWidth(value))
  }

  public func cssBorderRadius(_ value: Value<CssPropBorderRadius>) -> some View {
    return appendStyle(CssPropBorderRadius(value))
  }

  public func cssBorderRadius(_ topBottom: Value<CssPropBorderRadius>, _ leftRight: Value<CssPropBorderRadius>) -> some View {
    return appendStyle(CssPropBorderRadius(topBottom, leftRight))
  }

  public func cssBorderRadius(_ top: Value<CssPropBorderRadius>, _ leftRight: Value<CssPropBorderRadius>, _ bottom: Value<CssPropBorderRadius>) -> some View {
    return appendStyle(CssPropBorderRadius(top, leftRight, bottom))
  }

  public func cssBorderRadius(_ top: Value<CssPropBorderRadius>, _ right: Value<CssPropBorderRadius>, _ bottom: Value<CssPropBorderRadius>, _ left: Value<CssPropBorderRadius>) -> some View {
    return appendStyle(CssPropBorderRadius(top, right, bottom, left))
  }

  public func cssBorderRight(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> some View {
    return appendStyle(CssPropBorderRight(width: width, style: style, color: color))
  }

  public func cssBorderRightColor(_ value: Value<CssPropBorderRightColor>) -> some View {
    return appendStyle(CssPropBorderRightColor(value))
  }

  public func cssBorderRightStyle(_ value: Value<CssPropBorderRightStyle>) -> some View {
    return appendStyle(CssPropBorderRightStyle(value))
  }

  public func cssBorderRightWidth(_ value: Value<CssPropBorderRightWidth>) -> some View {
    return appendStyle(CssPropBorderRightWidth(value))
  }

  public func cssBorderSpacing(_ value: Value<CssPropBorderSpacing>) -> some View {
    return appendStyle(CssPropBorderSpacing(value))
  }

  public func cssBorderSpacing(_ horizontal: Value<CSSLength>, _ vertical: Value<CSSLength>) -> some View {
    return appendStyle(CssPropBorderSpacing(horizontal, vertical))
  }

  public func cssBorderStyle(_ value: Value<CssPropBorderStyle>) -> some View {
    return appendStyle(CssPropBorderStyle(value))
  }

  public func cssBorderStyle(_ topBottom: Value<CssPropBorderStyle>, _ leftRight: Value<CssPropBorderStyle>) -> some View {
    return appendStyle(CssPropBorderStyle(topBottom, leftRight))
  }

  public func cssBorderStyle(_ top: Value<CssPropBorderStyle>, _ leftRight: Value<CssPropBorderStyle>, _ bottom: Value<CssPropBorderStyle>) -> some View {
    return appendStyle(CssPropBorderStyle(top, leftRight, bottom))
  }

  public func cssBorderStyle(_ top: Value<CssPropBorderStyle>, _ right: Value<CssPropBorderStyle>, _ bottom: Value<CssPropBorderStyle>, _ left: Value<CssPropBorderStyle>) -> some View {
    return appendStyle(CssPropBorderStyle(top, right, bottom, left))
  }

  public func cssBorderTop(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> some View {
    return appendStyle(CssPropBorderTop(width: width, style: style, color: color))
  }

  public func cssBorderTopColor(_ value: Value<CssPropBorderTopColor>) -> some View {
    return appendStyle(CssPropBorderTopColor(value))
  }

  public func cssBorderTopLeftRadius(_ value: Value<CssPropBorderTopLeftRadius>) -> some View {
    return appendStyle(CssPropBorderTopLeftRadius(value))
  }

  public func cssBorderTopRightRadius(_ value: Value<CssPropBorderTopRightRadius>) -> some View {
    return appendStyle(CssPropBorderTopRightRadius(value))
  }

  public func cssBorderTopStyle(_ value: Value<CssPropBorderTopStyle>) -> some View {
    return appendStyle(CssPropBorderTopStyle(value))
  }

  public func cssBorderTopWidth(_ value: Value<CssPropBorderTopWidth>) -> some View {
    return appendStyle(CssPropBorderTopWidth(value))
  }

  public func cssBorderWidth(_ value: Value<CssPropBorderWidth>) -> some View {
    return appendStyle(CssPropBorderWidth(value))
  }

  public func cssBorderWidth(_ topBottom: Value<CssPropBorderWidth>, _ leftRight: Value<CssPropBorderWidth>) -> some View {
    return appendStyle(CssPropBorderWidth(topBottom, leftRight))
  }

  public func cssBorderWidth(_ top: Value<CssPropBorderWidth>, _ leftRight: Value<CssPropBorderWidth>, _ bottom: Value<CssPropBorderWidth>) -> some View {
    return appendStyle(CssPropBorderWidth(top, leftRight, bottom))
  }

  public func cssBorderWidth(_ top: Value<CssPropBorderWidth>, _ right: Value<CssPropBorderWidth>, _ bottom: Value<CssPropBorderWidth>, _ left: Value<CssPropBorderWidth>) -> some View {
    return appendStyle(CssPropBorderWidth(top, right, bottom, left))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Color
extension View {
  public func cssColor(_ value: Value<CssPropColor>) -> some View {
    return appendStyle(CssPropColor(value))
  }

  public func cssOpacity(_ value: Value<CssPropOpacity>) -> some View {
    return appendStyle(CssPropOpacity(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Dimension
extension View {
  public func cssHeight(_ value: Value<CssPropHeight>) -> some View {
    return appendStyle(CssPropHeight(value))
  }

  public func cssMinHeight(_ value: Value<CssPropMinHeight>) -> some View {
    return appendStyle(CssPropMinHeight(value))
  }

  public func cssMaxHeight(_ value: Value<CssPropMaxHeight>) -> some View {
    return appendStyle(CssPropMaxHeight(value))
  }

  public func cssWidth(_ value: Value<CssPropWidth>) -> some View {
    return appendStyle(CssPropWidth(value))
  }

  public func cssMinWidth(_ value: Value<CssPropMinWidth>) -> some View {
    return appendStyle(CssPropMinWidth(value))
  }

  public func cssMaxWidth(_ value: Value<CssPropMaxWidth>) -> some View {
    return appendStyle(CssPropMaxWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: FlexibleBox
extension View {
  public func cssAlignContent(_ value: Value<CssPropAlignContent>) -> some View {
    return appendStyle(CssPropAlignContent(value))
  }

  public func cssAlignItems(_ value: Value<CssPropAlignItems>) -> some View {
    return appendStyle(CssPropAlignItems(value))
  }

  public func cssAlignSelf(_ value: Value<CssPropAlignSelf>) -> some View {
    return appendStyle(CssPropAlignSelf(value))
  }

  public func cssFlex(_ value: Value<CssPropFlex>) -> some View {
    return appendStyle(CssPropFlex(value))
  }

  public func cssFlex(
    grow: Value<CssPropFlexGrow> = .default,
    shrink: Value<CssPropFlexShrink> = .default,
    basis: Value<CssPropFlexBasis> = .default
  ) -> some View {
    return appendStyle(CssPropFlex(grow: grow, shrink: shrink, basis: basis))
  }

  public func cssFlexBasis(_ value: Value<CssPropFlexBasis>) -> some View {
    return appendStyle(CssPropFlexBasis(value))
  }

  public func cssFlexDirection(_ value: Value<CssPropFlexDirection>) -> some View {
    return appendStyle(CssPropFlexDirection(value))
  }

  public func cssFlexFlow(_ value: Value<CssPropFlexFlow>) -> some View {
    return appendStyle(CssPropFlexFlow(value))
  }

  public func cssFlexFlow(
    direction: Value<CssPropFlexDirection> = .default,
    wrap: Value<CssPropFlexWrap> = .default
  ) -> some View {
    return appendStyle(CssPropFlexFlow(direction: direction, wrap: wrap))
  }

  public func cssFlexGrow(_ value: Value<CssPropFlexGrow>) -> some View {
    return appendStyle(CssPropFlexGrow(value))
  }

  public func cssFlexShrink(_ value: Value<CssPropFlexShrink>) -> some View {
    return appendStyle(CssPropFlexShrink(value))
  }

  public func cssFlexWrap(_ value: Value<CssPropFlexWrap>) -> some View {
    return appendStyle(CssPropFlexWrap(value))
  }

  public func cssJustifyContent(_ value: Value<CssPropJustifyContent>) -> some View {
    return appendStyle(CssPropJustifyContent(value))
  }

  public func cssOrder(_ value: Value<CssPropOrder>) -> some View {
    return appendStyle(CssPropOrder(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Font
extension View {
  public func cssFont(_ value: Value<CssPropFont>) -> some View {
    return appendStyle(CssPropFont(value))
  }

  public func cssFont(
    style: Value<CssPropFontStyle> = .default,
    variant: Value<CssPropFontVariant> = .default,
    weight: Value<CssPropFontWeight> = .default,
    size: Value<CssPropFontSize>,
    family: Value<CssPropFontFamily>
  ) -> some View {
    return appendStyle(
      CssPropFont(
        style: style,
        variant: variant,
        weight: weight,
        size: size,
        family: family
      )
    )
  }

  public func cssFont(
    style: Value<CssPropFontStyle> = .default,
    variant: Value<CssPropFontVariant> = .default,
    weight: Value<CssPropFontWeight> = .default,
    lineHeight: Value<CssPropLineHeight>,
    family: Value<CssPropFontFamily>
  ) -> some View {
    return appendStyle(
      CssPropFont(
        style: style,
        variant: variant,
        weight: weight,
        lineHeight: lineHeight,
        family: family
      )
    )
  }

  public func cssFontFamily(_ value: Value<CssPropFontFamily>) -> some View {
    return appendStyle(CssPropFontFamily(value))
  }

  public func cssFontFeatureSettings(_ value: String) -> some View {
    return appendStyle(CssPropFontFeatureSettings(value))
  }

  public func cssFontKerning(_ value: Value<CssPropFontKerning>) -> some View {
    return appendStyle(CssPropFontKerning(value))
  }

  public func cssFontSize(_ value: Value<CssPropFontSize>) -> some View {
    return appendStyle(CssPropFontSize(value))
  }

  public func cssFontSizeAdjust(_ value: Value<CssPropFontSizeAdjust>) -> some View {
    return appendStyle(CssPropFontSizeAdjust(value))
  }

  public func cssFontStretch(_ value: Value<CssPropFontStretch>) -> some View {
    return appendStyle(CssPropFontStretch(value))
  }

  public func cssFontStyle(_ value: Value<CssPropFontStyle>) -> some View {
    return appendStyle(CssPropFontStyle(value))
  }

  public func cssFontVariant(_ value: Value<CssPropFontVariant>) -> some View {
    return appendStyle(CssPropFontVariant(value))
  }

  public func cssFontVariantCaps(_ value: Value<CssPropFontVariantCaps>) -> some View {
    return appendStyle(CssPropFontVariantCaps(value))
  }

  public func cssFontWeight(_ value: Value<CssPropFontWeight>) -> some View {
    return appendStyle(CssPropFontWeight(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: GeneratedContent
extension View {
  public func cssContent(_ value: Value<CssPropContent>) -> some View {
    return appendStyle(CssPropContent(value))
  }

  public func cssQuotes(_ value: Value<CssPropQuotes>) -> some View {
    return appendStyle(CssPropQuotes(value))
  }

  public func cssCounterReset(_ value: Value<CssPropCounterReset>) -> some View {
    return appendStyle(CssPropCounterReset(value))
  }

  public func cssCounterIncrement(_ value: Value<CssPropCounterIncrement>) -> some View {
    return appendStyle(CssPropCounterIncrement(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: List

public protocol ContainsLi {}
extension HtmlOl: ContainsLi {}
extension HtmlUl: ContainsLi {}

extension View where Self: ContainsLi {
  public func cssListStyle(_ value: Value<CssPropListStyle>) -> some View {
    return appendStyle(CssPropListStyle(value))
  }

  public func cssListStyle(
    type: Value<CssPropListStyleType> = .default,
    position: Value<CssPropListStylePosition> = .default,
    image: Value<CssPropListStyleImage> = .default
  ) -> some View {
    return appendStyle(CssPropListStyle(type: type, position: position, image: image))
  }

  public func cssListStyleType(_ value: Value<CssPropListStyleType>) -> some View {
    return appendStyle(CssPropListStyleType(value))
  }

  public func cssListStylePosition(_ value: Value<CssPropListStylePosition>) -> some View {
    return appendStyle(CssPropListStylePosition(value))
  }

  public func cssListStyleImage(_ value: Value<CssPropListStyleImage>) -> some View {
    return appendStyle(CssPropListStyleImage(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Margin
extension View {
  public func cssMargin(_ value: Value<CssPropMargin>) -> some View {
    return appendStyle(CssPropMargin(value))
  }

  public func cssMargin(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(CssPropMargin(topBottom, leftRight))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(CssPropMargin(top, leftRight, bottom))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(CssPropMargin(top, right, bottom, left))
  }

  public func cssMarginBottom(_ value: Value<CssPropMarginBottom>) -> some View {
    return appendStyle(CssPropMarginBottom(value))
  }

  public func cssMarginLeft(_ value: Value<CssPropMarginLeft>) -> some View {
    return appendStyle(CssPropMarginLeft(value))
  }

  public func cssMarginRight(_ value: Value<CssPropMarginRight>) -> some View {
    return appendStyle(CssPropMarginRight(value))
  }

  public func cssMarginTop(_ value: Value<CssPropMarginTop>) -> some View {
    return appendStyle(CssPropMarginTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: MultiColumn
extension View {
  public func cssColumnCount(_ value: Value<CssPropColumnCount>) -> some View {
    return appendStyle(CssPropColumnCount(value))
  }

  public func cssColumnFill(_ value: Value<CssPropColumnFill>) -> some View {
    return appendStyle(CssPropColumnFill(value))
  }

  public func cssColumnGap(_ value: Value<CssPropColumnGap>) -> some View {
    return appendStyle(CssPropColumnGap(value))
  }

  public func cssColumnRule(_ value: Value<CssPropColumnRule>) -> some View {
    return appendStyle(CssPropColumnRule(value))
  }

  public func cssColumnRule(
    width: Value<CssPropColumnRuleWidth> = .medium,
    style: Value<CssPropColumnRuleStyle> = .none,
    color: Value<CssPropColumnRuleColor> = .default
  ) -> some View {
    return appendStyle(CssPropColumnRule(width: width, style: style, color: color))
  }

  public func cssColumnRuleColor(_ value: Value<CssPropColumnRuleColor>) -> some View {
    return appendStyle(CssPropColumnRuleColor(value))
  }

  public func cssColumnRuleStyle(_ value: Value<CssPropColumnRuleStyle>) -> some View {
    return appendStyle(CssPropColumnRuleStyle(value))
  }

  public func cssColumnRuleWidth(_ value: Value<CssPropColumnRuleWidth>) -> some View {
    return appendStyle(CssPropColumnRuleWidth(value))
  }

  public func cssColumnSpan(_ value: Value<CssPropColumnSpan>) -> some View {
    return appendStyle(CssPropColumnSpan(value))
  }

  public func cssColumnWidth(_ value: Value<CssPropColumnWidth>) -> some View {
    return appendStyle(CssPropColumnWidth(value))
  }

  public func cssColumns(_ value: Value<CssPropColumns>) -> some View {
    return appendStyle(CssPropColumns(value))
  }

  public func cssColumns(
    width: Value<CssPropColumnWidth> = .default,
    count: Value<CssPropColumnCount> = .default
  ) -> some View {
    return appendStyle(CssPropColumns(width: width, count: count))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssOutline(_ value: Value<CssPropOutline>) -> some View {
    return appendStyle(CssPropOutline(value))
  }

  public func cssOutline(
    width: Value<CssPropOutlineWidth> = .medium,
    style: Value<CssPropOutlineStyle> = .none,
    color: Value<CssPropOutlineColor> = .default
  ) -> some View {
    return appendStyle(CssPropOutline(width: width, style: style, color: color))
  }

  public func cssOutlineColor(_ value: Value<CssPropOutlineColor>) -> some View {
    return appendStyle(CssPropOutlineColor(value))
  }

  public func cssOutlineOffset(_ value: Value<CssPropOutlineOffset>) -> some View {
    return appendStyle(CssPropOutlineOffset(value))
  }

  public func cssOutlineStyle(_ value: Value<CssPropOutlineStyle>) -> some View {
    return appendStyle(CssPropOutlineStyle(value))
  }

  public func cssOutlineWidth(_ value: Value<CssPropOutlineWidth>) -> some View {
    return appendStyle(CssPropOutlineWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Padding
extension View {
  public func cssPadding(_ value: Value<CssPropPadding>) -> some View {
    return appendStyle(CssPropPadding(value))
  }

  public func cssPadding(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> some View {
    return appendStyle(CssPropPadding(topBottom, leftRight))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> some View {
    return appendStyle(CssPropPadding(top, leftRight, bottom))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> some View {
    return appendStyle(CssPropPadding(top, right, bottom, left))
  }

  public func cssPaddingBottom(_ value: Value<CssPropPaddingBottom>) -> some View {
    return appendStyle(CssPropPaddingBottom(value))
  }

  public func cssPaddingLeft(_ value: Value<CssPropPaddingLeft>) -> some View {
    return appendStyle(CssPropPaddingLeft(value))
  }

  public func cssPaddingRight(_ value: Value<CssPropPaddingRight>) -> some View {
    return appendStyle(CssPropPaddingRight(value))
  }

  public func cssPaddingTop(_ value: Value<CssPropPaddingTop>) -> some View {
    return appendStyle(CssPropPaddingTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Print
extension View {
  public func cssBreakAfter(_ value: Value<CssPropBreakAfter>) -> some View {
    return appendStyle(CssPropBreakAfter(value))
  }

  public func cssBreakBefore(_ value: Value<CssPropBreakBefore>) -> some View {
    return appendStyle(CssPropBreakBefore(value))
  }

  public func cssBreakInside(_ value: Value<CssPropBreakInside>) -> some View {
    return appendStyle(CssPropBreakInside(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Text
extension View {
  public func cssTextAlign(_ value: Value<CssPropTextAlign>) -> some View {
    return appendStyle(CssPropTextAlign(value))
  }

  public func cssTextLastAlign(_ value: Value<CssPropTextAlignLast>) -> some View {
    return appendStyle(CssPropTextAlignLast(value))
  }

  public func cssTextDecoration(_ value: Value<CssPropTextDecoration>) -> some View {
    return appendStyle(CssPropTextDecoration(value))
  }

  public func cssTextDecoration(
    line: Value<CssPropTextDecorationLine> = .none,
    color: Value<CssPropTextDecorationColor> = .currentColor,
    style: Value<CssPropTextDecorationStyle> = .solid
  ) -> some View {
    return appendStyle(CssPropTextDecoration(line: line, color: color, style: style))
  }

  public func cssTextDecorationColor(_ value: Value<CssPropTextDecorationColor>) -> some View {
    return appendStyle(CssPropTextDecorationColor(value))
  }

  public func cssTextDecorationLine(
    _ value: Value<CssPropTextDecorationLine>,
    _ moreValues: Value<CssPropTextDecorationLine> ...
  ) -> some View {
    return appendStyle(CssPropTextDecorationLine([value] + moreValues))
  }

  public func cssTextDecorationStyle(_ value: Value<CssPropTextDecorationStyle>) -> some View {
    return appendStyle(CssPropTextDecorationStyle(value))
  }

  public func cssTextIndent(_ value: Value<CssPropTextIndent>) -> some View {
    return appendStyle(CssPropTextIndent(value))
  }

  public func cssTextJustify(_ value: Value<CssPropTextJustify>) -> some View {
    return appendStyle(CssPropTextJustify(value))
  }

  public func cssTextOverflow(_ value: Value<CssPropTextOverflow>) -> some View {
    return appendStyle(CssPropTextOverflow(value))
  }

  public func cssTextShadow(_ value: Value<CssPropTextShadow>) -> some View {
    return appendStyle(CssPropTextShadow(value))
  }

  public func cssTextShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Value<CSSLength> = .px(0),
    _ color: Value<CSSColor>
  ) -> some View {
    return appendStyle(CssPropTextShadow(hShadow, vShadow, blurRadius, color))
  }

  public func cssTextTransform(_ value: Value<CssPropTextTransform>) -> some View {
    return appendStyle(CssPropTextTransform(value))
  }

  public func cssLineHeight(_ value: Value<CssPropLineHeight>) -> some View {
    return appendStyle(CssPropLineHeight(value))
  }

  public func cssLetterSpacing(_ value: Value<CssPropLetterSpacing>) -> some View {
    return appendStyle(CssPropLetterSpacing(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transform
extension View {
  public func cssBackfaceVisibility(_ value: Value<CssPropBackfaceVisibility>) -> some View {
    return appendStyle(CssPropBackfaceVisibility(value))
  }

  public func cssTransformOrigin(_ value: Value<CssPropTransformOrigin>) -> some View {
    return appendStyle(CssPropTransformOrigin(value))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>) -> some View {
    return appendStyle(CssPropTransformOrigin(x, y))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>, _ z: Value<CSSZAxis>) -> some View {
    return appendStyle(CssPropTransformOrigin(x, y, z))
  }

  public func cssTransformStyle(_ value: Value<CssPropTransformStyle>) -> some View {
    return appendStyle(CssPropTransformStyle(value))
  }

  public func cssTransform(_ value: Value<CssPropTransform>) -> some View {
    return appendStyle(CssPropTransform(value))
  }

  public func cssTransform(_ function: (Value<CssPropTransform>, Bool), _ moreFunctions: (Value<CssPropTransform>, Bool) ...) -> some View {
    return appendStyle(CssPropTransform([function] + moreFunctions))
  }

  public func cssTransform(_ functions: Array<(Value<CssPropTransform>, Bool)>) -> some View {
    return appendStyle(CssPropTransform(functions))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transition
extension View {
  public func cssTransition(_ value: Value<CssPropTransition>) -> some View {
    return appendStyle(CssPropTransition(value))
  }

  public func cssTransition(
    property: Value<CssPropTransitionProperty> = .default,
    duration: Value<CssPropTransitionDuration> = .default,
    timingFunction: Value<CssPropTransitionTimingFunction> = .default,
    delay: Value<CssPropTransitionDelay> = .default
  ) -> some View {
    return appendStyle(
      CssPropTransition(
        property: property,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay
      )
    )
  }

  public func cssTransitionDelay(_ value: Value<CssPropTransitionDelay>) -> some View {
    return appendStyle(CssPropTransitionDelay(value))
  }

  public func cssTransitionDuration(_ value: Value<CssPropTransitionDuration>) -> some View {
    return appendStyle(CssPropTransitionDuration(value))
  }

  public func cssTransitionProperty(_ value: Value<CssPropTransitionProperty>) -> some View {
    return appendStyle(CssPropTransitionProperty(value))
  }

  public func cssTransitionTimingFunction(_ value: Value<CssPropTransitionTimingFunction>) -> some View {
    return appendStyle(CssPropTransitionTimingFunction(value))
  }

  public func cssTransitionTimingFunction(steps count: Int, at point: TransitionTimingFunctionPoint = .end) -> some View {
    return appendStyle(CssPropTransitionTimingFunction(.steps(count, at: point)))
  }

  public func cssTransitionTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> some View {
    return appendStyle(CssPropTransitionTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: VisualFormatting
extension View {
  public func cssDisplay(_ value: Value<CssPropDisplay>) -> some View {
    return appendStyle(CssPropDisplay(value))
  }

  public func cssPosition(_ value: Value<CssPropPosition>) -> some View {
    return appendStyle(CssPropPosition(value))
  }

  public func cssTop(_ value: Value<CssPropTop>) -> some View {
    return appendStyle(CssPropTop(value))
  }

  public func cssRight(_ value: Value<CssPropRight>) -> some View {
    return appendStyle(CssPropRight(value))
  }

  public func cssBottom(_ value: Value<CssPropBottom>) -> some View {
    return appendStyle(CssPropBottom(value))
  }

  public func cssLeft(_ value: Value<CssPropLeft>) -> some View {
    return appendStyle(CssPropLeft(value))
  }

  public func cssFloat(_ value: Value<CssPropFloat>) -> some View {
    return appendStyle(CssPropFloat(value))
  }

  public func cssClear(_ value: Value<CssPropClear>) -> some View {
    return appendStyle(CssPropClear(value))
  }

  public func cssZIndex(_ value: Value<CssPropZIndex>) -> some View {
    return appendStyle(CssPropZIndex(value))
  }

  public func cssOverflow(_ value: Value<CssPropOverflow>) -> some View {
    return appendStyle(CssPropOverflow(value))
  }

  public func cssOverflowX(_ value: Value<CssPropOverflowX>) -> some View {
    return appendStyle(CssPropOverflowX(value))
  }

  public func cssOverflowY(_ value: Value<CssPropOverflowY>) -> some View {
    return appendStyle(CssPropOverflowY(value))
  }

  public func cssClipPath(_ value: String) -> some View {
    return appendStyle(CssPropClipPath(value))
  }

  public func cssVisibility(_ value: Value<CssPropVisibility>) -> some View {
    return appendStyle(CssPropVisibility(value))
  }

  public func cssBoxDecorationBreak(_ value: Value<CssPropBoxDecorationBreak>) -> some View {
    return appendStyle(CssPropBoxDecorationBreak(value))
  }

  public func cssBoxShadow(_ value: Value<CssPropBoxShadow>) -> some View {
    return appendStyle(CssPropBoxShadow(value))
  }

  public func cssBoxShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Optional<Value<CSSLength>> = nil,
    _ spreadRadius: Optional<Value<CSSLength>> = nil,
    _ color: Value<CSSColor> = .black
  ) -> some View {
    return appendStyle(CssPropBoxShadow(hShadow, vShadow, blurRadius, spreadRadius, color))
  }

  public func cssBoxSizing(_ value: Value<CssPropBoxSizing>) -> some View {
    return appendStyle(CssPropBoxSizing(value))
  }

  public func cssCaretColor(_ value: Value<CssPropCaretColor>) -> some View {
    return appendStyle(CssPropCaretColor(value))
  }

  public func cssCursor(_ value: Value<CssPropCursor>) -> some View {
    return appendStyle(CssPropCursor(value))
  }
}