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
  var body: some Scene {
    WindowGroup {
      VStack(spacing: 0) {
        VStack(spacing: 0) {
          ZStack {
            Color.red.cssOpacity(0.5)
            Text("Hello, World!")
              .padding(.leading, 20)
              .foregroundColor(.white)
            Text("Hello, World!")
              .padding(.trailing, 20)
              .foregroundColor(.gray)
          }
        }
        .background(Color.black)
        Divider()
        VStack(spacing: 0) {
          ZStack {
            Color.red
            Text("Hello, World!")
              .padding([.leading, .top], 20)
              .foregroundColor(.white)
            Text("Hello, World!")
              .padding([.trailing, .bottom], 20)
              .foregroundColor(.gray)
          }
        }
        .overlay(Color.black.cssOpacity(0.5))
      }
      .cssFontFamily("Helvetica")
      .cssFontSize(.px(50))
    }
  }
}