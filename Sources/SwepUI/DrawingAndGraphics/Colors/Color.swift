public struct Color: View {
  public typealias Body = Never

  internal let rawValue: String

  public init(red: Double, green: Double, blue: Double, opacity: Double = 1) {
    self.rawValue = Value<Swep.Color>.rgba(Int(red * 255), Int(green * 255), Int(blue * 255), opacity).rawValue
  }

  public init(css value: Value<Swep.Color>) {
    self.rawValue = value.rawValue
  }

  internal func cast<C: HasValueOfColor>(as: C.Type) -> Value<C> {
    return Value(stringLiteral: rawValue) as Value<C>
  }
}