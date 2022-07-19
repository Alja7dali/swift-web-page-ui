import JavaScriptKit

public typealias Attribute = (key: String, value: Optional<String>)

public typealias EventListenerAction = (Array<JSValue>) -> ()

public typealias EventListener = (name: String, actions: Array<EventListenerAction>)

public func makeChildren<Content: View>(_ content: Content) -> Array<Builder> {
  var builder: Builder = .tag(name: "", attributes: [], eventListeners: [], children: [])
  content.build(into: &builder)
  guard case let .tag(_, _, _, children) = builder else { return [] }
  return children
}

public func makeChildren<Content: Scene>(_ content: Content) -> Array<Builder> {
  var builder: Builder = .tag(name: "", attributes: [], eventListeners: [], children: [])
  content.build(into: &builder)
  guard case let .tag(_, _, _, children) = builder else { return [] }
  return children
}

public indirect enum Builder {
  case tag(name: String, attributes: Array<Attribute>, eventListeners: Array<EventListener>, children: Array<Builder>)
  case plaintext(String)
  case rawtext(String)
  case comment(String)

  public mutating func mapLastChildren(_ transform: (inout Builder) -> Void) {
    guard let last = popLast() else {
      return
    }

    if case .tag(let name, let attributes, let eventListeners, var children) = last {
      var i = 0
      while i < children.count {
        transform(&children[i])
        i += 1
      }
      append(.tag(name: name, attributes: attributes, eventListeners: eventListeners, children: children))
    }
  }

  public mutating func combine<Content: View>(
    name: String,
    attributes: Array<Attribute> = .init(),
    eventListeners: Array<EventListener> = .init(),
    body: Content
  ) {
    append(.tag(name: name, attributes: attributes, eventListeners: eventListeners, children: makeChildren(body)))
  }

  public mutating func combine(plaintext text: String) {
    append(.plaintext(text))
  }

  public mutating func combine(rawtext text: String) {
    append(.rawtext(text))
  }

  public mutating func combine(comment text: String) {
    append(.comment(text))
  }

  public mutating func combine(last attribute: Attribute) {
    guard let last = popLast() else { return }
    append(last.appending(attribute: attribute))
  }

  public mutating func combine(last eventListener: EventListener) {
    guard let last = popLast() else { return }
    append(last.appending(eventListener: eventListener))
  }

  public mutating func combine(all attribute: Attribute) {
    self = map { $0.appending(attribute: attribute) }
  }

  public mutating func combine(all eventListener: EventListener) {
    self = map { $0.appending(eventListener: eventListener) }
  }

  internal func render(_ parent: JSValue) {
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
      children.forEach {
        $0.render(element)
      }
      _ = parent.appendChild(element)
    case let .plaintext(value):
      _ = parent.appendChild(document.createTextNode(value))
    case let .rawtext(value):
    _ = parent.appendChild(document.createCDATASection(value))
    case let .comment(value):
    _ = parent.appendChild(document.createComment(value))
    }
  }
}

extension Builder {
  fileprivate mutating func append(_ child: Builder) {
    if case let .tag(name, attributes, eventListeners, children) = self {
      self = .tag(name: name, attributes: attributes, eventListeners: eventListeners, children: children + [child])
    }
  }

  fileprivate mutating func popLast() -> Optional<Builder> {
    if case .tag(let name, let attributes, let eventListeners, var children) = self {
      let lastChild = children.popLast()
      self = .tag(name: name, attributes: attributes, eventListeners: eventListeners, children: children)
      return lastChild
    }
    return .none
  }

  fileprivate func map(_ transform: (Builder) -> Builder) -> Builder {
    if case let .tag(name, attributes, eventListeners, children) = self {
      return .tag(name: name, attributes: attributes, eventListeners: eventListeners, children: children.map(transform))
    } else {
      return self
    }
  }

  fileprivate func appending(attribute: Attribute) -> Builder {
    if case let .tag(name, attributes, eventListeners, children) = self {
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
    } else {
      return self
    }
  }

  fileprivate func appending(eventListener: EventListener) -> Builder {
    if case let .tag(name, attributes, eventListeners, children) = self {
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
    } else {
      return self
    }
  }
}