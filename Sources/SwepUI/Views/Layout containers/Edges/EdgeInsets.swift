/// The inset distances for the sides of a rectangle.
public struct EdgeInsets: Equatable {

  public var top: Float

  public var leading: Float

  public var bottom: Float

  public var trailing: Float

  public init(top: Float, leading: Float, bottom: Float, trailing: Float) {
    self.top = top
    self.leading = leading
    self.bottom = bottom
    self.trailing = trailing
  }

  public init() {
    self.top = 0
    self.leading = 0
    self.bottom = 0
    self.trailing = 0
  }

  /// Returns a Boolean value indicating whether two values are equal.
  ///
  /// Equality is the inverse of inequality. For any values `a` and `b`,
  /// `a == b` implies that `a != b` is `false`.
  ///
  /// - Parameters:
  ///   - lhs: A value to compare.
  ///   - rhs: Another value to compare.
  public static func == (a: EdgeInsets, b: EdgeInsets) -> Bool {
    return a.top == b.top && a.leading == b.leading && a.bottom == b.bottom && a.trailing == b.trailing
  }
}