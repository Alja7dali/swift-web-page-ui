/// An interface for a stored variable that updates an external property of a
/// view.
///
/// The view gives values to these properties prior to recomputing the view's
/// ``View/body-swift.property``.
public protocol DynamicProperty {

  /// Updates the underlying value of the stored value.
  ///
  /// SwepUI calls this function before rendering a view's
  /// ``View/body-swift.property`` to ensure the view has the most recent
  /// value.
  func update()
}