/// A result builder for composing a collection of scenes into a single
/// composite scene.
@resultBuilder
public struct SceneBuilder {
  /// Passes a single scene written as a child scene through unmodified.
  public static func buildBlock<Content>(_ content: Content) -> Content where Content: Scene {
    return content
  }
}
