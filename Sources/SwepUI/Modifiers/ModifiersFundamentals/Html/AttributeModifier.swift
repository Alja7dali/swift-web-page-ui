public struct AttributeModifier<Content: View>: View, ViewModifier {
  public typealias Body = Never

  private let attribute: Attribute

  public init(key: String, value: Optional<String>) {
    self.attribute = Attribute(key: key, value: value)
  }

  public func body(content: Content) -> some View {
    return content.modifier(self)
  }

  public func build(into builder: inout Builder) {
    builder.combine(last: attribute)
  }
}

extension View {
  public func attribute(key: String, value: Optional<String>) -> some View {
    return self.modifier(AttributeModifier<Self>(key: key, value: value))
  }
}