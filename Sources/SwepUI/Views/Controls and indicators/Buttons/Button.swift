/// A control that initiates an action.
///
/// You create a button by providing an action and a label. The action is either
/// a method or closure property that does something when a user clicks or taps
/// the button. The label is a view that describes the button's action --- for
/// example, by showing text, an icon, or both:
///
///     Button(action: signIn) {
///         Text("Sign In")
///     }
///
/// For the common case of text-only labels, you can use the convenience
/// initializer that takes a title string or ``LocalizedStringKey`` as its first
/// parameter, instead of a trailing closure:
///
///     Button("Sign In", action: signIn)
///
public struct Button<Label>: View where Label: View {

  private let action: () -> Void
  private let label: () -> Label

  /// Creates a button that displays a custom label.
  ///
  /// - Parameters:
  ///   - action: The action to perform when the user triggers the button.
  ///   - label: A view that describes the purpose of the button's `action`.
  public init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Label) {
    self.action = action
    self.label = label
  }

  /// The content and behavior of the view.
  ///
  /// When you implement a custom view, you must implement a computed
  /// `body` property to provide the content for your view. Return a view
  /// that's composed of built-in views that SwiftUI provides, plus other
  /// composite views that you've already defined:
  ///
  ///     struct MyView: View {
  ///         var body: some View {
  ///             Text("Hello, World!")
  ///         }
  ///     }
  ///
  /// FIXME: This will only render label as text, not as a styled label.
  ///        Reimplement button to be div, to be able to render styled label.
  public var body: some View {
    return HtmlButton { AnyView(erasing: label()) }
      .cssBorderRadius(.px(4))
      .jsClick { _ in
        action()
      }
  }
}

extension Button where Label == Text {

  /// Creates a button that generates its label from a string.
  ///
  /// This initializer creates a ``Text`` view on your behalf, and treats the
  /// title similar to ``Text/init(_:)-9d1g4``. See ``Text`` for more
  /// information about localizing strings.
  ///
  /// To initialize a button with a localized string key, use
  /// ``Button/init(_:action:)-1asy`` instead.
  ///
  /// - Parameters:
  ///   - title: A string that describes the purpose of the button's `action`.
  ///   - action: The action to perform when the user triggers the button.
  public init<S>(_ title: S, action: @escaping () -> Void) where S: StringProtocol {
    self.init(action: action, label: { Text(title.description) })
  }
}
