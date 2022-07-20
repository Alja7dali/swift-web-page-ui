public struct PaddingModifier<Content: View>: ViewModifier {
  private let edgeInsets: EdgeInsets

  public init(edgeInsets: EdgeInsets) {
    self.edgeInsets = edgeInsets
  }

  public func body(content: Content) -> some View {
    let top = edgeInsets.top
    let left = edgeInsets.leading
    let bottom = edgeInsets.bottom
    let right = edgeInsets.trailing
    return content
      .cssPadding(.px(top), .px(right), .px(bottom), .px(left))
  }
}

extension View {
  // Adds a different padding amount to each edge of this view.
  @_disfavoredOverload
  public func padding(_ edgeInsets: EdgeInsets) -> some View {
    return modifier(PaddingModifier(edgeInsets: edgeInsets))
  }

  // Adds an equal padding amount to specific edges of this view.
  public func padding(_ edges: Edge.Set = .all, _ amount: Double = 16) -> some View {
    return modifier(PaddingModifier(edgeInsets: edges.toEdgeInsets(amount)))
  }

  // Adds an equal padding amount to all edges of this view.
  public func padding(_ amount: Double) -> some View {
    return modifier(PaddingModifier(edgeInsets: Edge.Set.all.toEdgeInsets(amount)))
  }
}

extension Edge.Set {
  fileprivate func toEdgeInsets(_ amount: Double) -> EdgeInsets {
    var insets = EdgeInsets()
    if contains(.top) {
      insets.top = amount
    }
    if contains(.leading) {
      insets.leading = amount
    }
    if contains(.bottom) {
      insets.bottom = amount
    }
    if contains(.trailing) {
      insets.trailing = amount
    }
    return insets
  }
}