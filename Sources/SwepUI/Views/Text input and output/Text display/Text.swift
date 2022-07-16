/// A view that displays one or more lines of read-only text.
public struct Text: View {
  private let rawValue: String

  public init<S>(_ content: S) where S: StringProtocol {
    rawValue = String(content)
  }

  public var body: some View {
    HtmlSpan(rawValue)
  }
}

extension Text: Equatable {
  /// Returns a Boolean value indicating whether two values are equal.
  ///
  /// Equality is the inverse of inequality. For any values `a` and `b`,
  /// `a == b` implies that `a != b` is `false`.
  ///
  /// - Parameters:
  ///   - lhs: A value to compare.
  ///   - rhs: Another value to compare.
  public static func == (lhs: Text, rhs: Text) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
}