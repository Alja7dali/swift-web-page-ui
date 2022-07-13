struct DisplayCounterView: View {
  @Binding var counter: Int

  var body: some View {
    Div("counter = \(counter)")
  }
}