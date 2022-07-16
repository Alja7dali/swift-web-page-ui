/// A view that arranges its children in a horizontal line.
///
/// Unlike ``LazyHStack``, which only renders the views when your app needs to
/// display them onscreen, an `HStack` renders the views all at once, regardless
/// of whether they are on- or offscreen. Use the regular `HStack` when you have
/// a small number of child views or don't want the delayed rendering behavior
/// of the "lazy" version.
///
/// The following example shows a simple horizontal stack of five text views:
///
///     var body: some View {
///         HStack(
///             alignment: .top,
///             spacing: 10
///         ) {
///             ForEach(
///                 1...5,
///                 id: \.self
///             ) {
///                 Text("Item \($0)")
///             }
///         }
///     }
///
// FIXME: iterate over all content and horizontally padding them using `spacing`
public struct HStack<Content: View>: View {
  private let alignment: VerticalAlignment
  private let spacing: Float
  private let makeContent: () -> Content

  /// Creates a horizontal stack with the given spacing and vertical alignment.
  ///
  /// - Parameters:
  ///   - alignment: The guide for aligning the subviews in this stack. This
  ///     guide has the same vertical screen coordinate for every child view.
  ///   - spacing: The distance between adjacent subviews, or `nil` if you
  ///     want the stack to choose a default distance for each pair of
  ///     subviews.
  ///   - content: A view builder that creates the content of this stack.
  public init(
    alignment: VerticalAlignment = .center,
    spacing: Float = 16,
    @ViewBuilder content: @escaping () -> Content
  ) {
    self.alignment = alignment
    self.spacing = spacing
    self.makeContent = content
  }

  public var body: some View {
    HtmlDiv {
      AnyView(erasing: makeContent())
    }
      .cssDisplay(.flex)
      .cssFlexDirection(.row)
      .cssAlignItems(alignment.alignItems())
      .cssJustifyContent(.center)
      .cssWidth(100%)
  }
}