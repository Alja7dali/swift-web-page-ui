public struct CssPropertyModifier<Content: View>: ViewModifier {
  public typealias Body = Never

  private let properties: Array<AnyProperty>

  fileprivate init(_ properties: Array<AnyProperty>) {
    self.properties = properties
  }

  public func build(into builder: inout Builder) {
    builder.combine(last: Attribute(key: "style", value: properties.map { "\($0.key):\($0.value);" }.joined(separator: "")))
  }
}

extension View {
  fileprivate func cssProperty<P: Property>(_ property: P) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return self.modifier(CssPropertyModifier<Self>(property.toArrayOfAnyProperty()))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Animation
extension View {
  public func cssAnimation(_ value: Value<CssPropAnimation>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimation(value))
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
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
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

  public func cssAnimationDelay(_ value: Value<CssPropAnimationDelay>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationDelay(value))
  }

  public func cssAnimationDirection(_ value: Value<CssPropAnimationDirection>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationDirection(value))
  }

  public func cssAnimationDuration(_ value: Value<CssPropAnimationDuration>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationDuration(value))
  }

  public func cssAnimationFillMode(_ value: Value<CssPropAnimationFillMode>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationFillMode(value))
  }

  public func cssAnimationIterationCount(_ value: Value<CssPropAnimationIterationCount>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationIterationCount(value))
  }

  public func cssAnimationName(_ value: Value<CssPropAnimationName>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationName(value))
  }

  public func cssAnimationPlayState(_ value: Value<CssPropAnimationPlayState>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationPlayState(value))
  }

  public func cssAnimationTimingFunction(_ value: Value<CssPropAnimationTimingFunction>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationTimingFunction(value))
  }

  public func cssAnimationTimingFunction(steps count: Int, at point: AnimationTimingFunctionPoint = .end) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationTimingFunction(.steps(count, at: point)))
  }

  public func cssAnimationTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAnimationTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Background
extension View {
  public func cssBackground(_ value: Value<CssPropBackground>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackground(value))
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
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
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

