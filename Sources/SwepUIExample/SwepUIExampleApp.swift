struct SwepUIExampleApp: App {
  var body: some Scene {
    WindowGroup {
      RootView()
        .display(.flex)
        .alignItems(.center)
        .justifyContent(.center)
        .height(.vh(100))
        .width(.vw(100))    
        .minWidth(100%)
        .minHeight(100%)
    }
  }
}