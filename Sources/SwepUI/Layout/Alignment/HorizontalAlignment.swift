public enum HorizontalAlignment {
  case leading
  // A guide that marks the leading edge of the view.
  case center
  // A guide that marks the horizontal center of the view.
  case trailing
  // A guide that marks the trailing edge of the view.
}

extension HorizontalAlignment: Equatable {
  public static func == (lhs: HorizontalAlignment, rhs: HorizontalAlignment) -> Bool {
    switch (lhs, rhs) {
    case (.leading, .leading), (.center, .center), (.trailing, .trailing):
      return true
    default:
      return false
    }
  }
}

extension HorizontalAlignment {
  internal func alignItems() -> Value<AlignItems> {
    switch self {
    case .leading:
      return .flexStart
    case .center:
      return .center
    case .trailing:
      return .flexEnd
    }
  }
}