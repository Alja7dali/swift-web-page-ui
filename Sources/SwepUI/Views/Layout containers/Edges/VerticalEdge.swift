/// An edge on the vertical axis.
public enum VerticalEdge: Int8, CaseIterable, Codable {

  /// The top edge.
  case top

  /// The bottom edge.
  case bottom

  /// An efficient set of `VerticalEdge`s.
  public struct Set: OptionSet {

    /// The element type of the option set.
    ///
    /// To inherit all the default implementations from the `OptionSet` protocol,
    /// the `Element` type must be `Self`, the default.
    public typealias Element = VerticalEdge.Set

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

    /// A set containing only the top vertical edge.
    public static let top: VerticalEdge.Set = .init(rawValue: 1 << 0)

    /// A set containing only the bottom vertical edge.
    public static let bottom: VerticalEdge.Set = .init(rawValue: 1 << 1)

    /// A set containing the top and bottom vertical edges.
    public static let all: VerticalEdge.Set = .init(arrayLiteral: .top, .bottom)

    /// Creates an instance containing just `e`
    public init(_ e: VerticalEdge) {
      switch e {
      case .top: self = .top
      case .bottom: self = .bottom
      }
    }

    /// The type of the elements of an array literal.
    public typealias ArrayLiteralElement = VerticalEdge.Set.Element

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
    case 1: self = .bottom
    default: return nil
    }
  }

  /// A type that can represent a collection of all values of this type.
  public typealias AllCases = Array<VerticalEdge>

  /// The raw type that can be used to represent all values of the conforming
  /// type.
  ///
  /// Every distinct value of the conforming type has a corresponding unique
  /// value of the `RawValue` type, but there may be values of the `RawValue`
  /// type that don't have a corresponding value of the conforming type.
  public typealias RawValue = Int8

  /// A collection of all values of this type.
  public static var allCases: Array<VerticalEdge> {
    return .init(arrayLiteral: .top, .bottom)
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
    case .bottom: return 1
    }
  }
}

extension VerticalEdge: Equatable {}

extension VerticalEdge: Hashable {}

extension VerticalEdge: RawRepresentable {}