/// A custom parameter attribute that constructs views from closures.
///
/// You typically use ``ViewBuilder`` as a parameter attribute for child
/// view-producing closure parameters, allowing those closures to provide
/// multiple child views. For example, the following `contextMenu` function
/// accepts a closure that produces one or more views via the view builder.
///
///     func contextMenu<MenuItems: View>(
///         @ViewBuilder menuItems: () -> MenuItems
///     ) -> some View
///
/// Clients of this function can use multiple-statement closures to provide
/// several child views, as shown in the following example:
///
///     myView.contextMenu {
///         Text("Cut")
///         Text("Copy")
///         Text("Paste")
///         if isSymbol {
///             Text("Jump to Definition")
///         }
///     }
///
@resultBuilder
public struct ViewBuilder {

  /// Builds an empty view from a block containing no statements.
  public static func buildBlock() -> EmptyView {
    return EmptyView()
  }

  /// Passes a single view written as a child view through unmodified.
  ///
  /// An example of a single view written as a child view is
  /// `{ Text("Hello") }`.
  public static func buildBlock<Content>(_ content: Content) -> Content where Content: View {
    return content
  }

  /// Provides support for “if” statements in multi-statement closures,
  /// producing an optional view that is visible only when the condition
  /// evaluates to `true`.
  public static func buildIf<Content>(_ content: Optional<Content>) -> Optional<Content> where Content: View {
    return content
  }

  /// Provides support for "if" statements in multi-statement closures,
  /// producing conditional content for the "then" branch.
  public static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> Either<TrueContent, FalseContent> where TrueContent: View, FalseContent: View {
    return Either(first: first)
  }

  /// Provides support for "if-else" statements in multi-statement closures,
  /// producing conditional content for the "else" branch.
  public static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> Either<TrueContent, FalseContent> where TrueContent: View, FalseContent: View {
    return Either(second: second)
  }

  public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView<(C0, C1)> where C0: View, C1: View {
    return TupleView((c0, c1))
  }

  public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleView<(C0, C1, C2)> where C0: View, C1: View, C2: View {
    return TupleView((c0, c1, c2))
  }

  public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleView<(C0, C1, C2, C3)> where C0: View, C1: View, C2: View, C3: View {
    return TupleView((c0, c1, c2, c3))
  }

  public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleView<(C0, C1, C2, C3, C4)> where C0: View, C1: View, C2: View, C3: View, C4: View {
    return TupleView((c0, c1, c2, c3, c4))
  }

  public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleView<(C0, C1, C2, C3, C4, C5)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View {
    return TupleView((c0, c1, c2, c3, c4, c5))
  }

  public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleView<(C0, C1, C2, C3, C4, C5, C6)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View {
    return TupleView((c0, c1, c2, c3, c4, c5, c6))
  }

  public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View {
    return TupleView((c0, c1, c2, c3, c4, c5, c6, c7))
  }

  public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View {
    return TupleView((c0, c1, c2, c3, c4, c5, c6, c7, c8))
  }

  public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View {
    return TupleView((c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
  }

  /// Provides support for "if" statements with `#available()` clauses in
  /// multi-statement closures, producing conditional content for the "then"
  /// branch, i.e. the conditionally-available branch.
  public static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content: View {
    return AnyView(content)
  }
}