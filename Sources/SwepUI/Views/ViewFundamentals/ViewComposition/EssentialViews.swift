/// MARK: EssentialViews

/// MARK: - NeverView
extension Never: View {
  public typealias Body = Never
}

extension View where Body == Never {
  public var body: Never {
    return fatalError("\(Self.self).body should never be called.")
  }
}

/// MARK: - EmptyView
public struct EmptyView: View {
  public typealias Body = Never
  public init() {}
  public func build(into builder: inout Builder) {}
}

/// MARK: - OptionalView
extension Optional where Wrapped == Never {
  public typealias Body = Never

  public func build(into builder: inout Builder) {
    switch self {
    case .none:
      break
    case .some(let value):
      value.build(into: &builder)
    }
  }
}

/// MARK: - EitherView
public enum Either<Left, Right> {
  case left(Left)
  case right(Right)
}

extension Either: View where Left: View, Right: View {
  public typealias Body = Never

  public init(first: Left) {
    self = .left(first)
  }

  public init(second: Right) {
    self = .right(second)
  }

  public func build(into builder: inout Builder) {
    switch self {
    case .left(let left):
      left.build(into: &builder)
    case .right(let right):
      right.build(into: &builder)
    }
  }
}

/// MARK: - TupleView
public struct TupleView<Children>: View {
  public typealias Body = Never

  private let build: (inout Builder) -> Void

  public init<C0: View, C1: View>(_ content: (c0: C0, c1: C1)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View>(_ content: (c0: C0, c1: C1, c2: C2)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
      content.c5.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
      content.c5.build(into: &builder)
      content.c6.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
      content.c5.build(into: &builder)
      content.c6.build(into: &builder)
      content.c7.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7, c8: C8)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
      content.c5.build(into: &builder)
      content.c6.build(into: &builder)
      content.c7.build(into: &builder)
      content.c8.build(into: &builder)
    }
  }

  public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View>(_ content: (c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7, c8: C8, c9: C9)) {
    self.build = { builder in
      content.c0.build(into: &builder)
      content.c1.build(into: &builder)
      content.c2.build(into: &builder)
      content.c3.build(into: &builder)
      content.c4.build(into: &builder)
      content.c5.build(into: &builder)
      content.c6.build(into: &builder)
      content.c7.build(into: &builder)
      content.c8.build(into: &builder)
      content.c9.build(into: &builder)
    }
  }

  public func build(into builder: inout Builder) {
    build(&builder)
  }
}

/// MARK: - AnyView
public struct AnyView: View {
  public typealias Body = Never

  private let build: (inout Builder) -> Void

  public init<V: View>(_ view: V) {
    self.build = { builder in
      view.build(into: &builder)
    }
  }

  public init<V: View>(erasing view: V) {
    self.build = { builder in
      view.build(into: &builder)
    }
  }

  public func build(into builder: inout Builder) {
    build(&builder)
  }
}