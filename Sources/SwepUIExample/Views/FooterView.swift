struct FooterView: View {
  @State private var textColor: Value<Color> = .tomato
  var body: some View {
    HStack {
      Plaintext("Built in SwiftWasm using")
      A("SwepUI")
        .href("https://github.com/Alja7dali/swift-web-page-ui")
        .color(textColor)
        .padding(.px(10))
        // // onHoverIn
        // .onMouseover { _ in
        //   textColor = .hex(0xC2331D)
        // }
        // // onHoverOut
        // .onMouseout { _ in
        //   textColor = .tomato
        // }
      Plaintext("v0.0.2")
    }
    .fontSize(.px(30))
    .height(.px(50))
  }
}