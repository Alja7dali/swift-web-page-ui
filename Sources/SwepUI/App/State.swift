import struct Foundation.UUID

@propertyWrapper
public struct State<Value>: DynamicProperty {
  private let id = _AppStateIdentifier.getNextId()
  
  /// Creates the state with an initial wrapped value.
  ///
  /// You don't call this initializer directly. Instead, declare a property
  /// with the `@State` attribute, and provide an initial value; for example,
  /// `@State private var isPlaying: Bool = false`.
  ///
  /// - Parameter wrappedValue: An initial wrappedValue for a state.
  public init(wrappedValue value: Value) {
    if _AppStateStorage[id] == nil {
      _AppStateStorage[id] = value
    }
  }

  /// Creates the state with an initial value.
  ///
  /// - Parameter value: An initial value of the state.
  public init(initialValue value: Value) {
    self.init(wrappedValue: value)
  }

  /// The underlying value referenced by the state variable.
  ///
  /// This property provides primary access to the value's data. However, you
  /// don't access `wrappedValue` directly. Instead, you use the property
  /// variable created with the `@State` attribute. For example, in the
  /// following code example the button's actions toggles the value of
  /// `showingProfile`, which toggles `wrappedValue`:
  ///
  ///     @State private var showingProfile = false
  ///
  ///     var profileButton: some View {
  ///         Button(action: { self.showingProfile.toggle() }) {
  ///             Image(systemName: "person.crop.circle")
  ///                 .imageScale(.large)
  ///                 .accessibilityLabel(Text("User Profile"))
  ///                 .padding()
  ///         }
  ///     }
  ///
  /// When a mutable binding value changes, the new value is immediately
  /// available. However, updates to a view displaying the value happens
  /// asynchronously, so the view may not show the change immediately.
  public var wrappedValue: Value {
    get {
      return _AppStateStorage[id] as! Value
    }
    
    nonmutating set {
      _AppStateStorage[id] = newValue
      update()
    }
  }

  /// A binding to the state value.
  ///
  /// Use the projected value to pass a binding value down a view hierarchy.
  /// To get the `projectedValue`, prefix the property variable with `$`. For
  /// example, in the following code example `PlayerView` projects a binding
  /// of the state property `isPlaying` to the `PlayButton` view using
  /// `$isPlaying`.
  ///
  ///     struct PlayerView: View {
  ///         var episode: Episode
  ///         @State private var isPlaying: Bool = false
  ///
  ///         var body: some View {
  ///             VStack {
  ///                 Text(episode.title)
  ///                 Text(episode.showTitle)
  ///                 PlayButton(isPlaying: $isPlaying)
  ///             }
  ///         }
  ///     }
  public var projectedValue: Binding<Value> {
    return .init(get: { self.wrappedValue }, set: { self.wrappedValue = $0 })
  }

  public func update() {
    _AppStateRenderer?()
  }
}

extension State where Value: ExpressibleByNilLiteral {
  /// Creates a state without an initial value.
  public init() {
    self.init(wrappedValue: nil)
  }
}
