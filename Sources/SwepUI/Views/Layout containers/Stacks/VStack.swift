/// A view that arranges its children in a vertical line.
///
/// Unlike ``LazyVStack``, which only renders the views when your app needs to
/// display them onscreen, a `VStack` renders the views all at once, regardless
/// of whether they are on- or offscreen. Use the regular `VStack` when you have
/// a small number of child views or don't want the delayed rendering behavior
/// of the "lazy" version.
///
/// The following example shows a simple vertical stack of 10 text views:
///
///     var body: some View {
///         VStack(
///             alignment: .leading,
///             spacing: 10
///         ) {
///             ForEach(
///                 1...10,
///                 id: \.self
///             ) {
///                 Text("Item \($0)")
///             }
///         }
///     }
///
public struct VStack<Content: View>: View {
  public typealias Body = Never

  private let alignment: HorizontalAlignment
  private let spacing: Double
  private let makeContent: () -> Content

  /// Creates an instance with the given spacing and horizontal alignment.
  ///
  /// - Parameters:
  ///   - alignment: The guide for aligning the subviews in this stack. This
  ///     guide has the same vertical screen coordinate for every child view.
  ///   - spacing: The distance between adjacent subviews, or `nil` if you
  ///     want the stack to choose a default distance for each pair of
  ///     subviews.
  ///   - content: A view builder that creates the content of this stack.
  public init(
    alignment: HorizontalAlignment = .center,
    spacing: Double = 16,
    @ViewBuilder content: @escaping () -> Content
  ) {
    self.alignment = alignment
    self.spacing = spacing
    self.makeContent = content
  }

  public func build(into builder: inout Builder) {
    HtmlDiv {
      AnyView(erasing: makeContent())
    }
      .cssDisplay(.flex)
      .cssFlexDirection(.column)
      .cssAlignItems(alignment.alignItems())
      .cssJustifyContent(.center)
      .cssWidth(100%)
      .cssHeight(100%)
      .build(into: &builder)
    
    let margin = CssPropMargin(.px(spacing), .px(0))
      .toArrayOfAnyProperty()
      .map { "\($0.key):\($0.value);" }.joined(separator: "")
    
    builder.mapLastChildren {
      $0.combine(all: Attribute(key: "style", value: margin))
    }
  }
}