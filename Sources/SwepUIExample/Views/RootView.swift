struct RootView: View {
  @State private var counter: Int = 0
  @State private var darkMode: Bool = false
  @State private var errorMessage: String = ""

  var body: some View {
    VStack {
      HeaderView(isDarkMode: $darkMode)
      Spacer()
      if errorMessage.isEmpty == false {
        Div(errorMessage)
          .color(.tomato)
          .fontSize(.px(20))
          .lineHeight(.px(20))
          .minHeight(.px(20))
      } else {
        Div()
          .fontSize(.px(20))
          .lineHeight(.px(20))
          .minHeight(.px(20))
      }
      DisplayCounterView(counter: $counter)
      Divider()
      HStack {
        Spacer()
        CustomButton(
          action: {
            counter += 1
            print(counter)
            if !errorMessage.isEmpty && counter > 0 {
              errorMessage = ""
            }
          },
          label: {
            Div { B("+") }
              .color(darkMode ? .hex(0x19F7D2) : .hex(0x1AAB92))
          }
        )
        Spacer()
        CustomButton(
          action: {
            if counter > 0 {
              counter -= 1
              print(counter)
            } else {
              errorMessage = "Counter cannot be negative"
            }
          },
          label: {
            Div { B("-") }
              .color(darkMode ? .hex(0xC2331D) : .hex(0xAB2328))
          }
        )
        Spacer()
      }
      Spacer()
      Spacer()
      FooterView()
    }
    .color(darkMode ? .white : .hex(0x343434))
    .backgroundColor(darkMode ? .hex(0x343434) : .hex(0xD9D9D9))
    .fontSize(.px(100))
    .fontFamily("Helvetica")
    .padding(.px(100))
  }
}
