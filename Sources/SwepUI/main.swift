import Foundation

struct TextWithRandomColor: View {
  let text: String
  init(_ text: String) {
    self.text = text
  }
  var body: some View {
    Div(text)
      .color(.rgb(Int.random(in: 0...255), Int.random(in: 0...255), Int.random(in: 0...255)))
  }
}

struct ContentView: View {
  var body: some View {
    Div {
      TextWithRandomColor("Content View")
    }
    .flexGrow(1)
    .display(.flex)
    .flexDirection(.column)
    .alignItems(.center)
    .justifyContent(.center)
    .width(100%)
    .height(100%)
  }
}

struct RootView<Content: View>: View {
  let content: Content

  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

  var body: some View {
    Div(content)
      .display(.flex)
      .flexDirection(.column)
      .width(100%)
      .height(100%)
      .padding(.px(16))
  }
}

struct HeaderView: View {
  var body: some View {
    Div {
      Spacer()
      TextWithRandomColor("Item 1")
      Spacer()
      TextWithRandomColor("Item 2")
      Spacer()
      TextWithRandomColor("Item 3")
      Spacer()
    }
    .display(.flex)
    .flexDirection(.row)
    .alignItems(.center)
    .justifyContent(.center)
    .width(100%)
  }
}

struct FooterView: View {
  var body: some View {
    Div("A footer view 🥳")
      .display(.flex)
      .flexDirection(.row)
      .alignItems(.center)
      .justifyContent(.center)
      .width(100%)
  }
}

let doc = Document {
  Html {
    Head {
      Title("Hello, SwepUI!")
      Meta(viewport: .width(.deviceWidth), .initialScale(1))
      Style {
        Selector("*,*::before,*::after") {
          Margin(.px(0))
          Padding(.px(0))
          BoxSizing(.borderBox)
        }
      }
    }
    Body {
      RootView {
        HeaderView()
        ContentView()
        FooterView()
      }
    }
    .display(.flex)
    .alignItems(.stretch)
    .justifyContent(.center)
    .height(.vh(100))
    .width(.vw(100))
  }
}

let contents = doc.debugRender().data(using: .utf8)
FileManager.default.createFile(atPath: "swepui.html", contents: contents)
