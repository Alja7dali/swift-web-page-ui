public protocol Identifiable {

  /// A type representing the stable identity of the entity associated with
  /// an instance.
  associatedtype ID: Hashable

  /// The stable identity of the entity associated with this instance.
  var id: Self.ID { get }
}

extension Identifiable where Self: AnyObject {
  public var id: ObjectIdentifier {
    return ObjectIdentifier(self)
  }
}

extension Identifiable where Self: CaseIterable {
  public var id: Self {
    return self
  }
}