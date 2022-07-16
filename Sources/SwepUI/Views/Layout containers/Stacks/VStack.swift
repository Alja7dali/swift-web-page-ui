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
// FIXME: iterate over all content and vertically padding them using `spacing`
public struct VStack<Content: View>: View {
  private let alignment: HorizontalAlignment
  private let spacing: Float
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
      .cssFlexDirection(.column)
      .cssAlignItems(alignment.alignItems())
      .cssJustifyContent(.center)
      .cssHeight(100%)
  }
}