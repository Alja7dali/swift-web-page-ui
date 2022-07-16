public struct HtmlAttributeModifier<Content: View>: ViewModifier {
  public typealias Body = Never

  private let attribute: Attribute

  public init(key: String, value: Optional<String>) {
    self.attribute = Attribute(key: key, value: value)
  }

  public func build(into builder: inout Builder) {
    builder.combine(last: attribute)
  }
}

extension View {
  public func htmlAttribute(key: String, value: Optional<String>) -> some View {
    return self.modifier(HtmlAttributeModifier<Self>(key: key, value: value))
  }
}