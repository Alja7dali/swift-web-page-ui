/// A control that displays an editable text interface.
///
/// You create a text field with a label and a binding to a value. If the
/// value is a string, the text field updates this value continuously as the
/// user types or otherwise edits the text in the field. For non-string types,
/// it updates the value when the user commits their edits, such as by pressing
/// the Return key.
///
public struct TextField: View {

  private let text: Binding<String>
  private let label: String
  private let onCommit: Optional<() -> Void>

  private init(
    text: Binding<String>,
    label: String,
    onCommit: Optional<() -> Void>
  ) {
    self.text = text
    self.label = label
    self.onCommit = onCommit
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
  public var body: some View {
    return HtmlInput(type: .text)
      .htmlValue(text.wrappedValue)
      .htmlPlaceholder(label)
      .cssMinWidth(100%)
      .jsChange { _ in
        self.onCommit?()
      }
      .jsInput { events in
        self.text.wrappedValue = events.first?.target.value.string ?? ""
      }
  }
}

extension TextField {

  /// Creates a text field with a text label generated from a title string.
  ///
  /// Use the ``View/onSubmit(of:_:)`` modifier to invoke an action
  /// whenever the user submits this text field.
  ///
  /// - Parameters:
  ///   - title: The title of the text view, describing its purpose.
  ///   - text: The text to display and edit.
  public init<S>(_ title: S, text: Binding<String>) where S: StringProtocol {
    self.init(
      text: text,
      label: title.description,
      onCommit: nil
    )
  }

  /// Creates a text field with a empty label.
  ///
  /// Use the ``View/onSubmit(of:_:)`` modifier to invoke an action
  /// whenever the user submits this text field.
  ///
  /// - Parameters:
  ///   - text: The text to display and edit.
  public init(text: Binding<String>) {
    self.init(
      text: text,
      label: "",
      onCommit: nil
    )
  }

  /// Creates a text field with a text label generated from a title string.
  ///
  /// - Parameters:
  ///   - title: The title of the text view, describing its purpose.
  ///   - text: The text to display and edit.
  ///   - onCommit: An action to perform when the user performs an action
  ///     (for example, when the user presses the Return key) while the text
  ///     field has focus.
  public init<S>(_ title: S, text: Binding<String>, onCommit: @escaping () -> Void) where S: StringProtocol {
    self.init(
      text: text,
      label: title.description,
      onCommit: onCommit
    )
  }
}

// TODO: implement me
// /// A specification for the appearance and interaction of a text field.
// public protocol TextFieldStyle {
// }

// extension TextFieldStyle where Self == DefaultTextFieldStyle {

//   /// The default text field style, based on the text field's context.
//   ///
//   /// The default style represents the recommended style based on the
//   /// current platform and the text field's context within the view hierarchy.
//   public static var automatic: DefaultTextFieldStyle { get }
// }

// extension TextFieldStyle where Self == RoundedBorderTextFieldStyle {

//   /// A text field style with a system-defined rounded border.
//   public static var roundedBorder: RoundedBorderTextFieldStyle { get }
// }

// extension TextFieldStyle where Self == PlainTextFieldStyle {

//   /// A text field style with no decoration.
//   public static var plain: PlainTextFieldStyle { get }
// }