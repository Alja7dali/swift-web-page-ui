extension Optional: View where Wrapped: View {
  public var body: Either<Wrapped, EmptyView> {
    switch self {
    case .some(let wrapped): return .left(wrapped)
    case .none: return .right(EmptyView())
    }
  }
}