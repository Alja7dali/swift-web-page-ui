/// A view that overlays its children, aligning them in both axes.
///
/// The `ZStack` assigns each successive child view a higher z-axis value than
/// the one before it, meaning later children appear "on top" of earlier ones.
///
/// The following example creates a `ZStack` of 100 x 100 point ``Rectangle``
/// views filled with one of six colors, offsetting each successive child view
/// by 10 points so they don't completely overlap:
///
///     let colors: [Color] =
///         [.red, .orange, .yellow, .green, .blue, .purple]
///
///     var body: some View {
///         ZStack {
///             ForEach(0..<colors.count) {
///                 Rectangle()
///                     .fill(colors[$0])
///                     .frame(width: 100, height: 100)
///                     .offset(x: CGFloat($0) * 10.0,
///                             y: CGFloat($0) * 10.0)
///             }
///         }
///     }
///
/// The `ZStack` uses an ``Alignment`` to set the x- and y-axis coordinates of
/// each child, defaulting to a ``Alignment/center`` alignment. In the following
/// example, the `ZStack` uses a ``Alignment/bottomLeading`` alignment to lay
/// out two children, a red 100 x 50 point rectangle below, and a blue 50 x 100
/// point rectangle on top. Because of the alignment value, both rectangles
/// share a bottom-left corner with the `ZStack` (in locales where left is the
/// leading side).
///
///     var body: some View {
///         ZStack(alignment: .bottomLeading) {
///             Rectangle()
///                 .fill(Color.red)
///                 .frame(width: 100, height: 50)
///             Rectangle()
///                 .fill(Color.blue)
///                 .frame(width:50, height: 100)
///         }
///         .border(Color.green, width: 1)
///     }
///
public struct ZStack<Content: View>: View {
  public typealias Body = Never

  /// FIXME: use `Alignment`
  private let alignment: Alignment
  private let makeContent: () -> Content

  /// Creates an instance with the given alignment.
  ///
  /// - Parameters:
  ///   - alignment: The guide for aligning the subviews in this stack on both
  ///     the x- and y-axes.
  ///   - content: A view builder that creates the content of this stack.
  public init(alignment: Alignment = .center, @ViewBuilder content: @escaping () -> Content) {
    self.alignment = alignment
    self.makeContent = content
  }

  public func build(into builder: inout Builder) {
    HtmlDiv {
      AnyView(erasing: makeContent())
    }
      .cssDisplay(.flex)
      .cssAlignItems(.center)
      .cssJustifyContent(.center)
      .cssPosition(.relative)
      .cssWidth(100%)
      .cssHeight(100%)
      .build(into: &builder)
    
    let position = CssPropPosition(.absolute)
      .toArrayOfAnyProperty()
      .map { "\($0.key):\($0.value);" }.joined(separator: "")
    
    builder.mapLastChildren {
      $0.combine(all: Attribute(key: "style", value: position))
    }
  }
}