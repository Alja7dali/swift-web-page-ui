/// A value with a modifier applied to it.
public struct ModifiedContent<Content, Modifier>: View, ViewModifier where Modifier: ViewModifier, Modifier.Content == Content {

  /// The type of view representing the body of this view.
  ///
  /// When you create a custom view, Swift infers this type from your
  /// implementation of the required ``View/body-swift.property`` property.
  public typealias Body = Never

  /// The content that the modifier transforms into a new view or new
  /// view modifier.
  public let content: Content

  /// The view modifier.
  public let modifier: Modifier

  /// A structure that the defines the content and modifier needed to produce
  /// a new view or view modifier.
  ///
  /// If `content` is a ``View`` and `modifier` is a ``ViewModifier``, the
  /// result is a ``View``. If `content` and `modifier` are both view
  /// modifiers, then the result is a new ``ViewModifier`` combining them.
  ///
  /// - Parameters:
  ///     - content: The content that the modifier changes.
  ///     - modifier: The modifier to apply to the content.
  public init(content: Content, modifier: Modifier) {
    self.content = content
    self.modifier = modifier
  }

  public func build(into builder: inout Builder) {
    content.build(into: &builder)
    modifier.build(into: &builder)
  }
}

extension View {

  /// Applies a modifier to a view and returns a new view.
  ///
  /// Use this modifier to combine a ``View`` and a ``ViewModifier``, to
  /// create a new view. For example, if you create a view modifier for
  /// a new kind of caption with blue text surrounded by a rounded rectangle:
  ///
  ///     struct BorderedCaption: ViewModifier {
  ///         func body(content: Content) -> some View {
  ///             content
  ///                 .font(.caption2)
  ///                 .padding(10)
  ///                 .overlay(
  ///                     RoundedRectangle(cornerRadius: 15)
  ///                         .stroke(lineWidth: 1)
  ///                 )
  ///                 .foregroundColor(Color.blue)
  ///         }
  ///     }
  ///
  /// You can use ``modifier(_:)`` to extend ``View`` to create new modifier
  /// for applying the `BorderedCaption` defined above:
  ///
  ///     extension View {
  ///         func borderedCaption() -> some View {
  ///             modifier(BorderedCaption())
  ///         }
  ///     }
  ///
  /// Then you can apply the bordered caption to any view:
  ///
  ///     Image(systemName: "bus")
  ///         .resizable()
  ///         .frame(width:50, height:50)
  ///     Text("Downtown Bus")
  ///         .borderedCaption()
  ///
  /// - Parameter modifier: The modifier to apply to this view.
  public func modifier<M: ViewModifier>(_ modifier: M) -> ModifiedContent<Self, M> {
    return ModifiedContent(content: self, modifier: modifier)
  }
}