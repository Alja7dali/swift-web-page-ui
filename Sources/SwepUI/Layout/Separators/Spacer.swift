public struct Spacer: View {
  public let minLength: Optional<Length>

  public init(minLength: Optional<Length> = nil) {
    #warning("Spacer(minLength:) is a experimental feature. It may change in the future.")
    // IMPLEMENT_ME: detect weather am in a horizontal or vertical stack, then add min-width or min-height
    self.minLength = minLength
  }

  public var body: some View {
    Div()
      .flexGrow(1)
  }
}
