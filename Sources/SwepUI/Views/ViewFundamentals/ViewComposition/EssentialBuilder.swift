import JavaScriptKit

public typealias Attribute = (key: String, value: Optional<String>)

public typealias EventListenerAction = (Array<JSValue>) -> ()

public typealias EventListener = (name: String, actions: Array<EventListenerAction>)

public struct Builder {
  fileprivate indirect enum Node {
    case tag(name: String, attributes: Array<Attribute>, eventListeners: Array<EventListener>, children: Builder)
    case plaintext(String)
    case rawtext(String)
    case comment(String)
  }

  private var nodes: Array<Node> = []

  public init() {}

  public init<Content: View>(_ content: Content) {
    content.build(into: &self)
  }

  public mutating func mapLastChildren(_ transform: (inout Builder) -> Void) {
    guard let last = nodes.last else {
      return
    }

    if case let .tag(name, attributes, eventListeners, children) = last {
      var builder = children
      transform(&builder)
      nodes[nodes.count - 1] = .tag(name: name, attributes: attributes, eventListeners: eventListeners, children: builder)
    }
  }

  public mutating func combine<Content: View>(
    name: String,
    attributes: Array<Attribute> = .init(),
    eventListeners: Array<EventListener> = .init(),
    body: Content
  ) {
    nodes.append(.tag(name: name, attributes: attributes, eventListeners: eventListeners, children: Builder(body)))
  }

  public mutating func combine(plaintext text: String) {
    nodes.append(.plaintext(text))
  }

  public mutating func combine(rawtext text: String) {
    nodes.append(.rawtext(text))
  }

  public mutating func combine(comment text: String) {
    nodes.append(.comment(text))
  }

  public mutating func combine(last attribute: Attribute) {
    guard let last = nodes.popLast() else { return }
    nodes.append(last.appending(attribute: attribute))
  }

  public mutating func combine(last eventListener: EventListener) {
    guard let last = nodes.popLast() else { return }
    nodes.append(last.appending(eventListener: eventListener))
  }

  public mutating func combine(all attribute: Attribute) {
    nodes = nodes.map { $0.appending(attribute: attribute) }
  }

  public mutating func combine(all eventListener: EventListener) {
    nodes = nodes.map { $0.appending(eventListener: eventListener) }
  }

  internal func render(_ document: JSValue) {
    nodes.forEach { $0.render(document) }
  }
}

extension Builder.Node {
  fileprivate func appending(attribute: Attribute) -> Builder.Node {
    switch self {
    case let .tag(name, attributes, eventListeners, children):
      var updatedAttributes = Array<Attribute>()
      updatedAttributes.reserveCapacity(attributes.count + 1)
      var values = Array<String>()
      for (k, v) in attributes {
        if k != attribute.key {
          updatedAttributes.append(Attribute(key: k, value: v))
        } else {
          values.append(v ?? "")
        }
      }
      values.append(attribute.value ?? "")
      updatedAttributes.append(Attribute(key: attribute.key, value: values.joined(separator: "")))
      return .tag(name: name, attributes: updatedAttributes, eventListeners: eventListeners, children: children)
    case let .plaintext(value):
      return .plaintext(value)
    case let .rawtext(value):
      return .rawtext(value)
    case let .comment(value):
      return .comment(value)
    }
  }

  fileprivate func appending(eventListener: EventListener) -> Builder.Node {
    switch self {
    case let .tag(name, attributes, eventListeners, children):
      var updatedEventListeners = Array<EventListener>()
      updatedEventListeners.reserveCapacity(attributes.count + 1)
      var actions = Array<EventListenerAction>()
      for (n, a) in eventListeners {
        if n != eventListener.name {
          updatedEventListeners.append(EventListener(name: n, actions: a))
        } else {
          actions.append(contentsOf: a)
        }
      }
      actions.append(contentsOf: eventListener.actions)
      updatedEventListeners.append(EventListener(name: eventListener.name, actions: actions))
      return .tag(name: name, attributes: attributes, eventListeners: updatedEventListeners, children: children)
    case let .plaintext(value):
      return .plaintext(value)
    case let .rawtext(value):
      return .rawtext(value)
    case let .comment(value):
      return .comment(value)
    }
  }

  fileprivate func render(_ parent: JSValue) {
    let document = JSObject.global.document
    switch self {
    case let .tag(name, attributes, eventListeners, children):
      let element = document.createElement(name)
      for attribute in attributes {
        _ = element.setAttribute(attribute.key, attribute.value)
      }
      for eventListener in eventListeners {
        _ = element.addEventListener(eventListener.name, JSClosure { parameters in
          for action in eventListener.actions {
            action(parameters)
          }
          return JSValue.undefined
        })
      }
      children.render(element)
      _ = parent.appendChild(element)
    case let .plaintext(value):
      _ = parent.appendChild(document.createTextNode(value))
    case let .rawtext(value):
    _ = parent.appendChild(document.createTextNode(value))
    case let .comment(value):
    _ = parent.appendChild(document.createTextNode("<!-- \(value) -->"))
    }
  }
}