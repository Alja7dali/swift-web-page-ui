struct FooterView: View {
  @State private var textColor: Value<Color> = .tomato
  var body: some View {
    HStack {
      Plaintext("Built in SwiftWasm using")
      A("SwepUI")
        .htmlHref("https://github.com/Alja7dali/swift-web-page-ui")
        .cssColor(textColor)
        .cssPadding(.px(10))
        // // onHoverIn
        // .jsMouseover { _ in
        //   textColor = .hex(0xC2331D)
        // }
        // // onHoverOut
        // .jsMouseout { _ in
        //   textColor = .tomato
        // }
      Plaintext("v0.0.2")
    }
    .cssFontSize(.px(30))
    .cssHeight(.px(50))
  }
}