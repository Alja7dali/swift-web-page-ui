import JavaScriptKit

// FIXME: This is just a work around aka lazy solution.
internal var _AppStateRenderer: Optional<() -> Void> = .none
internal var _AppStateStorage: Dictionary<UInt, Any> = .init()
internal final class _AppStateIdentifier {
  static var id: UInt = 0
  static func getNextId() -> UInt {
    id += 1
    return id
  }
  static func reset() {
    id = 0
  }
}

internal func _AppStateLauncher<A: App>(_ app: A) {
  print("SwepUI: Starting app...")

  let style = JSObject.global.document.createElement("style")
  _ = JSObject.global.document.head.appendChild(style)

  _ = style.appendChild(JSObject.global.document.createTextNode(
    """
    *,*::before,*::after {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      -webkit-touch-callout: none; /* iOS Safari */
        -webkit-user-select: none; /* Safari */
         -khtml-user-select: none; /* Konqueror HTML */
           -moz-user-select: none; /* Old versions of Firefox */
            -ms-user-select: none; /* Internet Explorer/Edge */
                user-select: none; /* Non-prefixed version, currently
                                      supported by Chrome, Edge, Opera and Firefox */

      display: flex;
      align-items: stretch;
      justify-content: center;
      height: 100vh;
      width: 100vw;
    }
    """
  ))

  let title = JSObject.global.document.createElement("title")
  _ = JSObject.global.document.head.appendChild(title)
  _ = title.appendChild(JSObject.global.document.createTextNode("SwepUI App"))

  let icon = JSObject.global.document.createElement("link")
  _ = icon.setAttribute("rel", "icon")
  _ = icon.setAttribute("type", "image/x-icon")
  _ = icon.setAttribute("href", "https://www.swift.org/apple-touch-icon.png")
  _ = JSObject.global.document.head.appendChild(icon)

  let makeDom = { (children: Array<Builder>) -> Builder in
    return Builder.tag(
      name: "div",
      attributes: [
        ("style", "flex-grow: 1;")
      ],
      eventListeners: [],
      children: children
    )
  }

  var vdom = makeDom([])
  var dom = render(vdom)
  _ = JSObject.global.document.body.appendChild(dom)

  ///var renderingAttemptCount: UInt = 0
  _AppStateRenderer = {
    ///renderingAttemptCount += 1
    ///print("SwepUI: Rendering app count(\(renderingAttemptCount))")
    _AppStateIdentifier.reset()

    let newVDom = makeDom(makeChildren(app.body))
    let patch = diff(vdom, newVDom)
    dom = patch(dom)
    vdom = newVDom
  }
  // render for first time
  _AppStateRenderer?()
}