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
            Div { B("🌙") }
          } else {
            Div { B("🌞") }
          }
        }
      )
      Spacer()
    }
    .height(.px(100))
  }
}