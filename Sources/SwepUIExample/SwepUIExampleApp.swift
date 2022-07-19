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
      VStack {
        VStack(alignment: .leading, spacing: 2) {
          Text("Username:")
          TextField("Enter your username:", text: $username, onCommit: {
            print("Committed username: \(username)")
          })
          Text("Password:")
          SecureField("Enter your password:", text: $password, onCommit: {
            print("Committed password: \(password)")
          })
          Text("Leave a comment:")
          TextEditor(text: $comment)
        }
        .cssWidth(.px(200))
        .cssHeight(.px(200))
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