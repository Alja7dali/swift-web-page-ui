struct FooterView: View {
  @State private var textColor: Value<Color> = .tomato
  var body: some View {
    HStack {
      Plaintext("Built in SwiftWasm using")
      A("SwepUI")
        .href("https://github.com/Alja7dali/swift-web-page-ui")
        .color(textColor)
        .padding(.px(10))
        .onMouseover { _ in
          textColor = .hex(0xC2331D)
        }
        .onMouseout { _ in
          textColor = .tomato
        }
        .onMousedown { _ in
          /// <a> href attribute is not clickable when listening to onMouse events
          JSObject.global.location = "https://github.com/Alja7dali/swift-web-page-ui"
        }
      Plaintext("v0.0.2")
    }
    .fontSize(.px(30))
    .height(.px(50))
  }
}