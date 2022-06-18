public struct BackgroundModifier<Background: View>: ViewModifier {
  public typealias Body = AnyView

  public let background: Background
  public let alignment: Alignment

  public init(
    background: Background,
    alignment: Alignment = .center
  ) {
    self.background = background
    self.alignment = alignment
  }

  public func body<Content: View>(content: Content) -> AnyView {
    if let color = (background as? Color)?.cast(as: Swep.BackgroundColor.self) {
      return AnyView {
        Div(content)
          .backgroundColor(color)
      }
    } else {
      return AnyView {
        Div(background)
          .display(.block)
        Div(content)
          .position(.relative)
      }
    }
  }
}

extension View {
  public func background<Background: View>(
    _ background: Background,
    alignment: Alignment = .center
  ) -> some View {
    #warning("background(_:alignment:) is a experimental feature. It may change in the future.")
    return modifier(BackgroundModifier(background: background, alignment: alignment))
  }
}