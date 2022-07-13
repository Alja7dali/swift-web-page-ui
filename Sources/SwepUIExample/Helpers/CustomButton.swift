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
    Div {
      AnyView(erasing: label())
    }
      .cursor(.pointer)
      .textShadow(.px(0), .px(0), .px(16), isHovered ? .darkGray : .transparent)
      .onMouseover { _ in
        isHovered.toggle()
      }
      .onMouseout { _ in
        isHovered.toggle()
      }
      .onMousedown { _ in
        action()
      }
  }
}