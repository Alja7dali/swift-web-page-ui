public enum VerticalAlignment {
  case top
  // A guide that marks the top edge of the view.
  case center
  // A guide that marks the vertical center of the view.
  case bottom
  // A guide that marks the bottom edge of the view.
  // case firstTextBaseline
  // // A guide that marks the top-most text baseline in a view.
  // case lastTextBaseline
  // // A guide that marks the bottom-most text baseline in a view.
}

extension VerticalAlignment: Equatable {
  public static func == (lhs: VerticalAlignment, rhs: VerticalAlignment) -> Bool {
    switch (lhs, rhs) {
    case (.top, .top), (.center, .center), (.bottom, .bottom):
      return true
    default:
      return false
    }
  }
}

extension VerticalAlignment {
  internal func alignItems() -> Value<AlignItems> {
    switch self {
    case .top:
      return .flexStart
    case .center:
      return .center
    case .bottom:
      return .flexEnd
    }
  }
}