  public func cssBackgroundAttachment(_ value: Value<CssPropBackgroundAttachment>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundAttachment(value))
  }

  public func cssBackgroundBlendMode(_ value: Value<CssPropBackgroundBlendMode>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundBlendMode(value))
  }

  public func cssBackgroundClip(_ value: Value<CssPropBackgroundClip>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundClip(value))
  }

  public func cssBackgroundColor(_ value: Value<CssPropBackgroundColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundColor(value))
  }

  public func cssBackgroundImage(_ value: Value<CssPropBackgroundImage>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundImage(value))
  }

  public func cssBackgroundOrigin(_ value: Value<CssPropBackgroundOrigin>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundOrigin(value))
  }

  public func cssBackgroundPosition(_ value: Value<CssPropBackgroundPosition>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundPosition(value))
  }

  public func cssBackgroundPosition(_ x: Value<CSSLength>, _ y: Value<CSSLength> = .auto) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundPosition(x, y))
  }

  public func cssBackgroundPosition(_ horizontal: Value<CSSSide>, _ vertical: Value<CSSSide> = .center) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundPosition(horizontal, vertical))
  }

  public func cssBackgroundRepeat(
    _ value: Value<CssPropBackgroundRepeat>,
    _ moreValues: Value<CssPropBackgroundRepeat> ...
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundRepeat([value] + moreValues))
  }

  public func cssBackgroundSize(_ value: Value<CssPropBackgroundSize>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundSize(value))
  }

  public func cssBackgroundSize(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackgroundSize(width, height))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssBorder(_ value: Value<CssPropBorder>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorder(value))
  }

  public func cssBorder(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorder(width: width, style: style, color: color))
  }

  public func cssBorderBottom(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottom(width: width, style: style, color: color))
  }

  public func cssBorderBottomColor(_ value: Value<CssPropBorderBottomColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottomColor(value))
  }

  public func cssBorderBottomLeftRadius(_ value: Value<CssPropBorderBottomLeftRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottomLeftRadius(value))
  }

  public func cssBorderBottomRightRadius(_ value: Value<CssPropBorderBottomRightRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottomRightRadius(value))
  }

  public func cssBorderBottomStyle(_ value: Value<CssPropBorderBottomStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottomStyle(value))
  }

  public func cssBorderBottomWidth(_ value: Value<CssPropBorderBottomWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderBottomWidth(value))
  }

  public func cssBorderCollapse(_ value: Value<CssPropBorderCollapse>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderCollapse(value))
  }

  public func cssBorderColor(_ value: Value<CssPropBorderColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderColor(value))
  }

  public func cssBorderColor(_ topBottom: Value<CSSColor>, _ leftRight: Value<CSSColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderColor(topBottom, leftRight))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ leftRight: Value<CSSColor>, _ bottom: Value<CSSColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderColor(top, leftRight, bottom))
  }

  public func cssBorderColor(_ top: Value<CSSColor>, _ right: Value<CSSColor>, _ bottom: Value<CSSColor>, _ left: Value<CSSColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderColor(top, right, bottom, left))
  }

  public func cssBorderImage(
    source: Value<CssPropBorderImageSource> = .default,
    slice: Value<CssPropBorderImageSlice> = .default,
    width: Value<CssPropBorderImageWidth> = .default,
    outset: Value<CssPropBorderImageOutset> = .default,
    `repeat`: Value<CssPropBorderImageRepeat> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
      CssPropBorderImage(
        source: source,
        slice: slice,
        width: width,
        outset: outset,
        repeat: `repeat`
      )
    )
  }

  public func cssBorderImageOutset(_ value: Value<CssPropBorderImageOutset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageOutset(value))
  }

  public func cssBorderImageOutset(_ topBottom: Value<CssPropBorderImageOutset>, _ leftRight: Value<CssPropBorderImageOutset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageOutset(topBottom, leftRight))
  }

  public func cssBorderImageOutset(_ top: Value<CssPropBorderImageOutset>, _ leftRight: Value<CssPropBorderImageOutset>, _ bottom: Value<CssPropBorderImageOutset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageOutset(top, leftRight, bottom))
  }

  public func cssBorderImageOutset(_ top: Value<CssPropBorderImageOutset>, _ right: Value<CssPropBorderImageOutset>, _ bottom: Value<CssPropBorderImageOutset>, _ left: Value<CssPropBorderImageOutset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageOutset(top, right, bottom, left))
  }

  public func cssBorderImageRepeat(_ value: Value<CssPropBorderImageRepeat>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageRepeat(value))
  }

  public func cssBorderImageSlice(_ value: Value<CssPropBorderImageSlice>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageSlice(value))
  }

  public func cssBorderImageSlice(_ topBottom: Value<CssPropBorderImageSlice>, _ leftRight: Value<CssPropBorderImageSlice>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageSlice(topBottom, leftRight))
  }

  public func cssBorderImageSlice(_ top: Value<CssPropBorderImageSlice>, _ leftRight: Value<CssPropBorderImageSlice>, _ bottom: Value<CssPropBorderImageSlice>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageSlice(top, leftRight, bottom))
  }

  public func cssBorderImageSlice(_ top: Value<CssPropBorderImageSlice>, _ right: Value<CssPropBorderImageSlice>, _ bottom: Value<CssPropBorderImageSlice>, _ left: Value<CssPropBorderImageSlice>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageSlice(top, right, bottom, left))
  }

  public func cssBorderImageSource(_ value: Value<CssPropBorderImageSource>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageSource(value))
  }

  public func cssBorderImageWidth(_ value: Value<CssPropBorderImageWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageWidth(value))
  }

  public func cssBorderImageWidth(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageWidth(topBottom, leftRight))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageWidth(top, leftRight, bottom))
  }

  public func cssBorderImageWidth(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderImageWidth(top, right, bottom, left))
  }

  public func cssBorderLeft(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderLeft(width: width, style: style, color: color))
  }

  public func cssBorderLeftColor(_ value: Value<CssPropBorderLeftColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderLeftColor(value))
  }

  public func cssBorderLeftStyle(_ value: Value<CssPropBorderLeftStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderLeftStyle(value))
  }

  public func cssBorderLeftWidth(_ value: Value<CssPropBorderLeftWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderLeftWidth(value))
  }

  public func cssBorderRadius(_ value: Value<CssPropBorderRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRadius(value))
  }

  public func cssBorderRadius(_ topBottom: Value<CssPropBorderRadius>, _ leftRight: Value<CssPropBorderRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRadius(topBottom, leftRight))
  }

  public func cssBorderRadius(_ top: Value<CssPropBorderRadius>, _ leftRight: Value<CssPropBorderRadius>, _ bottom: Value<CssPropBorderRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRadius(top, leftRight, bottom))
  }

  public func cssBorderRadius(_ top: Value<CssPropBorderRadius>, _ right: Value<CssPropBorderRadius>, _ bottom: Value<CssPropBorderRadius>, _ left: Value<CssPropBorderRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRadius(top, right, bottom, left))
  }

  public func cssBorderRight(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRight(width: width, style: style, color: color))
  }

  public func cssBorderRightColor(_ value: Value<CssPropBorderRightColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRightColor(value))
  }

  public func cssBorderRightStyle(_ value: Value<CssPropBorderRightStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRightStyle(value))
  }

  public func cssBorderRightWidth(_ value: Value<CssPropBorderRightWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderRightWidth(value))
  }

  public func cssBorderSpacing(_ value: Value<CssPropBorderSpacing>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderSpacing(value))
  }

  public func cssBorderSpacing(_ horizontal: Value<CSSLength>, _ vertical: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderSpacing(horizontal, vertical))
  }

  public func cssBorderStyle(_ value: Value<CssPropBorderStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderStyle(value))
  }

  public func cssBorderStyle(_ topBottom: Value<CssPropBorderStyle>, _ leftRight: Value<CssPropBorderStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderStyle(topBottom, leftRight))
  }

  public func cssBorderStyle(_ top: Value<CssPropBorderStyle>, _ leftRight: Value<CssPropBorderStyle>, _ bottom: Value<CssPropBorderStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderStyle(top, leftRight, bottom))
  }

  public func cssBorderStyle(_ top: Value<CssPropBorderStyle>, _ right: Value<CssPropBorderStyle>, _ bottom: Value<CssPropBorderStyle>, _ left: Value<CssPropBorderStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderStyle(top, right, bottom, left))
  }

  public func cssBorderTop(
    width: Value<CssPropBorderWidth> = .medium,
    style: Value<CssPropBorderStyle> = .none,
    color: Value<CssPropBorderColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTop(width: width, style: style, color: color))
  }

  public func cssBorderTopColor(_ value: Value<CssPropBorderTopColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTopColor(value))
  }

  public func cssBorderTopLeftRadius(_ value: Value<CssPropBorderTopLeftRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTopLeftRadius(value))
  }

  public func cssBorderTopRightRadius(_ value: Value<CssPropBorderTopRightRadius>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTopRightRadius(value))
  }

  public func cssBorderTopStyle(_ value: Value<CssPropBorderTopStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTopStyle(value))
  }

  public func cssBorderTopWidth(_ value: Value<CssPropBorderTopWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderTopWidth(value))
  }

  public func cssBorderWidth(_ value: Value<CssPropBorderWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderWidth(value))
  }

  public func cssBorderWidth(_ topBottom: Value<CssPropBorderWidth>, _ leftRight: Value<CssPropBorderWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderWidth(topBottom, leftRight))
  }

  public func cssBorderWidth(_ top: Value<CssPropBorderWidth>, _ leftRight: Value<CssPropBorderWidth>, _ bottom: Value<CssPropBorderWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderWidth(top, leftRight, bottom))
  }

  public func cssBorderWidth(_ top: Value<CssPropBorderWidth>, _ right: Value<CssPropBorderWidth>, _ bottom: Value<CssPropBorderWidth>, _ left: Value<CssPropBorderWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBorderWidth(top, right, bottom, left))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Color
