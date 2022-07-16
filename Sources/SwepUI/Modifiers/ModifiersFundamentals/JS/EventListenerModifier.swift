public struct JSEventListenerModifier<Content: View>: ViewModifier {
  public typealias Body = Never
  
  public let name: String
  public let action: EventListenerAction
  
  public init(name: String, action: @escaping EventListenerAction) {
    self.name = name
    self.action = action
  }
  
  public func build(into builder: inout Builder) {
    builder.combine(last: EventListener(name: name, actions: [action]))
  }
}

extension View {
  public func jsEvent(name: String, preform action: @escaping EventListenerAction) -> some View {
    return modifier(JSEventListenerModifier(name: name, action: action))
  }
}