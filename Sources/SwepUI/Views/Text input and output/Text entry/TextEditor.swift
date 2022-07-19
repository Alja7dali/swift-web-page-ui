/// A view that can display and edit long-form text.
///
/// A text editor view allows you to display and edit multiline, scrollable
/// text in your app's user interface. By default, the text editor view styles
/// the text using characteristics inherited from the environment, like
/// ``View/font(_:)``, ``View/foregroundColor(_:)``, and
/// ``View/multilineTextAlignment(_:)``.
///
public struct TextEditor: View {

  private let text: Binding<String>

  /// Creates a plain text editor.
  ///
  /// Use a ``TextEditor`` instance to create a view in which users can enter
  /// and edit long-form text.
  ///
  /// In this example, the text editor renders gray text using the 13
  /// point Helvetica Neue font with 5 points of spacing between each line:
  ///
  ///     struct TextEditingView: View {
  ///         @State private var fullText: String = "This is some editable text..."
  ///
  ///         var body: some View {
  ///             TextEditor(text: $fullText)
  ///                 .foregroundColor(Color.gray)
  ///                 .font(.custom("HelveticaNeue", size: 13))
  ///                 .lineSpacing(5)
  ///         }
  ///     }
  ///
  /// You can define the styling for the text within the view, including the
  /// text color, font, and line spacing. You define these styles by applying
  /// standard view modifiers to the view.
  ///
  /// The default text editor doesn't support rich text, such as styling of
  /// individual elements within the editor's view. The styles you set apply
  /// globally to all text in the view.
  ///
  /// - Parameter text: A ``Binding`` to the variable containing the
  ///    text to edit.
  public init(text: Binding<String>) {
    self.text = text
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
    return HtmlTextarea()
      .cssMinWidth(100%)
      .cssMaxWidth(100%)
      .cssMinHeight(.px(50))
      .cssMaxHeight(100%)
      .jsInput { events in
        self.text.wrappedValue = events.first?.target.value.string ?? ""
      }
  }
}
