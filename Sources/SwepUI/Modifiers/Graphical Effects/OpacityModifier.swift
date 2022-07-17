public struct OpacityModifier<Content: View>: ViewModifier {
  private let value: Double

  public init(value: Double) {
    self.value = value
  }

  public func body(content: Content) -> some View {
    return content.cssOpacity(Value(floatLiteral: value))
  }
}

extension View {
  // Sets the transparency of this view.
  public func opacity(_ value: Double) -> some View {
    return modifier(OpacityModifier(value: value))
  }
}