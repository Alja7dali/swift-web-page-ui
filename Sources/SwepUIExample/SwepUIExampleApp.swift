// struct SwepUIExampleApp: App {
//   var body: some Scene {
//     WindowGroup {
//       RootView()
//         .cssDisplay(.flex)
//         .cssAlignItems(.center)
//         .cssJustifyContent(.center)
//         .cssHeight(.vh(100))
//         .cssWidth(.vw(100))    
//         .cssMinWidth(100%)
//         .cssMinHeight(100%)
//     }
//   }
// }

struct SwepUIExampleApp: App {
  @State var username: String = ""
  @State var password: String = ""
  @State var comment: String = ""

  var body: some Scene {
    WindowGroup {
      HStack {
        VStack(alignment: .leading, spacing: 2) {
          Text("Username:")
          TextField("Enter your username:", text: $username, onCommit: {
            print("Committed username: \(username)")
          })
            .background(Color(css: .white(0.9)))
            .padding(4)
          Text("Password:")
          SecureField("Enter your password:", text: $password, onCommit: {
            print("Committed password: \(password)")
          })
            .background(Color(css: .white(0.9)))
            .padding(4)
          Button("Login") {
            print("Submitted username: \(username)")
            print("Submitted password: \(password)")
          }
          .cssWidth(100%)
          .padding(4)
          Link("Forgot password?", destination: URL(string: "https://www.example.com")!)
          .foregroundColor(.blue)
        }
          .cssWidth(.px(300))
          .cssHeight(.px(300))
          .cssBorderRadius(.px(10))
          .padding(.vertical, 10)
          .padding(.horizontal, 30)
          .background(Color(css: .hex(0x232323)))
        VStack(alignment: .leading, spacing: 2) {
          Text("Leave a comment:")
          TextEditor(text: $comment)
            .background(Color(css: .white(0.9)))
            .padding(4)
          Button(
            action: {
              print("Submitted comment: \(comment)")
            },
            label: {
              Text("Submit")
                .cssWidth(100%)
                .cssMinHeight(.px(40))
                .padding(4)
            }
          )
        }
          .cssWidth(.px(300))
          .cssHeight(.px(300))
          .cssBorderRadius(.px(10))
          .padding(.vertical, 10)
          .padding(.horizontal, 30)
          .background(Color(css: .hex(0x232323)))
      }
      .foregroundColor(Color(css: .hex(0xFFFFFF)))
      .cssFontFamily("Helvetica")
      .cssFontSize(.px(10))
      .background(Color(css: .hex(0x323232)))
    }
  }
}