extension View {
  public func cssColor(_ value: Value<CssPropColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColor(value))
  }

  public func cssOpacity(_ value: Value<CssPropOpacity>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOpacity(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Dimension
extension View {
  public func cssHeight(_ value: Value<CssPropHeight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropHeight(value))
  }

  public func cssMinHeight(_ value: Value<CssPropMinHeight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMinHeight(value))
  }

  public func cssMaxHeight(_ value: Value<CssPropMaxHeight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMaxHeight(value))
  }

  public func cssWidth(_ value: Value<CssPropWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropWidth(value))
  }

  public func cssMinWidth(_ value: Value<CssPropMinWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMinWidth(value))
  }

  public func cssMaxWidth(_ value: Value<CssPropMaxWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMaxWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: FlexibleBox
extension View {
  public func cssAlignContent(_ value: Value<CssPropAlignContent>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAlignContent(value))
  }

  public func cssAlignItems(_ value: Value<CssPropAlignItems>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAlignItems(value))
  }

  public func cssAlignSelf(_ value: Value<CssPropAlignSelf>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropAlignSelf(value))
  }

  public func cssFlex(_ value: Value<CssPropFlex>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlex(value))
  }

  public func cssFlex(
    grow: Value<CssPropFlexGrow> = .default,
    shrink: Value<CssPropFlexShrink> = .default,
    basis: Value<CssPropFlexBasis> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlex(grow: grow, shrink: shrink, basis: basis))
  }

  public func cssFlexBasis(_ value: Value<CssPropFlexBasis>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexBasis(value))
  }

  public func cssFlexDirection(_ value: Value<CssPropFlexDirection>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexDirection(value))
  }

  public func cssFlexFlow(_ value: Value<CssPropFlexFlow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexFlow(value))
  }

  public func cssFlexFlow(
    direction: Value<CssPropFlexDirection> = .default,
    wrap: Value<CssPropFlexWrap> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexFlow(direction: direction, wrap: wrap))
  }

  public func cssFlexGrow(_ value: Value<CssPropFlexGrow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexGrow(value))
  }

  public func cssFlexShrink(_ value: Value<CssPropFlexShrink>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexShrink(value))
  }

  public func cssFlexWrap(_ value: Value<CssPropFlexWrap>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFlexWrap(value))
  }

  public func cssJustifyContent(_ value: Value<CssPropJustifyContent>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropJustifyContent(value))
  }

  public func cssOrder(_ value: Value<CssPropOrder>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOrder(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Font
extension View {
  public func cssFont(_ value: Value<CssPropFont>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFont(value))
  }

  public func cssFont(
    style: Value<CssPropFontStyle> = .default,
    variant: Value<CssPropFontVariant> = .default,
    weight: Value<CssPropFontWeight> = .default,
    size: Value<CssPropFontSize>,
    family: Value<CssPropFontFamily>
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
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
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
      CssPropFont(
        style: style,
        variant: variant,
        weight: weight,
        lineHeight: lineHeight,
        family: family
      )
    )
  }

  public func cssFontFamily(_ value: Value<CssPropFontFamily>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontFamily(value))
  }

  public func cssFontFeatureSettings(_ value: String) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontFeatureSettings(value))
  }

  public func cssFontKerning(_ value: Value<CssPropFontKerning>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontKerning(value))
  }

  public func cssFontSize(_ value: Value<CssPropFontSize>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontSize(value))
  }

  public func cssFontSizeAdjust(_ value: Value<CssPropFontSizeAdjust>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontSizeAdjust(value))
  }

  public func cssFontStretch(_ value: Value<CssPropFontStretch>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontStretch(value))
  }

  public func cssFontStyle(_ value: Value<CssPropFontStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontStyle(value))
  }

  public func cssFontVariant(_ value: Value<CssPropFontVariant>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontVariant(value))
  }

  public func cssFontVariantCaps(_ value: Value<CssPropFontVariantCaps>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontVariantCaps(value))
  }

  public func cssFontWeight(_ value: Value<CssPropFontWeight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFontWeight(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: GeneratedContent
extension View {
  public func cssContent(_ value: Value<CssPropContent>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropContent(value))
  }

  public func cssQuotes(_ value: Value<CssPropQuotes>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropQuotes(value))
  }

  public func cssCounterReset(_ value: Value<CssPropCounterReset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropCounterReset(value))
  }

  public func cssCounterIncrement(_ value: Value<CssPropCounterIncrement>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropCounterIncrement(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: List

public protocol ContainsLi {}
extension ModifiedContent: ContainsLi where Content: ContainsLi {}
extension HtmlOl: ContainsLi {}
extension HtmlUl: ContainsLi {}

extension View where Self: ContainsLi {
  public func cssListStyle(_ value: Value<CssPropListStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropListStyle(value))
  }

  public func cssListStyle(
    type: Value<CssPropListStyleType> = .default,
    position: Value<CssPropListStylePosition> = .default,
    image: Value<CssPropListStyleImage> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropListStyle(type: type, position: position, image: image))
  }

  public func cssListStyleType(_ value: Value<CssPropListStyleType>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropListStyleType(value))
  }

  public func cssListStylePosition(_ value: Value<CssPropListStylePosition>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropListStylePosition(value))
  }

  public func cssListStyleImage(_ value: Value<CssPropListStyleImage>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropListStyleImage(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Margin
extension View {
  public func cssMargin(_ value: Value<CssPropMargin>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMargin(value))
  }

  public func cssMargin(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMargin(topBottom, leftRight))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMargin(top, leftRight, bottom))
  }

  public func cssMargin(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMargin(top, right, bottom, left))
  }

  public func cssMarginBottom(_ value: Value<CssPropMarginBottom>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMarginBottom(value))
  }

  public func cssMarginLeft(_ value: Value<CssPropMarginLeft>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMarginLeft(value))
  }

  public func cssMarginRight(_ value: Value<CssPropMarginRight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMarginRight(value))
  }

  public func cssMarginTop(_ value: Value<CssPropMarginTop>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropMarginTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: MultiColumn
extension View {
  public func cssColumnCount(_ value: Value<CssPropColumnCount>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnCount(value))
  }

  public func cssColumnFill(_ value: Value<CssPropColumnFill>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnFill(value))
  }

  public func cssColumnGap(_ value: Value<CssPropColumnGap>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnGap(value))
  }

  public func cssColumnRule(_ value: Value<CssPropColumnRule>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnRule(value))
  }

  public func cssColumnRule(
    width: Value<CssPropColumnRuleWidth> = .medium,
    style: Value<CssPropColumnRuleStyle> = .none,
    color: Value<CssPropColumnRuleColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnRule(width: width, style: style, color: color))
  }

  public func cssColumnRuleColor(_ value: Value<CssPropColumnRuleColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnRuleColor(value))
  }

  public func cssColumnRuleStyle(_ value: Value<CssPropColumnRuleStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnRuleStyle(value))
  }

  public func cssColumnRuleWidth(_ value: Value<CssPropColumnRuleWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnRuleWidth(value))
  }

  public func cssColumnSpan(_ value: Value<CssPropColumnSpan>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnSpan(value))
  }

  public func cssColumnWidth(_ value: Value<CssPropColumnWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumnWidth(value))
  }

  public func cssColumns(_ value: Value<CssPropColumns>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumns(value))
  }

  public func cssColumns(
    width: Value<CssPropColumnWidth> = .default,
    count: Value<CssPropColumnCount> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropColumns(width: width, count: count))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension View {
  public func cssOutline(_ value: Value<CssPropOutline>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutline(value))
  }

  public func cssOutline(
    width: Value<CssPropOutlineWidth> = .medium,
    style: Value<CssPropOutlineStyle> = .none,
    color: Value<CssPropOutlineColor> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutline(width: width, style: style, color: color))
  }

  public func cssOutlineColor(_ value: Value<CssPropOutlineColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutlineColor(value))
  }

  public func cssOutlineOffset(_ value: Value<CssPropOutlineOffset>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutlineOffset(value))
  }

  public func cssOutlineStyle(_ value: Value<CssPropOutlineStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutlineStyle(value))
  }

  public func cssOutlineWidth(_ value: Value<CssPropOutlineWidth>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOutlineWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Padding
extension View {
  public func cssPadding(_ value: Value<CssPropPadding>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPadding(value))
  }

  public func cssPadding(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPadding(topBottom, leftRight))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPadding(top, leftRight, bottom))
  }

  public func cssPadding(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPadding(top, right, bottom, left))
  }

  public func cssPaddingBottom(_ value: Value<CssPropPaddingBottom>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPaddingBottom(value))
  }

  public func cssPaddingLeft(_ value: Value<CssPropPaddingLeft>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPaddingLeft(value))
  }

  public func cssPaddingRight(_ value: Value<CssPropPaddingRight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPaddingRight(value))
  }

  public func cssPaddingTop(_ value: Value<CssPropPaddingTop>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPaddingTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Print
extension View {
  public func cssBreakAfter(_ value: Value<CssPropBreakAfter>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBreakAfter(value))
  }

  public func cssBreakBefore(_ value: Value<CssPropBreakBefore>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBreakBefore(value))
  }

  public func cssBreakInside(_ value: Value<CssPropBreakInside>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBreakInside(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Text
extension View {
  public func cssTextAlign(_ value: Value<CssPropTextAlign>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextAlign(value))
  }

  public func cssTextLastAlign(_ value: Value<CssPropTextAlignLast>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextAlignLast(value))
  }

  public func cssTextDecoration(_ value: Value<CssPropTextDecoration>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextDecoration(value))
  }

  public func cssTextDecoration(
    line: Value<CssPropTextDecorationLine> = .none,
    color: Value<CssPropTextDecorationColor> = .currentColor,
    style: Value<CssPropTextDecorationStyle> = .solid
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextDecoration(line: line, color: color, style: style))
  }

  public func cssTextDecorationColor(_ value: Value<CssPropTextDecorationColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextDecorationColor(value))
  }

  public func cssTextDecorationLine(
    _ value: Value<CssPropTextDecorationLine>,
    _ moreValues: Value<CssPropTextDecorationLine> ...
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextDecorationLine([value] + moreValues))
  }

  public func cssTextDecorationStyle(_ value: Value<CssPropTextDecorationStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextDecorationStyle(value))
  }

  public func cssTextIndent(_ value: Value<CssPropTextIndent>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextIndent(value))
  }

  public func cssTextJustify(_ value: Value<CssPropTextJustify>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextJustify(value))
  }

  public func cssTextOverflow(_ value: Value<CssPropTextOverflow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextOverflow(value))
  }

  public func cssTextShadow(_ value: Value<CssPropTextShadow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextShadow(value))
  }

  public func cssTextShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Value<CSSLength> = .px(0),
    _ color: Value<CSSColor>
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextShadow(hShadow, vShadow, blurRadius, color))
  }

  public func cssTextTransform(_ value: Value<CssPropTextTransform>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTextTransform(value))
  }

  public func cssLineHeight(_ value: Value<CssPropLineHeight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropLineHeight(value))
  }

  public func cssLetterSpacing(_ value: Value<CssPropLetterSpacing>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropLetterSpacing(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transform
extension View {
  public func cssBackfaceVisibility(_ value: Value<CssPropBackfaceVisibility>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBackfaceVisibility(value))
  }

  public func cssTransformOrigin(_ value: Value<CssPropTransformOrigin>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransformOrigin(value))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransformOrigin(x, y))
  }

  public func cssTransformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>, _ z: Value<CSSZAxis>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransformOrigin(x, y, z))
  }

  public func cssTransformStyle(_ value: Value<CssPropTransformStyle>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransformStyle(value))
  }

  public func cssTransform(_ value: Value<CssPropTransform>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransform(value))
  }

  public func cssTransform(_ function: (Value<CssPropTransform>, Bool), _ moreFunctions: (Value<CssPropTransform>, Bool) ...) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransform([function] + moreFunctions))
  }

  public func cssTransform(_ functions: Array<(Value<CssPropTransform>, Bool)>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransform(functions))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transition
