struct SwepUIExampleApp: App {
  var body: some Scene {
    WindowGroup {
      RootView()
        .cssDisplay(.flex)
        .cssAlignItems(.center)
        .cssJustifyContent(.center)
        .cssHeight(.vh(100))
        .cssWidth(.vw(100))    
        .cssMinWidth(100%)
        .cssMinHeight(100%)
    }
  }
}