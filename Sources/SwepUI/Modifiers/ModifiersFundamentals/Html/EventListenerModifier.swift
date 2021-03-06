public struct EventListenerModifier<Content: View>: ViewModifier {
  public typealias Body = Never
  
  public let name: String
  public let action: EventListenerAction
  
  public init(name: String, action: @escaping EventListenerAction) {
    self.name = name
    self.action = action
  }
  
  public func body(content: Content) -> some View {
    return content.modifier(self)
  }

  public func build(into builder: inout Builder) {
    builder.combine(last: EventListener(name: name, actions: [action]))
  }
}

extension View {
  public func onEvent(name: String, preform action: @escaping EventListenerAction) -> some View {
    return modifier(EventListenerModifier(name: name, action: action))
  }
}