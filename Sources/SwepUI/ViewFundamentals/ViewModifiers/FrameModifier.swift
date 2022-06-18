public struct FrameModifier: ViewModifier {
  public typealias Body = AnyView

  public let minWidth: Optional<Length>
  public let idealWidth: Optional<Length>
  public let maxWidth: Optional<Length>
  public let minHeight: Optional<Length>
  public let idealHeight: Optional<Length>
  public let maxHeight: Optional<Length>
  public let alignment: Alignment

  public init(
    minWidth: Optional<Length> = nil,
    idealWidth: Optional<Length> = nil,
    maxWidth: Optional<Length> = nil,
    minHeight: Optional<Length> = nil,
    idealHeight: Optional<Length> = nil,
    maxHeight: Optional<Length> = nil,
    alignment: Alignment = .center
  ) {
    self.minWidth = minWidth
    self.idealWidth = idealWidth
    self.maxWidth = maxWidth
    self.minHeight = minHeight
    self.idealHeight = idealHeight
    self.maxHeight = maxHeight
    self.alignment = alignment
  }

  public init(
    width: Optional<Length> = nil,
    height: Optional<Length> = nil,
    alignment: Alignment = .center
  ) {
    self.minWidth = width
    self.idealWidth = width
    self.maxWidth = width
    self.minHeight = height
    self.idealHeight = height
    self.maxHeight = height
    self.alignment = alignment
  }

  public func body<Content: View>(content: Content) -> AnyView {
    switch alignment.flexDirections() {
    case let .left(direction):
      switch alignment.alignItems() {
      case let .left(placement):
        return AnyView(
            makeFrameSize(content)
            .display(.flex)
            .flexDirection(direction)
            .alignItems(placement)
        )
      case .right:
        fatalError("will never be executed")
      }
    case let .right((horizontal: hDirection, vertical: vDirection)):
      switch alignment.alignItems() {
      case .left:
        fatalError("will never be executed")
      case let .right((horizontal: hPlacement, vertical: vPlacement)):
        return AnyView(
          makeFrameSize(
            makeFrameHeight(content)
              .display(.flex)
              .flexDirection(hDirection)
              .alignItems(hPlacement)
          )
            .display(.flex)
            .flexDirection(vDirection)
            .alignItems(vPlacement)
        )
      }
    }
  }
}

extension View {
  public func frame(
    minWidth: Optional<Length> = nil,
    idealWidth: Optional<Length> = nil,
    maxWidth: Optional<Length> = nil,
    minHeight: Optional<Length> = nil,
    idealHeight: Optional<Length> = nil,
    maxHeight: Optional<Length> = nil,
    alignment: Alignment = .center
  ) -> some View {
    #warning("frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:) is a experimental feature. It may change in the future.")
    return modifier(
      FrameModifier(
        minWidth: minWidth,
        idealWidth: idealWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        idealHeight: idealHeight,
        maxHeight: maxHeight,
        alignment: alignment
      )
    )
  }

  public func frame(
    width: Optional<Length> = nil,
    height: Optional<Length> = nil,
    alignment: Alignment = .center
  ) -> some View {
    #warning("frame(width:height:alignment:) is a experimental feature. It may change in the future.")
    return modifier(
      FrameModifier(
        width: width,
        height: height,
        alignment: alignment
      )
    )
  }
}

extension FrameModifier {
  private func makeFrameSize<Content: View>(_ content: Content) -> Div<Content> {
    var content = Div(content)
    if let minWidth = minWidth {
      if minWidth == .infinity || minWidth == .nan {
        content = content.minWidth(100%)
      } else {
        content = content.minWidth(.px(minWidth))
      }
    }
    if let idealWidth = idealWidth {
      if idealWidth == .infinity || idealWidth == .nan {
        content = content.width(100%)
      } else {
        content = content.width(.px(idealWidth))
      }
    }
    if let maxWidth = maxWidth {
      if maxWidth == .infinity || maxWidth == .nan {
        content = content.maxWidth(100%)
      } else {
        content = content.maxWidth(.px(maxWidth))
      }
    }
    if let minHeight = minHeight {
      if minHeight == .infinity || minHeight == .nan {
        content = content.minHeight(100%)
      } else {
        content = content.minHeight(.px(minHeight))
      }
    }
    if let idealHeight = idealHeight {
      if idealHeight == .infinity || idealHeight == .nan {
        content = content.height(100%)
      } else {
        content = content.height(.px(idealHeight))
      }
    }
    if let maxHeight = maxHeight {
      if maxHeight == .infinity || maxHeight == .nan {
        content = content.maxHeight(100%)
      } else {
        content = content.maxHeight(.px(maxHeight))
      }
    }
    return content
  }
  private func makeFrameHeight<Content: View>(_ content: Content) -> Div<Content> {
    var content = Div(content)
    if let minHeight = minHeight {
      if minHeight == .infinity || minHeight == .nan {
        content = content.minHeight(100%)
      } else {
        content = content.minHeight(.px(minHeight))
      }
    }
    if let idealHeight = idealHeight {
      if idealHeight == .infinity || idealHeight == .nan {
        content = content.height(100%)
      } else {
        content = content.height(.px(idealHeight))
      }
    }
    if let maxHeight = maxHeight {
      if maxHeight == .infinity || maxHeight == .nan {
        content = content.maxHeight(100%)
      } else {
        content = content.maxHeight(.px(maxHeight))
      }
    }
    return content
  }
}