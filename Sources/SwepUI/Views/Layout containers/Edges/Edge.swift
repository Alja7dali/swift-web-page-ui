/// An enumeration to indicate one edge of a rectangle.
public enum Edge: Int8, CaseIterable {

  case top

  case leading

  case bottom

  case trailing

  /// An efficient set of `Edge`s.
  public struct Set: OptionSet {

    /// The element type of the option set.
    ///
    /// To inherit all the default implementations from the `OptionSet` protocol,
    /// the `Element` type must be `Self`, the default.
    public typealias Element = Edge.Set

    /// The corresponding value of the raw type.
    ///
    /// A new instance initialized with `rawValue` will be equivalent to this
    /// instance. For example:
    ///
    ///     enum PaperSize: String {
    ///         case A4, A5, Letter, Legal
    ///     }
    ///
    ///     let selectedSize = PaperSize.Letter
    ///     print(selectedSize.rawValue)
    ///     // Prints "Letter"
    ///
    ///     print(selectedSize == PaperSize(rawValue: selectedSize.rawValue)!)
    ///     // Prints "true"
    public let rawValue: Int8

    /// Creates a new option set from the given raw value.
    ///
    /// This initializer always succeeds, even if the value passed as `rawValue`
    /// exceeds the static properties declared as part of the option set. This
    /// example creates an instance of `ShippingOptions` with a raw value beyond
    /// the highest element, with a bit mask that effectively contains all the
    /// declared static members.
    ///
    ///     let extraOptions = ShippingOptions(rawValue: 255)
    ///     print(extraOptions.isStrictSuperset(of: .all))
    ///     // Prints "true"
    ///
    /// - Parameter rawValue: The raw value of the option set to create. Each bit
    ///   of `rawValue` potentially represents an element of the option set,
    ///   though raw values may include bits that are not defined as distinct
    ///   values of the `OptionSet` type.
    public init(rawValue: Int8) {
      self.rawValue = rawValue
    }

    public static let top: Edge.Set = .init(rawValue: 1 << 0)

    public static let leading: Edge.Set = .init(rawValue: 1 << 1)

    public static let bottom: Edge.Set = .init(rawValue: 1 << 2)

    public static let trailing: Edge.Set = .init(rawValue: 1 << 3)

    public static let all: Edge.Set = .init(arrayLiteral: .top, .leading, .bottom, .trailing)

    public static let horizontal: Edge.Set = .init(arrayLiteral: .leading, .trailing)

    public static let vertical: Edge.Set = .init(arrayLiteral: .top, .bottom)

    /// Creates an instance containing just `e`
    public init(_ e: Edge) {
      switch e {
      case .top: self = .top
      case .leading: self = .leading
      case .bottom: self = .bottom
      case .trailing: self = .trailing
      }
    }

    /// The type of the elements of an array literal.
    public typealias ArrayLiteralElement = Edge.Set.Element

    /// The raw type that can be used to represent all values of the conforming
    /// type.
    ///
    /// Every distinct value of the conforming type has a corresponding unique
    /// value of the `RawValue` type, but there may be values of the `RawValue`
    /// type that don't have a corresponding value of the conforming type.
    public typealias RawValue = Int8
  }

  /// Creates a new instance with the specified raw value.
  ///
  /// If there is no value of the type that corresponds with the specified raw
  /// value, this initializer returns `nil`. For example:
  ///
  ///     enum PaperSize: String {
  ///         case A4, A5, Letter, Legal
  ///     }
  ///
  ///     print(PaperSize(rawValue: "Legal"))
  ///     // Prints "Optional("PaperSize.Legal")"
  ///
  ///     print(PaperSize(rawValue: "Tabloid"))
  ///     // Prints "nil"
  ///
  /// - Parameter rawValue: The raw value to use for the new instance.
  public init?(rawValue: Int8) {
    switch rawValue {
    case 0: self = .top
    case 1: self = .leading
    case 2: self = .bottom
    case 3: self = .trailing
    default: return nil
    }
  }

  /// A type that can represent a collection of all values of this type.
  public typealias AllCases = Array<Edge>

  /// The raw type that can be used to represent all values of the conforming
  /// type.
  ///
  /// Every distinct value of the conforming type has a corresponding unique
  /// value of the `RawValue` type, but there may be values of the `RawValue`
  /// type that don't have a corresponding value of the conforming type.
  public typealias RawValue = Int8

  /// A collection of all values of this type.
  public static var allCases: Array<Edge> {
    return .init(arrayLiteral: .top, .leading, .bottom, .trailing)
  }

  /// The corresponding value of the raw type.
  ///
  /// A new instance initialized with `rawValue` will be equivalent to this
  /// instance. For example:
  ///
  ///     enum PaperSize: String {
  ///         case A4, A5, Letter, Legal
  ///     }
  ///
  ///     let selectedSize = PaperSize.Letter
  ///     print(selectedSize.rawValue)
  ///     // Prints "Letter"
  ///
  ///     print(selectedSize == PaperSize(rawValue: selectedSize.rawValue)!)
  ///     // Prints "true"
  public var rawValue: Int8 {
    switch self {
    case .top: return 0
    case .leading: return 1
    case .bottom: return 2
    case .trailing: return 3
    }
  }
}

extension Edge: Equatable {}

extension Edge: Hashable {}

extension Edge: RawRepresentable {}