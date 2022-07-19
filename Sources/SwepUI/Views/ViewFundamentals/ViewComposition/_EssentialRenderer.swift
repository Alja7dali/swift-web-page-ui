// https://dev.to/ycmjason/building-a-simple-virtual-dom-from-scratch-3d05

func render(_ node: Builder) -> JSValue {
  switch node {
  case let .tag(name, attributes, eventListeners, children):
    let element = JSObject.global.document.createElement(name)
    for attribute in attributes {
      _ = element.setAttribute(attribute.key, attribute.value)
    }
    for eventListener in eventListeners {
      _ = element.addEventListener(eventListener.name, JSClosure { parameters in
        eventListener.actions.forEach { action in
          action(parameters)
        }
        return JSValue.undefined
      })
    }
    for child in children {
    _ = element.appendChild(render(child))
    }
    return element
  case let .plaintext(string):
    return JSObject.global.document.createTextNode(string)
  case let .rawtext(string):
    return JSObject.global.document.createTextNode(string)
  case let .comment(string):
    return JSObject.global.document.createComment(string)
  }
}

func diff(
  _ oldTree: Builder,
  _ newTree: Builder
) -> (JSValue) -> (JSValue) {

  func changed(
    _ oldNode: Builder,
    _ newNode: Builder
  ) -> Bool {
    switch (oldNode, newNode) {
    case let (.tag(oldName, _, _, _), .tag(newName, _, _, _)):
      return oldName != newName
    case let (.plaintext(oldValue), .plaintext(newValue)):
      return oldValue != newValue
    case let (.rawtext(oldValue), .rawtext(newValue)):
      return oldValue != newValue
    case let (.comment(oldValue), .comment(newValue)):
      return oldValue != newValue
    default: return true
    }
  }

  func diffAttributes(
    _ oldAttributes: Array<Attribute>,
    _ newAttributes: Array<Attribute>
  ) -> (JSValue) -> (JSValue) {
    return { element in
      newAttributes
        .filter { attribute in
          !oldAttributes.contains { $0.key == attribute.key }
        }
        .forEach { attribute in
          _ = element.setAttribute(attribute.key, attribute.value)
        }
      return element
    }
  }

  func diffEventListeners(
    _ oldEventListeners: Array<EventListener>,
    _ newEventListeners: Array<EventListener>
  ) -> (JSValue) -> (JSValue) {
    return { element in
      newEventListeners
        .filter { eventListener in
          !oldEventListeners.contains { $0.name == eventListener.name }
        }
        .forEach { eventListener in
          _ = element.addEventListener(eventListener.name, JSClosure { parameters in
            eventListener.actions.forEach { action in
              action(parameters)
            }
            return JSValue.undefined
          })
        }
      return element
    }
  }

  func diffChildren(
    _ oldChildren: Array<Builder>,
    _ newChildren: Array<Builder>
  ) -> (JSValue) -> (JSValue) {
    var childrenPatches = Array<(JSValue) -> (JSValue)>()
    oldChildren.enumerated().forEach { (index, oldChild) in
      let newChild = newChildren[index]
      childrenPatches.append(diff(oldChild, newChild))
    }

    var additionalPatches = Array<(JSValue) -> (JSValue)>()
    newChildren[oldChildren.count...].enumerated().forEach { (index, newChild) in
      additionalPatches.append({ element in
        _ = element.appendChild(render(newChild))
        return element
      })
    }

    return { parent in
      // since childPatches are expecting the $child, not $parent,
      // we cannot just loop through them and call patch($parent)
      guard let count = parent.childNodes.length.number else {
        print("here is the error")
        return parent
      }
      var i = 0
      while i < Int(count) {
        let child = parent.childNodes[i]
        let patch = childrenPatches[i]
        _ = patch(child)
        i += 1
      }
      additionalPatches.forEach { patch in
        _ = patch(parent)
      }
      return parent
    }
  }

  switch (oldTree, newTree) {
  case let (.tag(oldName, oldAttributes, oldEventListeners, oldChildren), .tag(newName, newAttributes, newEventListeners, newChildren)):
    if oldName != newName {
      // we assume that they are totally different and 
      // will not attempt to find the differences.
      // simply render the newVTree and mount it.
      return { node in
        let newNode = render(newTree)
        _ = node.replaceWith(newNode)
        return newNode
      }
    } else {
      // diff attributes && children
      let patchAttributes = diffAttributes(oldAttributes, newAttributes)
      let patchEventListeners = diffEventListeners(oldEventListeners, newEventListeners)
      let patchChildren = diffChildren(oldChildren, newChildren)
      return { node in
        _ = patchAttributes(node)
        _ = patchEventListeners(node)
        _ = patchChildren(node)
        return node
      }
    }

  default:
    if changed(oldTree, newTree) {
      // could be 2 cases:
      // 1. both trees are string and they have different values
      // 2. one of the trees is text node and
      //    the other one is elem node
      // Either case, we will just render(newVTree)!
      return { node in
        let newNode = render(newTree)
        _ = node.replaceWith(newNode)
        return newNode
      }
    } else {
      // this means that both trees are string
      // and they have the same values
      return { node in
        return node
      }
    }
  }
}
