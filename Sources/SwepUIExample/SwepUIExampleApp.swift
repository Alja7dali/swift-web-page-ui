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
      HStack {
        VStack {
          ZStack {
            Text("SwepUIExampleApp1")
              .foregroundColor(.orange)
              .cssFontFamily("Helvetica")
              .cssOpacity(0.5)
            Text("SwepUIExampleApp2")
              .foregroundColor(.indigo)
          }
          ZStack {
            Text("SwepUIExampleApp1")
              .foregroundColor(.red)
              .cssOpacity(0.5)
            Text("SwepUIExampleApp2")
              .foregroundColor(.blue)
              .cssFontFamily("Helvetica")
          }
        }
        VStack {
          ZStack {
            Text("SwepUIExampleApp1")
              .foregroundColor(.red)
              .cssOpacity(0.5)
            Text("SwepUIExampleApp2")
              .foregroundColor(.blue)
              .cssFontFamily("Helvetica")
          }
          ZStack {
            Text("SwepUIExampleApp1")
              .foregroundColor(.orange)
              .cssFontFamily("Helvetica")
              .cssOpacity(0.5)
            Text("SwepUIExampleApp2")
              .foregroundColor(.indigo)
          }
        }
      }
      // .cssPadding(.px(200))
      .background(Color.black)
      .cssFontSize(.px(50))
    }
  }
}