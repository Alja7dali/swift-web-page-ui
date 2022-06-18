public struct AnyView: View {
  public typealias Body = Never
  public let content: HtmlNodeChildOfAny
  
  // public init<V: View>(_ content: V) {
  //   self.content = content
  // }

  public init<V: HtmlNodeChildOfAny>(_ content: V) {
    self.content = content
  }

  public init<A: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> A) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny, F: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E, F)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny, F: HtmlNodeChildOfAny, G: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E, F, G)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny, F: HtmlNodeChildOfAny, G: HtmlNodeChildOfAny, H: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E, F, G, H)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny, F: HtmlNodeChildOfAny, G: HtmlNodeChildOfAny, H: HtmlNodeChildOfAny, I: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E, F, G, H, I)>) { self.init(c()) }
  public init<A: HtmlNodeChildOfAny, B: HtmlNodeChildOfAny, C: HtmlNodeChildOfAny, D: HtmlNodeChildOfAny, E: HtmlNodeChildOfAny, F: HtmlNodeChildOfAny, G: HtmlNodeChildOfAny, H: HtmlNodeChildOfAny, I: HtmlNodeChildOfAny, J: HtmlNodeChildOfAny>(@HtmlNodeBuilder _ c: () -> Tuple<(A, B, C, D, E, F, G, H, I, J)>) { self.init(c()) }

  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    content.render(mode, into: &target)
  }
}