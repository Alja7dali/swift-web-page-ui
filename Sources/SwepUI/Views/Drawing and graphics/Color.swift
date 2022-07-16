public struct Color: View {
  private let rawValue: String

  public init(red: Double, green: Double, blue: Double, opacity: Double = 1) {
    self.rawValue = Value<CssPropColor>.rgba(Int(red * 255), Int(green * 255), Int(blue * 255), opacity).rawValue
  }

  public init(css value: Value<CssPropColor>) {
    self.rawValue = value.rawValue
  }

  internal func cast<C: HasValueOfColor>(as: C.Type) -> Value<C> {
    return Value(stringLiteral: rawValue) as Value<C>
  }

  public var body: some View {
    HtmlDiv()
      .cssBackgroundColor(cast(as: CssPropBackgroundColor.self))
      .cssHeight(100%)
      .cssWidth(100%)
  }
}

extension Color: Equatable {
  public static func == (lhs: Color, rhs: Color) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
}

extension Color: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(rawValue)
  }
}

// FIXME: make the following colors depend on colorScheme
extension Color {
  public static let red: Color = .init(red: 0.99999994, green: 0.23137254, blue: 0.18823528)
  public static let orange: Color = .init(red: 0.99999994, green: 0.58431375, blue: 0.0)
  public static let yellow: Color = .init(red: 0.99999994, green: 0.8, blue: 0.0)
  public static let green: Color = .init(red: 0.20392153, green: 0.78039217, blue: 0.3490196)
  public static let mint: Color = .init(red: 0.0, green: 0.78039217, blue: 0.74509805)
  public static let teal: Color = .init(red: 0.18823528, green: 0.6901961, blue: 0.78039217)
  public static let cyan: Color = .init(red: 0.19607839, green: 0.6784314, blue: 0.9019608)
  public static let blue: Color = .init(red: 0.0, green: 0.4784314, blue: 0.99999994)
  public static let indigo: Color = .init(red: 0.34509802, green: 0.33725488, blue: 0.83921576)
  public static let purple: Color = .init(red: 0.6862745, green: 0.32156864, blue: 0.87058824)
  public static let pink: Color = .init(red: 0.99999994, green: 0.17647058, blue: 0.3333333)
  public static let brown: Color = .init(red: 0.63529414, green: 0.517647, blue: 0.36862746)
  public static let white: Color = .init(red: 0.99999994, green: 0.99999994, blue: 0.99999994)
  public static let gray: Color = .init(red: 0.5568628, green: 0.5568628, blue: 0.5764706)
  public static let black: Color = .init(red: 0.0, green: 0.0, blue: 0.0)
  public static let clear: Color = .init(red: 0.0, green: 0.0, blue: 0.0)
  public static let primary: Color = .init(red: 0.0, green: 0.0, blue: 0.0)
  public static let secondary: Color = .init(red: 0.2352941, green: 0.2352941, blue: 0.2627451)
  public static let accentColor: Color = .blue
}