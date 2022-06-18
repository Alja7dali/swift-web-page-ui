extension Never: View {
  public typealias Body = Never
}

extension View where Body == Never {
  public var body: Body {
    fatalError("\(Self.self).body should never be called")
  }
}