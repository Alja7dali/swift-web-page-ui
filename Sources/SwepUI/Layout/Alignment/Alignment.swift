public enum Alignment {
  // Getting Top Guides
  case topLeading
  // A guide that marks the top and leading edges of the view.
  case top
  // A guide that marks the top edge of the view.
  case topTrailing
  // A guide that marks the top and trailing edges of the view.

  // Getting Middle Guides
  case leading
  // A guide that marks the leading edge of the view.
  case center
  // A guide that marks the center of the view.
  case trailing
  // A guide that marks the trailing edge of the view.

  // Getting Bottom Guides
  case bottomLeading
  // A guide that marks the bottom and leading edges of the view.
  case bottom
  // A guide that marks the bottom edge of the view.
  case bottomTrailing
  // A guide that marks the bottom and trailing edges of the view.
}

//       .flexDirection(.column)
// extension HorizontalAlignment {
//   internal func alignItems() -> Value<AlignItems> {
//     switch self {
//     case .leading:
//       return .flexStart
//     case .center:
//       return .center
//     case .trailing:
//       return .flexEnd
//     }
//   }
// }

//       .flexDirection(.row)
// extension VerticalAlignment {
//   internal func alignItems() -> Value<AlignItems> {
//     switch self {
//     case .top:
//       return .flexStart
//     case .center:
//       return .center
//     case .bottom:
//       return .flexEnd
//     }
//   }
// }

extension Alignment {
  internal func alignItems() -> Either<Value<AlignItems>, (horizontal: Value<AlignItems>, vertical: Value<AlignItems>)> {
    switch self {
    case .topLeading:
      return .right((.flexStart, .flexStart))
    case .topTrailing:
      return .right((.flexStart, .flexEnd))
    case .bottomLeading:
      return .right((.flexEnd, .flexStart))
    case .bottomTrailing:
      return .right((.flexEnd, .flexEnd))
    case .center:
      return .right((.center, .center))
    case .top, .leading:
      return .left(.flexStart)
    case .bottom, .trailing:
      return .left(.flexEnd)
    }
  }

  internal func flexDirections() -> Either<Value<FlexDirection>, (horizontal: Value<FlexDirection>, vertical: Value<FlexDirection>)> {
    switch self {
    case .center, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing:
      return .right((.row, .column))
    case .top, .bottom:
      return .left(.row)
    case .leading, .trailing:
      return .left(.column)
    }
  }
}

