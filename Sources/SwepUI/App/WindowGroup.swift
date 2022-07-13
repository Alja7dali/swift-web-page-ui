/// A scene that presents a group of identically structured windows.
///
/// Use a `WindowGroup` as a container for a view hierarchy presented by your
/// app. The hierarchy that you declare as the group's content serves as a
/// template for each window that the app creates from that group:
///
///     @main
///     struct Mail: App {
///         var body: some Scene {
///             WindowGroup {
///                 MailViewer() // Declare a view hierarchy here.
///             }
///         }
///     }
///
/// SwepUI takes care of certain platform-specific behaviors. For example,
/// on platforms that support it, like macOS and iPadOS, users can open more
/// than one window from the group simultaneously. In macOS, users
/// can gather open windows together in a tabbed interface. Also in macOS,
/// window groups automatically provide commands for standard window
/// management.
///
/// Every window created from the group maintains independent state. For
/// example, for each new window created from the group the system allocates new
/// storage for any ``State`` or ``StateObject`` variables instantiated by the
/// scene's view hierarchy.
///
/// You typically use a window group for the main interface of an app that isn't
/// document-based. For document-based apps, use a ``DocumentGroup`` instead.
public struct WindowGroup<Content: View>: Scene {
  /// The type of scene that represents the body of this scene.
  ///
  /// When you create a custom scene, Swift infers this type from your
  /// implementation of the required ``SwepUI/Scene/body-swift.property``
  /// property.
  public typealias Body = Never

  private let title: String

  private let content: Content

  // /// Creates a window group with an identifier.
  // ///
  // /// The window group uses the given view as a
  // /// template to form the content of each window in the group.
  // ///
  // /// - Parameters:
  // ///   - id: A string that uniquely identifies the window group. Identifiers
  // ///     must be unique among the window groups in your app.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init(id: String, @ViewBuilder content: () -> Content)

  // /// Creates a window group with a localized title and an identifier.
  // ///
  // /// The window group uses the given view as a template to form the content
  // /// of each window in the group.
  // /// The system uses the title to distinguish the window group in the user
  // /// interface, such as in the name of commands associated with the group.
  // /// The system ignores any text styling in the title.
  // ///
  // /// - Parameters:
  // ///   - title: The ``Text`` view to use for the group's title.
  // ///   - id: A string that uniquely identifies the window group. Identifiers
  // ///     must be unique among the window groups in your app.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init(_ title: Text, id: String, @ViewBuilder content: () -> Content)

  // /// Creates a window group with a key for localized title string and an
  // /// identifier.
  // ///
  // /// The window group uses the given view as a template to form the content
  // /// of each window in the group.
  // /// The system uses the title to distinguish the window group in the user
  // /// interface, such as in the name of commands associated with the group.
  // ///
  // /// - Parameters:
  // ///   - titleKey: The title key to use for the title of the group.
  // ///   - id: A string that uniquely identifies the window group. Identifiers
  // ///     must be unique among the window groups in your app.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init(_ titleKey: LocalizedStringKey, id: String, @ViewBuilder content: () -> Content)

  // /// Creates a window group with a title string and an identifier.
  // ///
  // /// The window group uses the given view as a template to form the content
  // /// of each window in the group.
  // /// The system uses the title to distinguish the window group in the user
  // /// interface, such as in the name of commands associated with the group.
  // ///
  // /// - Parameters:
  // ///   - title: The string to use for the title of the group.
  // ///   - id: A string that uniquely identifies the window group. Identifiers
  // ///     must be unique among the window groups in your app.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init<S>(_ title: S, id: String, @ViewBuilder content: () -> Content) where S: StringProtocol

  /// Creates a window group.
  ///
  /// The window group using the given view as a template to form the
  /// content of each window in the group.
  ///
  /// - Parameter content: A closure that creates the content for each
  ///   instance of the group.
  public init(@ViewBuilder content: () -> Content) {
    self.title = "SwepUI App"
    self.content = content()
  }

  // /// Creates a window group with a localized title.
  // ///
  // /// The window group uses the given view as a
  // /// template to form the content of each window in the group.
  // /// The system uses the title to distinguish the window group in the user
  // /// interface, such as in the name of commands associated with the group.
  // /// The system ignores any text styling in the title.
  // ///
  // /// - Parameters:
  // ///   - title: The ``Text`` view to use for the group's title.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init(_ title: Text, @ViewBuilder content: () -> Content)

  // /// Creates a window group with a key for localized title string.
  // ///
  // /// The window group uses the given view as a template to form the content
  // /// of each window in the group.
  // /// The system uses the title to distinguish the window group in the user
  // /// interface, such as in the name of commands associated with the group.
  // ///
  // /// - Parameters:
  // ///   - titleKey: The title key to use for the group's title.
  // ///   - content: A closure that creates the content for each instance
  // ///     of the group.
  // public init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)

  /// Creates a window group with a title string.
  ///
  /// The window group uses the given view as a template to form the content
  /// of each window in the group.
  /// The system uses the title to distinguish the window group in the user
  /// interface, such as in the name of commands associated with the group.
  ///
  /// - Parameters:
  ///   - title: The string to use for the title of the group.
  ///   - content: A closure that creates the content for each instance
  ///     of the group.
  public init<S>(_ title: S, @ViewBuilder content: () -> Content) where S: StringProtocol {
    self.title = title.description
    self.content = content()
  }

  // /// The content and behavior of the scene.
  // ///
  // /// For any scene that you create, provide a computed `body` property that
  // /// defines the scene as a composition of other scenes. You can assemble a
  // /// scene from built-in scenes that SwepUI provides, as well as other
  // /// scenes that you've defined.
  // ///
  // /// Swift infers the scene's ``SwepUI/Scene/Body-swift.associatedtype``
  // /// associated type based on the contents of the `body` property.
  public var body: Self.Body {
    return fatalError("\(Self.self).body should never be called.")
  }

  public func build(into builder: inout Builder) {
    content.build(into: &builder)
  }
}