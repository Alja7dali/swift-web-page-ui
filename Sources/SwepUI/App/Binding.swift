@propertyWrapper
@dynamicMemberLookup
public struct Binding<Value> {
  /// TODO
  // /// The binding's transaction.
  // ///
  // /// The transaction captures the information needed to update the view when
  // /// the binding value changes.
  // public var transaction: Transaction

  private let getter: () -> Value

  private let setter: (Value) -> Void

  /// Creates a binding with closures that read and write the binding value.
  ///
  /// - Parameters:
  ///   - get: A closure that retrieves the binding value. The closure has no
  ///     parameters, and returns a value.
  ///   - set: A closure that sets the binding value. The closure has the
  ///     following parameter:
  ///       - newValue: The new value of the binding value.
  public init(get: @escaping () -> Value, set: @escaping (Value) -> Void) {
    self.getter = get
    self.setter = set
  }

  /// TODO
  // /// Creates a binding with a closure that reads from the binding value, and
  // /// a closure that applies a transaction when writing to the binding value.
  // ///
  // /// - Parameters:
  // ///   - get: A closure to retrieve the binding value. The closure has no
  // ///     parameters, and returns a value.
  // ///   - set: A closure to set the binding value. The closure has the
  // ///     following parameters:
  // ///       - newValue: The new value of the binding value.
  // ///       - transaction: The transaction to apply when setting a new value.
  // public init(get: @escaping () -> Value, set: @escaping (Value, Transaction) -> Void)

  /// Creates a binding with an immutable value.
  ///
  /// Use this method to create a binding to a value that cannot change.
  /// This can be useful when using a ``PreviewProvider`` to see how a view
  /// represents different values.
  ///
  ///     // Example of binding to an immutable value.
  ///     PlayButton(isPlaying: Binding.constant(true))
  ///
  /// - Parameter value: An immutable value.
  public static func constant(_ value: Value) -> Binding<Value> {
    return Binding(get: { value }, set: { _ in })
  }

  /// The underlying value referenced by the binding variable.
  ///
  /// This property provides primary access to the value's data. However, you
  /// don't access `wrappedValue` directly. Instead, you use the property
  /// variable created with the `@Binding` attribute. For instance, in the
  /// following code example the binding variable `isPlaying` returns the
  /// value of `wrappedValue`:
  ///
  ///     struct PlayButton: View {
  ///         @Binding var isPlaying: Bool
  ///
  ///         var body: some View {
  ///             Button(action: {
  ///                 self.isPlaying.toggle()
  ///             }) {
  ///                 Image(systemName: isPlaying ? "pause.circle": "play.circle")
  ///             }
  ///         }
  ///     }
  ///
  /// When a mutable binding value changes, the new value is immediately
  /// available. However, updates to a view displaying the value happens
  /// asynchronously, so the view may not show the change immediately.
  public var wrappedValue: Value {
    get {
      return getter()
    }
    
    nonmutating set {
      setter(newValue)
    }
  }

  /// A projection of the binding value that returns a binding.
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
    return self
  }

  /// Creates a binding from the value of another binding.
  public init(projectedValue: Binding<Value>) {
    self = projectedValue
  }

  /// Returns a binding to the resulting value of a given key path.
  ///
  /// - Parameter keyPath: A key path to a specific resulting value.
  ///
  /// - Returns: A new binding.
  public subscript<Subject>(dynamicMember keyPath: WritableKeyPath<Value, Subject>) -> Binding<Subject> {
    return .init(get: { self.wrappedValue[keyPath: keyPath] }, set: { self.wrappedValue[keyPath: keyPath] = $0 })
  }
}

extension Binding {
  /// Creates a binding by projecting the base value to an optional value.
  ///
  /// - Parameter base: A value to project to an optional value.
  public init<V>(_ base: Binding<V>) where Value == Optional<V> {
    var isNil = false
    self.init(
      get: {
        if isNil {
          return nil
        } else {
          return base.wrappedValue
        }
      },
      set: {
        if $0 == nil {
          isNil = true
        } else {
          isNil = false
          base.wrappedValue = $0!
        }
      }
    )
  }

  /// Creates a binding by projecting the base value to an unwrapped value.
  ///
  /// - Parameter base: A value to project to an unwrapped value.
  ///
  /// - Returns: A new binding or `nil` when `base` is `nil`.
  public init?(_ base: Binding<Optional<Value>>) {
    guard var value = base.wrappedValue else { return nil }
    self.init(get: { value }, set: { value = $0 })
  }

  /// Creates a binding by projecting the base value to a hashable value.
  ///
  /// - Parameters:
  ///   - base: A `Hashable` value to project to an `AnyHashable` value.
  public init<V>(_ base: Binding<V>) where Value == AnyHashable, V: Hashable {
    /// FIXME: force-casting $0 as! V will crash if $0 is not V.
    self.init(get: { AnyHashable(base.wrappedValue) }, set: { base.wrappedValue = $0 as! V })
  }
}

extension Binding: Identifiable where Value: Identifiable {
  /// The stable identity of the entity associated with this instance,
  /// corresponding to the `id` of the binding's wrapped value.
  public var id: Value.ID {
    return wrappedValue.id
  }

  /// A type representing the stable identity of the entity associated with
  /// an instance.
  public typealias ID = Value.ID
}

extension Binding: Sequence where Value: MutableCollection {
  /// A type representing the sequence's elements.
  public typealias Element = Binding<Value.Element>

  /// A type that provides the sequence's iteration interface and
  /// encapsulates its iteration state.
  public typealias Iterator = IndexingIterator<Binding<Value>>

