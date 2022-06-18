public struct VStack<Content: View>: View {
  public let alignment: HorizontalAlignment
  public let spacing: Length
  public let content: Content

  public init(
    alignment: HorizontalAlignment = .center,
    spacing: Length = 16,
    @ViewBuilder content: () -> Content
  ) {
    #warning("VStack(alignment:spacing:content:) is a experimental feature. It may change in the future.")
    self.alignment = alignment
    // IMPLEMENT_ME: iterate over all content and vertically padding them using `spacing`
    self.spacing = spacing
    self.content = content()
  }

  public var body: some View {
    Div(content)
      .display(.flex)
      .flexDirection(.column)
      .alignItems(alignment.alignItems())
      .justifyContent(.center)
      .height(100%)
  }
}
