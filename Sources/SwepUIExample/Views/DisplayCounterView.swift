struct DisplayCounterView: View {
  @Binding var counter: Int

  var body: some View {
    HtmlDiv("counter = \(counter)")
  }
}