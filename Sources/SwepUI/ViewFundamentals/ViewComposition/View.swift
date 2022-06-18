public typealias HtmlNodeChildOfAny = HtmlNode & ChildOfAny

public typealias Length = Double

public protocol View: HtmlNodeChildOfAny {
  associatedtype Body: View
  @ViewBuilder var body: Self.Body { get }
}

extension View {
  @_disfavoredOverload
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    body.render(mode, into: &target)
  }
}

extension HtmlNode where Self: View {
  public var body: Self {
    return self
  }
}

extension A: View {}
extension Abbr: View {}
extension Address: View {}
extension Article: View {}
extension Aside: View {}
extension Audio: View {}
extension B: View {}
extension Bdi: View {}
extension Bdo: View {}
extension Blockquote: View {}
extension Br: View {}
extension Button: View {}
extension Canvas: View {}
extension Cite: View {}
extension Code: View {}
extension Del: View {}
extension Details: View {}
extension Dfn: View {}
extension Div: View {}
extension Dl: View {}
extension Em: View {}
extension Fieldset: View {}
extension Figure: View {}
extension Footer: View {}
extension Form: View {}
extension H1: View {}
extension H2: View {}
extension H3: View {}
extension H4: View {}
extension H5: View {}
extension H6: View {}
extension Header: View {}
extension Hr: View {}
extension I: View {}
extension Iframe: View {}
extension Img: View {}
extension Input: View {}
extension Ins: View {}
extension Kbd: View {}
extension Label: View {}
extension Main: View {}
extension Map: View {}
extension Mark: View {}
extension Meter: View {}
extension Nav: View {}
extension Noscript: View {}
extension Object: View {}
extension Ol: View {}
extension Optgroup: View {}
extension Output: View {}
extension P: View {}
extension Picture: View {}
extension Pre: View {}
extension Progress: View {}
extension Q: View {}
extension S: View {}
extension Samp: View {}
extension Script: View {}
extension Section: View {}
extension Select: View {}
extension Small: View {}
extension Span: View {}
extension Strong: View {}
extension Sub: View {}
extension Sup: View {}
extension Svg: View {}
extension Table: View {}
extension Template: View {}
extension Textarea: View {}
extension Time: View {}
extension U: View {}
extension Ul: View {}
extension Var: View {}
extension Video: View {}