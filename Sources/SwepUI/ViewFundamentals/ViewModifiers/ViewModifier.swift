public protocol ViewModifier {
  associatedtype Body: View
  func body<Content: View>(content: Content) -> Body
}

// extension ViewModifier where Body == Never {
//   public func body<Content: View>(content: Content) -> Body {
//     fatalError("\(Self.self).body(content:) should never be called")
//   }
// }