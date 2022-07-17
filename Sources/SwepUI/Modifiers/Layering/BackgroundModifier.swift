public struct BackgroundModifier<Background: View, Content: View>: ViewModifier {
  private let background: Background
  private let alignment: Alignment

  public init(background: Background, alignment: Alignment) {
    self.background = background
    self.alignment = alignment
  }

  public func body(content: Content) -> some View {
    if let color = (background as? Color)?.cast(as: CssPropBackgroundColor.self) {
      return AnyView(
        erasing: content
          .cssBackgroundColor(color)
      )
    } else {
      return AnyView(
        erasing: ZStack(alignment: alignment) {
          background
          content
        }
      )
    }
  }
}

extension View {
  // Layers the given view behind this view.
  public func background<Background: View>(_ background: Background, alignment: Alignment = .center) -> some View {
    return modifier(BackgroundModifier(background: background, alignment: alignment))
  }
}