public struct Text: View {
  public typealias Content = String

  public let content: Content

  public init(_ content: Content) {
    self.content = content
  }

  public var body: some View {
    Div(Swep.Text(content))
  }
}