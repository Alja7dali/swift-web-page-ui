struct VStack<Content: View>: View {
  private let makeContent: () -> Content

  init(@ViewBuilder content: @escaping () -> Content) {
    makeContent = content
  }

  var body: some View {
    Div {
      AnyView(erasing: makeContent())
    }
    .display(.flex)
    .flexDirection(.column)
    .alignItems(.center)
    .justifyContent(.center)
    .height(100%)
  }
}

struct HStack<Content: View>: View {
  private let makeContent: () -> Content

  init(@ViewBuilder content: @escaping () -> Content) {
    makeContent = content
  }

  var body: some View {
    Div {
      AnyView(erasing: makeContent())
    }
    .display(.flex)
    .flexDirection(.row)
    .alignItems(.center)
    .justifyContent(.center)
    .width(100%)
  }
}

struct Spacer: View {
  var body: some View {
    Div("")
      .flexGrow(1)
  }
}

struct Divider: View {
  var body: some View {
    Hr()
      .width(100%)
  }
}