extension View {
  public func cssTransition(_ value: Value<CssPropTransition>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransition(value))
  }

  public func cssTransition(
    property: Value<CssPropTransitionProperty> = .default,
    duration: Value<CssPropTransitionDuration> = .default,
    timingFunction: Value<CssPropTransitionTimingFunction> = .default,
    delay: Value<CssPropTransitionDelay> = .default
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(
      CssPropTransition(
        property: property,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay
      )
    )
  }

  public func cssTransitionDelay(_ value: Value<CssPropTransitionDelay>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionDelay(value))
  }

  public func cssTransitionDuration(_ value: Value<CssPropTransitionDuration>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionDuration(value))
  }

  public func cssTransitionProperty(_ value: Value<CssPropTransitionProperty>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionProperty(value))
  }

  public func cssTransitionTimingFunction(_ value: Value<CssPropTransitionTimingFunction>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionTimingFunction(value))
  }

  public func cssTransitionTimingFunction(steps count: Int, at point: TransitionTimingFunctionPoint = .end) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionTimingFunction(.steps(count, at: point)))
  }

  public func cssTransitionTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTransitionTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: VisualFormatting
extension View {
  public func cssDisplay(_ value: Value<CssPropDisplay>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropDisplay(value))
  }

  public func cssPosition(_ value: Value<CssPropPosition>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropPosition(value))
  }

  public func cssTop(_ value: Value<CssPropTop>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropTop(value))
  }

  public func cssRight(_ value: Value<CssPropRight>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropRight(value))
  }

  public func cssBottom(_ value: Value<CssPropBottom>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBottom(value))
  }

  public func cssLeft(_ value: Value<CssPropLeft>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropLeft(value))
  }

  public func cssFloat(_ value: Value<CssPropFloat>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropFloat(value))
  }

  public func cssClear(_ value: Value<CssPropClear>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropClear(value))
  }

  public func cssZIndex(_ value: Value<CssPropZIndex>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropZIndex(value))
  }

  public func cssOverflow(_ value: Value<CssPropOverflow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOverflow(value))
  }

  public func cssOverflowX(_ value: Value<CssPropOverflowX>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOverflowX(value))
  }

  public func cssOverflowY(_ value: Value<CssPropOverflowY>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropOverflowY(value))
  }

  public func cssClipPath(_ value: String) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropClipPath(value))
  }

  public func cssVisibility(_ value: Value<CssPropVisibility>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropVisibility(value))
  }

  public func cssBoxDecorationBreak(_ value: Value<CssPropBoxDecorationBreak>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBoxDecorationBreak(value))
  }

  public func cssBoxShadow(_ value: Value<CssPropBoxShadow>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBoxShadow(value))
  }

  public func cssBoxShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Optional<Value<CSSLength>> = nil,
    _ spreadRadius: Optional<Value<CSSLength>> = nil,
    _ color: Value<CSSColor> = .black
  ) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBoxShadow(hShadow, vShadow, blurRadius, spreadRadius, color))
  }

  public func cssBoxSizing(_ value: Value<CssPropBoxSizing>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropBoxSizing(value))
  }

  public func cssCaretColor(_ value: Value<CssPropCaretColor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropCaretColor(value))
  }

  public func cssCursor(_ value: Value<CssPropCursor>) -> ModifiedContent<Self, CssPropertyModifier<Self>> {
    return cssProperty(CssPropCursor(value))
  }
}