public struct OverlayModifier<Overlay: View, Content: View>: ViewModifier {
  private let overlay: Overlay
  private let alignment: Alignment

  public init(overlay: Overlay, alignment: Alignment) {
    self.overlay = overlay
    self.alignment = alignment
  }

  public func body(content: Content) -> some View {
    return ZStack(alignment: alignment) {
      content
      overlay
    }
  }
}

extension View {
  // Layers a secondary view in front of this view.
  public func overlay<Overlay: View>(_ overlay: Overlay, alignment: Alignment = .center) -> some View {
    return modifier(OverlayModifier(overlay: overlay, alignment: alignment))
  }
}