extension Either: View where Left: View, Right: View {
  public var body: AnyView {
    switch self {
    case .left(let left): return AnyView(left)
    case .right(let right): return AnyView(right)
    }
  }
}