public struct ModifiedContent<Content: View, Modifier: ViewModifier>: View {
  public typealias Body = Never

  public let content: Content
  public let modifier: Modifier

  public init(_ content: Content, _ modifier: Modifier) {
    self.content = content
    self.modifier = modifier
  }

  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    modifier.body(content: content).render(mode, into: &target)
  }
}

extension View {
  public func modifier<M>(_ modifier: M) -> ModifiedContent<Self, M> {
    return ModifiedContent(self, modifier)
  }
}

extension ViewModifier {
  public func concat<M>(_ modifier: M) -> ModifiedContent<Self, M> {
    return ModifiedContent(self, modifier)
  }
}