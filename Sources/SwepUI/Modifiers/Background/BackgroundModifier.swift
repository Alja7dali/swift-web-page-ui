public struct BackgroundModifier<Background: View, Content: View>: ViewModifier {
  private let background: Background

  public init(background: Background) {
    self.background = background
  }

  public func body(content: Content) -> some View {
    if let color = (background as? Color)?.cast(as: CssPropBackgroundColor.self) {
      return AnyView(
        erasing: content
          .cssBackgroundColor(color)
      )
    } else {
      // FIXME: needs ZStack
      // return AnyView(
      //   erasing: ZStack {
      //     background
      //     content
      //   }
      // )
      return AnyView(erasing: content)
    }
  }
}

extension View {
  public func background<Background: View>(_ background: Background) -> some View {
    return modifier(BackgroundModifier(background: background))
  }
}