struct HeaderView: View {
  @Binding var isDarkMode: Bool
  var body: some View {
    HStack {
      Spacer()
      CustomButton(
        action: {
          isDarkMode.toggle()
        },
        label: {
          if isDarkMode {
            HtmlDiv { HtmlB("🌙") }
          } else {
            HtmlDiv { HtmlB("🌞") }
          }
        }
      )
      Spacer()
    }
    .cssHeight(.px(100))
  }
}