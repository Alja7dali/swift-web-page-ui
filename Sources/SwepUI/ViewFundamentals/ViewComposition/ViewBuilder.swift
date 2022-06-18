#if swift(<5.4)
@_functionBuilder
public enum ViewBuilder {}
#else
@resultBuilder
public enum ViewBuilder {}
#endif

public extension ViewBuilder {
  static func buildOptional<Content: View>(_ content: Optional<Content>) -> Optional<Content> {
    return content
  }

  static func buildEither<T: View, F: View>(first content: T) -> Either<T, F> {
    return .left(content)
  }

  static func buildEither<T: View, F: View>(second content: F) -> Either<T, F> {
    return .right(content)
  }

  static func buildArray<Content: View>(_ contents: Array<Content>) -> Array<Content> {
    return contents
  }

  static func buildBlock() -> EmptyView {
    return EmptyView()
  }

  static func buildBlock<Content: View>(_ content: Content) -> Content {
    return content
  }

  static func buildBlock<Content: View>(_ content: Content, _ moreContent: Content ...) -> Array<Content> {
    return [content] + moreContent
  }

  static func buildLimitedAvailability<Content: View>(_ content: Content) -> Content {
    return content
  }
}

/// Everything below this line is generated, DO NOT EDIT MANUALLY..
public extension ViewBuilder {
  @_disfavoredOverload
  static func buildBlock<A: View, B: View>(
    _ a: A, _ b: B
  ) -> Tuple<(A, B)> {
    return Tuple<(A, B)>( (a, b) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View>(
    _ a: A, _ b: B, _ c: C
  ) -> Tuple<(A, B, C)> {
    return Tuple<(A, B, C)>( (a, b, c) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View>(
    _ a: A, _ b: B, _ c: C, _ d: D
  ) -> Tuple<(A, B, C, D)> {
    return Tuple<(A, B, C, D)>( (a, b, c, d) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E
  ) -> Tuple<(A, B, C, D, E)> {
    return Tuple<(A, B, C, D, E)>( (a, b, c, d, e) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View, F: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F
  ) -> Tuple<(A, B, C, D, E, F)> {
    return Tuple<(A, B, C, D, E, F)>( (a, b, c, d, e, f) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View, F: View, G: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G
  ) -> Tuple<(A, B, C, D, E, F, G)> {
    return Tuple<(A, B, C, D, E, F, G)>( (a, b, c, d, e, f, g) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H
  ) -> Tuple<(A, B, C, D, E, F, G, H)> {
    return Tuple<(A, B, C, D, E, F, G, H)>( (a, b, c, d, e, f, g, h) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View, I: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I
  ) -> Tuple<(A, B, C, D, E, F, G, H, I)> {
    return Tuple<(A, B, C, D, E, F, G, H, I)>( (a, b, c, d, e, f, g, h, i) )
  }
  @_disfavoredOverload
  static func buildBlock<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View, I: View, J: View>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J
  ) -> Tuple<(A, B, C, D, E, F, G, H, I, J)> {
    return Tuple<(A, B, C, D, E, F, G, H, I, J)>( (a, b, c, d, e, f, g, h, i, j) )
  }
}