  /// A sequence that represents a contiguous subrange of the collection's
  /// elements.
  ///
  /// This associated type appears as a requirement in the `Sequence`
  /// protocol, but it is restated here with stricter constraints. In a
  /// collection, the subsequence should also conform to `Collection`.
  public typealias SubSequence = Slice<Binding<Value>>
}

extension Binding: Collection where Value: MutableCollection {
  /// A type that represents a position in the collection.
  ///
  /// Valid indices consist of the position of every element and a
  /// "past the end" position that's not valid for use as a subscript
  /// argument.
  public typealias Index = Value.Index

  /// A type that represents the indices that are valid for subscripting the
  /// collection, in ascending order.
  public typealias Indices = Value.Indices

  /// The position of the first element in a nonempty collection.
  ///
  /// If the collection is empty, `startIndex` is equal to `endIndex`.
  public var startIndex: Binding<Value>.Index {
    return wrappedValue.startIndex
  }

  /// The collection's "past the end" position---that is, the position one
  /// greater than the last valid subscript argument.
  ///
  /// When you need a range that includes the last element of a collection, use
  /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
  /// creates a range that doesn't include the upper bound, so it's always
  /// safe to use with `endIndex`. For example:
  ///
  ///     let numbers = [10, 20, 30, 40, 50]
  ///     if let index = numbers.firstIndex(of: 30) {
  ///         print(numbers[index ..< numbers.endIndex])
  ///     }
  ///     // Prints "[30, 40, 50]"
  ///
  /// If the collection is empty, `endIndex` is equal to `startIndex`.
  public var endIndex: Binding<Value>.Index {
    return wrappedValue.endIndex
  }

  /// The indices that are valid for subscripting the collection, in ascending
  /// order.
  ///
  /// A collection's `indices` property can hold a strong reference to the
  /// collection itself, causing the collection to be nonuniquely referenced.
  /// If you mutate the collection while iterating over its indices, a strong
  /// reference can result in an unexpected copy of the collection. To avoid
  /// the unexpected copy, use the `index(after:)` method starting with
  /// `startIndex` to produce indices instead.
  ///
  ///     var c = MyFancyCollection([10, 20, 30, 40, 50])
  ///     var i = c.startIndex
  ///     while i != c.endIndex {
  ///         c[i] /= 5
  ///         i = c.index(after: i)
  ///     }
  ///     // c == MyFancyCollection([2, 4, 6, 8, 10])
  public var indices: Value.Indices {
    return wrappedValue.indices
  }

  /// Returns the position immediately after the given index.
  ///
  /// The successor of an index must be well defined. For an index `i` into a
  /// collection `c`, calling `c.index(after: i)` returns the same index every
  /// time.
  ///
  /// - Parameter i: A valid index of the collection. `i` must be less than
  ///   `endIndex`.
  /// - Returns: The index value immediately after `i`.
  public func index(after i: Binding<Value>.Index) -> Binding<Value>.Index {
    return wrappedValue.index(after: i)
  }

  /// Replaces the given index with its successor.
  ///
  /// - Parameter i: A valid index of the collection. `i` must be less than
  ///   `endIndex`.
  public func formIndex(after i: inout Binding<Value>.Index) {
    wrappedValue.formIndex(after: &i)
  }

  /// Accesses the element at the specified position.
  ///
  /// The following example accesses an element of an array through its
  /// subscript to print its value:
  ///
  ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
  ///     print(streets[1])
  ///     // Prints "Bryant"
  ///
  /// You can subscript a collection with any valid index other than the
  /// collection's end index. The end index refers to the position one past
  /// the last element of a collection, so it doesn't correspond with an
  /// element.
  ///
  /// - Parameter position: The position of the element to access. `position`
  ///   must be a valid index of the collection that is not equal to the
  ///   `endIndex` property.
  ///
  /// - Complexity: O(1)
  public subscript(position: Binding<Value>.Index) -> Binding<Value>.Element {
    return .constant(self.wrappedValue[position])
  }
}

extension Binding: BidirectionalCollection where Value: BidirectionalCollection, Value: MutableCollection {
  /// Returns the position immediately before the given index.
  ///
  /// - Parameter i: A valid index of the collection. `i` must be greater than
  ///   `startIndex`.
  /// - Returns: The index value immediately before `i`.
  public func index(before i: Binding<Value>.Index) -> Binding<Value>.Index {
    return wrappedValue.index(before: i)
  }

  /// Replaces the given index with its predecessor.
  ///
  /// - Parameter i: A valid index of the collection. `i` must be greater than
  ///   `startIndex`.
  public func formIndex(before i: inout Binding<Value>.Index) {
    wrappedValue.formIndex(before: &i)
  }
}

extension Binding: RandomAccessCollection where Value: MutableCollection, Value: RandomAccessCollection {}

/// TODO
// extension Binding {

//   /// Specifies a transaction for the binding.
//   ///
//   /// - Parameter transaction: An instance of a ``Transaction``.
//   ///
//   /// - Returns: A new binding.
//   public func transaction(_ transaction: Transaction) -> Binding<Value>

//   /// Specifies an animation to perform when the binding value changes.
//   ///
//   /// - Parameter animation: An animation sequence performed when the binding
//   ///   value changes.
//   ///
//   /// - Returns: A new binding.
//   public func animation(_ animation: Animation? = .default) -> Binding<Value>
// }

extension Binding: DynamicProperty {
  public func update() {
    /// Nothing to do
  }
}