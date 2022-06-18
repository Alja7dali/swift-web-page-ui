public struct HStack<Content: View>: View {
  public let alignment: VerticalAlignment
  public let spacing: Length
  public let content: Content

  public init(
    alignment: VerticalAlignment = .center,
    spacing: Length = 16,
    @ViewBuilder content: () -> Content
  ) {
    #warning("HStack(alignment:spacing:content:) is a experimental feature. It may change in the future.")
    self.alignment = alignment
    // IMPLEMENT_ME: iterate over all content and horizontally padding them using `spacing`
    self.spacing = spacing
    self.content = content()
  }

  public var body: some View {
    Div(content)
      .display(.flex)
      .flexDirection(.row)
      .alignItems(alignment.alignItems())
      .justifyContent(.center)
      .width(100%)
  }
}