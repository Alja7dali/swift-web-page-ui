struct CustomButton<Label: View>: View {
  private let action: () -> Void
  private let label: () -> Label
  @State private var isHovered: Bool = false
  init(
    action: @escaping () -> Void,
    @ViewBuilder label: @escaping () -> Label
  ) {
    self.action = action
    self.label = label
  }

  var body: some View {
    makeContent()
      // .cssTextShadow(.px(0), .px(0), .px(16), isHovered ? .darkGray : .transparent)
      // // onHoverIn
      // .jsMouseover { _ in
      //   isHovered.toggle()
      // }
      // // onHoverOut
      // .jsMouseout { _ in
      //   isHovered.toggle()
      // }
      .jsClick { _ in
        action()
      }
  }

  func makeContent() -> some View {
    return Div {
      AnyView(erasing: label())
    }
    .cssCursor(.pointer)
  }
}