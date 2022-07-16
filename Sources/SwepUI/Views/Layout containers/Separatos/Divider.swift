/// A visual element that can be used to separate other content.
///
/// When contained in a stack, the divider extends across the minor axis of the
/// stack, or horizontally when not in a stack.
public struct Divider: View {
  public init() {}
  
  public var body: some View {
    return HtmlHr()
      .cssMinWidth(100%)
  }
}