extension Tuple: View {
  public typealias Body = Never

  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    children.forEach { ($0.1 as? Renderable)?.render(mode, into: &target) }
  }
}