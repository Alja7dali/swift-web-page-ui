struct FooterView: View {
  @State private var textColor: Value<CssPropColor> = .tomato
  var body: some View {
    HStack {
      HtmlPlaintext("Built in SwiftWasm using")
      HtmlA("SwepUI")
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
      HtmlPlaintext("v0.0.2")
    }
    .cssFontSize(.px(30))
    .cssHeight(.px(50))
  }
}