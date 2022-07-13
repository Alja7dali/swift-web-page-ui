/// A part of an app's user interface with a life cycle managed by the
/// system.
///
/// You create an ``SwepUI/App`` by combining one or more instances
/// that conform to the `Scene` protocol in the app's
/// ``SwepUI/App/body-swift.property``. You can use the built-in scenes that
/// SwepUI provides, like ``SwepUI/WindowGroup``, along with custom scenes
/// that you compose from other scenes. To create a custom scene, declare a
/// type that conforms to the `Scene` protocol. Implement the required
/// ``SwepUI/Scene/body-swift.property`` computed property and provide the
/// content for your custom scene:
///
///     struct MyScene: Scene {
///         var body: some Scene {
///             WindowGroup {
///                 MyRootView()
///             }
///         }
///     }
///
/// A scene acts as a container for a view hierarchy that you want to display
/// to the user. The system decides when and how to present the view hierarchy
/// in the user interface in a way that's platform-appropriate and dependent
/// on the current state of the app. For example, for the window group shown
/// above, the system lets the user create or remove windows that contain
/// `MyRootView` on platforms like macOS and iPadOS. On other platforms, the
/// same view hierarchy might consume the entire display when active.
///
/// Read the ``SwepUI/EnvironmentValues/scenePhase`` environment
/// value from within a scene or one of its views to check whether a scene is
/// active or in some other state. You can create a property that contains the
/// scene phase, which is one of the values in the ``SwepUI/ScenePhase``
/// enumeration, using the ``SwepUI/Environment`` attribute:
///
///     struct MyScene: Scene {
///         @Environment(\.scenePhase) private var scenePhase
///
///         // ...
///     }
///
/// The `Scene` protocol provides scene modifiers, defined as protocol methods
/// with default implementations, that you use to configure a scene. For
/// example, you can use the ``SwepUI/Scene/onChange(of:perform:)`` modifier to
/// trigger an action when a value changes. The following code empties a cache
/// when all of the scenes in the window group have moved to the background:
///
///     struct MyScene: Scene {
///         @Environment(\.scenePhase) private var scenePhase
///         @StateObject private var cache = DataCache()
///
///         var body: some Scene {
///             WindowGroup {
///                 MyRootView()
///             }
///             .onChange(of: scenePhase) { newScenePhase in
///                 if newScenePhase == .background {
///                     cache.empty()
///                 }
///             }
///         }
///     }
public protocol Scene {
  /// The type of scene that represents the body of this scene.
  ///
  /// When you create a custom scene, Swift infers this type from your
  /// implementation of the required ``SwepUI/Scene/body-swift.property``
  /// property.
  associatedtype Body: Scene

  /// The content and behavior of the scene.
  ///
  /// For any scene that you create, provide a computed `body` property that
  /// defines the scene as a composition of other scenes. You can assemble a
  /// scene from built-in scenes that SwepUI provides, as well as other
  /// scenes that you've defined.
  ///
  /// Swift infers the scene's ``SwepUI/Scene/Body-swift.associatedtype``
  /// associated type based on the contents of the `body` property.
  @SceneBuilder var body: Self.Body { get }

  /// The builder for the body of this scene.
  func build(into builder: inout Builder)
}

extension Scene {
  /// Adds an action to perform when the given value changes.
  ///
  /// Use this modifier to trigger a side effect when a value changes, like
  /// the value associated with an ``SwepUI/Environment`` key or a
  /// ``SwepUI/Binding``. For example, you can clear a cache when you notice
  /// that a scene moves to the background:
  ///
  ///     struct MyScene: Scene {
  ///         @Environment(\.scenePhase) private var scenePhase
  ///         @StateObject private var cache = DataCache()
  ///
  ///         var body: some Scene {
  ///             WindowGroup {
  ///                 MyRootView()
  ///             }
  ///             .onChange(of: scenePhase) { newScenePhase in
  ///                 if newScenePhase == .background {
  ///                     cache.empty()
  ///                 }
  ///             }
  ///         }
  ///     }
  ///
  /// The system calls the `action` closure on the main thread, so avoid
  /// long-running tasks in the closure. If you need to perform such tasks,
  /// dispatch to a background queue:
  ///
  ///     .onChange(of: scenePhase) { newScenePhase in
  ///         if newScenePhase == .background {
  ///             DispatchQueue.global(qos: .background).async {
  ///                 // ...
  ///             }
  ///         }
  ///     }
  ///
  /// The system passes the new value into the closure. If you need the old
  /// value, capture it in the closure.
  ///
  /// - Parameters:
  ///   - value: The value to check when determining whether to run the
  ///     closure. The value must conform to the
  ///     <doc://com.apple.documentation/documentation/Swift/Equatable>
  ///     protocol.
  ///   - action: A closure to run when the value changes. The closure
  ///     provides a single `newValue` parameter that indicates the changed
  ///     value.
  ///
  /// - Returns: A scene that triggers an action in response to a change.
  /// TODO: imeplement me
  // public func onChange<V>(of value: V, perform action: @escaping (_ newValue: V) -> Void) -> some Scene where V: Equatable
}

/// MARK: - NeverScene
extension Never: Scene {}