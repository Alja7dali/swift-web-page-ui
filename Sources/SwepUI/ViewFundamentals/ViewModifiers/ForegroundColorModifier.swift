public struct ForegroundColorModifier: ViewModifier {
  public typealias Body = AnyView

  public let color: Color

  public init(color: Color) {
    self.color = color
  }

  public func body<Content: View>(content: Content) -> AnyView {
    return AnyView {
      Div(content)
        .color(color.cast(as: Swep.Color.self))
    }
  }
}

extension View {
  public func foregroundColor(_ color: Color) -> some View {
    #warning("foregroundColor(_:) is a experimental feature. It may change in the future.")
    return modifier(ForegroundColorModifier(color: color))
  }
}