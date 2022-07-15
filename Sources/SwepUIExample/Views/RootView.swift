struct RootView: View {
  @State private var counter: Int = 0
  @State private var darkMode: Bool = false
  @State private var errorMessage: String = ""

  var body: some View {
    VStack {
      HeaderView(isDarkMode: $darkMode)
      Spacer()
      if errorMessage.isEmpty == false {
        HtmlDiv(errorMessage)
          .cssColor(.tomato)
          .cssFontSize(.px(20))
          .cssLineHeight(.px(20))
          .cssMinHeight(.px(20))
      } else {
        HtmlDiv()
          .cssFontSize(.px(20))
          .cssLineHeight(.px(20))
          .cssMinHeight(.px(20))
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
            HtmlDiv { HtmlB("+") }
              .cssColor(darkMode ? .hex(0x19F7D2) : .hex(0x1AAB92))
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
            HtmlDiv { HtmlB("-") }
              .cssColor(darkMode ? .hex(0xC2331D) : .hex(0xAB2328))
          }
        )
        Spacer()
      }
      Spacer()
      Spacer()
      FooterView()
    }
    .cssColor(darkMode ? .white : .hex(0x343434))
    .cssBackgroundColor(darkMode ? .hex(0x343434) : .hex(0xD9D9D9))
    .cssFontSize(.px(100))
    .cssFontFamily("Helvetica")
    .cssPadding(.px(100))
  }
}
