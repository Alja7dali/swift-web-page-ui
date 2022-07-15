struct VStack<Content: View>: View {
  private let makeContent: () -> Content

  init(@ViewBuilder content: @escaping () -> Content) {
    makeContent = content
  }

  var body: some View {
    HtmlDiv {
      AnyView(erasing: makeContent())
    }
    .cssDisplay(.flex)
    .cssFlexDirection(.column)
    .cssAlignItems(.center)
    .cssJustifyContent(.center)
    .cssHeight(100%)
  }
}

struct HStack<Content: View>: View {
  private let makeContent: () -> Content

  init(@ViewBuilder content: @escaping () -> Content) {
    makeContent = content
  }

  var body: some View {
    HtmlDiv {
      AnyView(erasing: makeContent())
    }
    .cssDisplay(.flex)
    .cssFlexDirection(.row)
    .cssAlignItems(.center)
    .cssJustifyContent(.center)
    .cssWidth(100%)
  }
}

struct Spacer: View {
  var body: some View {
    HtmlDiv()
      .cssFlexGrow(1)
  }
}

struct Divider: View {
  var body: some View {
    HtmlHr()
      .cssWidth(100%)
  }
}