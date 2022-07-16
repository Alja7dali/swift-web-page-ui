public struct ForegroundColorModifier<Content: View>: ViewModifier {
  private let color: Color

  public init(color: Color) {
    self.color = color
  }

  public func body(content: Content) -> some View {
    return content
      .cssColor(color.cast(as: CssPropColor.self))
  }
}

extension View {
  public func foregroundColor(_ color: Color) -> some View {
    return modifier(ForegroundColorModifier(color: color))
  }
}