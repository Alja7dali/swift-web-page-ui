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
      ZStack {
        HtmlDiv("SwepUIExampleApp1")
        HtmlDiv("SwepUIExampleApp2")
      }
      // .cssPadding(.px(200))
      .foregroundColor(.white)
      .background(Color.black)
      .cssFontFamily("Helvetica")
      .cssFontSize(.px(50))
    }
  }
}