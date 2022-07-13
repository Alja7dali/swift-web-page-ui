/// A modifier that you apply to a view or another view modifier, producing a
/// different version of the original value.
///
/// Adopt the ``ViewModifier`` protocol when you want to create a reusable
/// modifier that you can apply to any view. The example below combines several
/// modifiers to create a new modifier that you can use to create blue caption
/// text surrounded by a rounded rectangle:
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
/// You can apply ``View/modifier(_:)`` directly to a view, but a more common
/// and idiomatic approach uses ``View/modifier(_:)`` to define an extension to
/// ``View`` itself that incorporates the view modifier:
///
///     extension View {
///         func borderedCaption() -> some View {
///             modifier(BorderedCaption())
///         }
///     }
///
/// You can then apply the bordered caption to any view, similar to this:
///
///     Image(systemName: "bus")
///         .resizable()
///         .frame(width:50, height:50)
///     Text("Downtown Bus")
///         .borderedCaption()
///
public protocol ViewModifier {

  /// The type of view representing the body.
  associatedtype Body: View

  /// The content view type passed to `body()`.
  associatedtype Content: View

  /// Gets the current body of the caller.
  ///
  /// `content` is a proxy for the view that will have the modifier
  /// represented by `Self` applied to it.
  func body(content: Self.Content) -> Self.Body

  /// The builder for the body of this view-modifier.
  ///
  /// When you implement a essential-view-modifier, you must implement a computed
  func build(into builder: inout Builder)
}

extension ViewModifier where Self.Body == Never {

  /// Gets the current body of the caller.
  ///
  /// `content` is a proxy for the view that will have the modifier
  /// represented by `Self` applied to it.
  public func body(content: Self.Content) -> Self.Body {
    return fatalError("\(Self.self).body(content: \(Self.Content.self)) should never be called")
  }
}

extension ViewModifier {
  // Default implementation does nothing.
  // Inherited essential-view-modifiers can override this to add their own behavior.
  public func build(into builder: inout Builder) {}
}