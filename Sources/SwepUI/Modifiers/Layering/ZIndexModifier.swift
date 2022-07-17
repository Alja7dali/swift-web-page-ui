public struct ZIndexModifier<Content: View>: ViewModifier {
  private let index: Value<CssPropZIndex>

  public init(index: Int) {
    self.index = Value(integerLiteral: index)
  }

  public func body(content: Content) -> some View {
    return content
      .cssZIndex(index)
  }
}

extension View {
  // Controls the display order of overlapping views.
  public func zIndex(_ index: Int) -> some View {
    return modifier(ZIndexModifier(index: index))
  }
}