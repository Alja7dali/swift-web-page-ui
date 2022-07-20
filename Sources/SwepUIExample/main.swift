@_exported import SwepUI

SwepUIExampleApp.main()

let title = JSObject.global.document.createElement("title")
_ = JSObject.global.document.head.appendChild(title)
_ = title.appendChild(JSObject.global.document.createTextNode("SwepUI App"))

let icon = JSObject.global.document.createElement("link")
_ = icon.setAttribute("rel", "icon")
_ = icon.setAttribute("type", "image/x-icon")
_ = icon.setAttribute("href", "https://www.swift.org/apple-touch-icon.png")
_ = JSObject.global.document.head.appendChild(icon)

// // As of now there is no SwepUI does not provide a way to customize the head of the web page.
// // However, we can add whatever tags to head by bridging to the DOM via JavaScriptKit.
// func appendNewChildToHead(name: String, attributes: [String: String]) {
//   let child = JSObject.global.document.createElement(name)
//   for (key, value) in attributes {
//     _ = child.setAttribute(key, value)
//   }
//   _ = JSObject.global.document.head.appendChild(child)
// }

// appendNewChildToHead(name: "meta", attributes: ["name": "og:site_name", "content": "SwepUI"])
// appendNewChildToHead(name: "link", attributes: ["rel": "canonical", "href": "https://alja7dali.github.io/swift-web-page-ui"])
// appendNewChildToHead(name: "meta", attributes: ["name": "twitter:url", "content": "https://alja7dali.github.io/swift-web-page-ui"])
// appendNewChildToHead(name: "meta", attributes: ["name": "og:url", "content": "https://alja7dali.github.io/swift-web-page-ui"])
// appendNewChildToHead(name: "meta", attributes: ["name": "twitter:title", "content": "</SwepUI>"])
// appendNewChildToHead(name: "meta", attributes: ["name": "og:title", "content": "</SwepUI>"])
// appendNewChildToHead(name: "meta", attributes: ["name": "description", "content": "SwepUI App Example!"])
// appendNewChildToHead(name: "meta", attributes: ["name": "twitter:description", "content": "SwepUI App Example!"])
// appendNewChildToHead(name: "meta", attributes: ["name": "og:description", "content": "SwepUI App Example!"])
// appendNewChildToHead(name: "meta", attributes: ["name": "twitter:card", "content": "summary"])
// appendNewChildToHead(name: "link", attributes: ["rel": "shortcut icon", "href": "https://alja7dali.github.io/swift-web-page-ui/favicon.png", "type": "image/png"])
// appendNewChildToHead(name: "meta", attributes: ["name": "twitter:image", "content": "https://alja7dali.github.io/swift-web-page-ui/social.png"])
// appendNewChildToHead(name: "meta", attributes: ["name": "og:image", "content": "https://alja7dali.github.io/swift-web-page-ui/social.png"])
