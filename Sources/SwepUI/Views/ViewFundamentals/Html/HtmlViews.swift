/// ------------------------------------------------------------------------ ///
/// MARK: <a>
/// The `<a>` element represents either a hyperlink (a hypertext anchor)
/// labeled by its contents, or a placeholder for where a link might
/// otherwise have been placed, if it had been relevant, consisting of just
/// the element's contents.
public struct A<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "a", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <abbr>
/// The `<abbr>` element represents an abbreviation or acronym, optionally
/// with its expansion.
public struct Abbr<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "abbr", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <address>
/// The `<address>` element represents contact information for a person,
/// people or organization. It should include physical and/or digital
/// location/contact information and a means of identifying a person(s) or
/// organization the information pertains to.
public struct Address<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "address", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <area>
/// The `<area>` element represents either a hyperlink with some text and
/// a corresponding area on an image
/// map, or a dead area on an image map.
public struct Area: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "area", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <article>
/// The `<article>` element represents a complete, or self-contained,
/// composition in a document, page, application, or site. This could be
/// a magazine, newspaper, technical or scholarly article, an essay or
/// report, a blog or other social media post.
public struct Article<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "article", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <aside>
/// The `<aside>` element represents a section of a page that consists of
/// content that is tangentially related to the content of the parenting
/// sectioning content, and which could be considered separate from that
/// content. Such sections are often represented as sidebars in printed
/// typography.
public struct Aside<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "aside", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <audio>
/// An `<audio>` element represents a sound or audio stream.
public struct Audio<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAudio { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio, I: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio, I: ChildOfAudio, J: ChildOfAudio>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "audio", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <b>
/// The `<b>` element represents a span of text to which attention is being
/// drawn for utilitarian purposes without conveying any extra importance
/// and with no implication of an alternate voice or mood, such as key words
/// in a document abstract, product names in a review, actionable words in
/// interactive text-driven software, or an article lede.
public struct B<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "b", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <base>
/// The `<base>` element allows authors to specify the document base URL for the
/// purposes of parsing URLs, and the name of the default browsing context for
/// the purposes of following hyperlinks. The element does not represent any
/// content beyond this information.
public struct Base: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "base", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <bdi>
/// The `<bdi>` element represents a span of text that is to be isolated from
/// its surroundings for the purposes of bidirectional text formatting.
public struct Bdi<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "bdi", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <bdo>
/// The `<bdo>` element represents explicit text directionality formatting
/// control for its children. It allows authors to override the Unicode
/// bidirectional algorithm by explicitly specifying a direction override.
public struct Bdo<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "bdo", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <blockquote>
/// The `<blockquote>` element represents content that is quoted from another
/// source, optionally with a citation which must be within a `<footer>` or
/// `<cite>` element, and optionally with in-line changes such as annotations
/// and abbreviations.
public struct Blockquote<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "blockquote", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <body>
/// The `<body>` element represents the content of the document.
public struct Body<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "body", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <br>
/// The `<br>` element represents a line break.
public struct Br: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "br", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <button>
/// The `<button>` element represents a control allowing a user to trigger
/// actions, when enabled. It is labeled by its content.
public struct Button<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "button", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <canvas>
/// The `<canvas>` element provides scripts with a resolution-dependent
/// bitmap canvas, which can be used for rendering graphs, game graphics,
/// art, or other visual images on the fly.
/// TODO: provide a swiftui-way to draw stuff over js-script
///       https://www.w3schools.com/html/html5_canvas.asp
///       https://github.com/mkj-is/PathBuilder
public struct Canvas<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "canvas", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <caption>
/// The `<caption>` element represents the title of the table that is its
/// parent, if it has a parent and that is a table element.
public struct Caption<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "caption", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <cite>
/// The `<cite>` element represents a reference to a creative work. It must
/// include the title of the work or the name of the author (person, people
/// or organization) or an URL reference, or a reference in abbreviated form
/// as per the conventions used for the addition of citation metadata.
public struct Cite<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "cite", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <code>
/// The `<code>` element represents a fragment of computer code. This could
/// be an XML element name, a file name, a computer program, or any other
/// string that a computer would recognize.
public struct Code<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "code", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <col>
/// If a `<col>` element has a parent and that is a `<colgroup>` element
/// that itself has a parent that is a `<table>` element, then the `<col>`
/// element represents one or more columns in the column group represented
/// by that `<colgroup>`.
public struct Col: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "col", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <colgroup>
/// The `<colgroup>` element represents a group of one or more columns in the
/// `table` that is its parent, if it has a parent and that is a `<table>`
/// element.
public struct Colgroup<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfColgroup { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup, I: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup, I: ChildOfColgroup, J: ChildOfColgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "colgroup", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dd>
/// The `<dd>` element represents a description, part of a term-description
/// group in a description list (`<dl>` element).
public struct Dd<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "dd", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <del>
/// The `<del>` element represents a removal from the document.
public struct Del<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "del", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <details>
/// The `<details>` element represents a disclosure widget from which the
/// user can obtain additional information or controls.
public struct Details<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfDetails { makeContent = content }

  /// Summary, ChildOfDetails ...
  public init<A: VariationOfSummary, B: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails, I: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails, I: ChildOfDetails, J: ChildOfDetails>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "details", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dfn>
/// The `<dfn>` element represents the defining instance of a term. The
/// term-description group, `<p>`, `<li>` or `<section>` element that is
/// the nearest ancestor of the `<dfn>` element must also contain the
/// definition(s) for the term given by the `<dfn>` element.
public struct Dfn<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "dfn", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <div>
/// The `<div>` element has no special meaning at all. It represents
/// its children. It can be used with the `class`, `lang`, and `title`
/// attributes to mark up semantics common to a group of consecutive elements.
public struct Div<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "div", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dl>
/// The `<dl>` element represents a description list of zero or more
/// term-description groups. Each term-description group consists of
/// one or more terms (represented by `<dt>` elements) possibly as
/// children of a `<div>` element child, and one or more descriptions
/// (represented by `<dd>` elements possibly as children of a `<div>`
/// element child), ignoring any nodes other than `<dt>` and `<dd>`
/// element children, and `<dt>` and `<dd>` elements that are children
/// of `<div>` element children within a single `<dl>` element.
public struct Dl<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfDl { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl, I: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl, I: ChildOfDl, J: ChildOfDl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "dl", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dt>
/// The `<dt>` element represents a term, part of a term-description group
/// in a description list (`<dl>` element).
public struct Dt<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "dt", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <em>
/// The `<em>` element represents stress emphasis of its contents.
public struct Em<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "em", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <embed>
/// The `<embed>` element provides an integration point for an external
/// (typically non-HTML) application or interactive content.
public struct Embed: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "embed", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <fieldset>
/// The `<fieldset>` element represents a set of form controls optionally
/// grouped under a common name.
public struct Fieldset<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfFieldset { makeContent = content }

  /// Legend, ChildOfFieldset ...
  public init<A: VariationOfLegend, B: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset, I: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset, I: ChildOfFieldset, J: ChildOfFieldset>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "fieldset", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <figcaption>
/// The `<figcaption>` element represents a caption or legend for the rest of
/// the contents of the `<figcaption>` element's parent `<figure>` element, if
/// any.
public struct Figcaption<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "figcaption", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <figure>
/// The `<figure>` element represents some flow content, optionally with
/// a caption, that is self-contained (like a complete sentence) and is
/// typically referenced as a single unit from the main flow of the document.
public struct Figure<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfFigure { makeContent = content }

  /// Figcaption, ChildOfFigure ...
  public init<A: VariationOfFigcaption, B: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure, I: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure, I: ChildOfFigure, J: ChildOfFigure>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "figure", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <footer>
/// The `<footer>` element represents a footer for its nearest ancestor
/// `<main>` element or sectioning content or sectioning root element.
/// A footer typically contains information about its section, such as
/// who wrote it, links to related documents, copyright data, and the like.
public struct Footer<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "footer", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <form>
/// The `<form>` element represents a collection of form-associated
/// elements, some of which can represent editable values that can be
/// submitted to a server for processing.
public struct Form<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "form", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h1>
/// These elements represent headings for their sections. The `<h1>`
/// element has the highest rank.
public struct H1<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h1", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h2>
/// These elements represent headings for their sections. The `<h2>`
/// element has the second-highest rank.
public struct H2<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h2", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h3>
/// These elements represent headings for their sections. The `<h3>`
/// element has the third-highest rank.
public struct H3<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h3", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h4>
/// These elements represent headings for their sections. The `<h4>`
/// element has the forth-highest rank.
public struct H4<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h4", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h5>
/// These elements represent headings for their sections. The `<h5>`
/// element has the fifth-highest rank.
public struct H5<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h5", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h6>
/// These elements represent headings for their sections. The `<h6>`
/// element has the lowest rank.
public struct H6<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "h6", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <head>
/// The `<head> element represents a collection of metadata for the `Document`.
public struct Head<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfHead { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead, I: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead, I: ChildOfHead, J: ChildOfHead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "head", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <header>
/// The `<header>` element represents introductory content for its nearest
/// ancestor `<main>` element or sectioning content or sectioning root
/// element. A `<header>` typically contains a group of introductory or
/// navigational aids.
public struct Header<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "header", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <hr>
/// The `<hr>` element represents a paragraph-level thematic break, e.g.,
/// a scene change in a story, or a transition to another topic within a
/// section of a reference book.
public struct Hr: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "hr", body: EmptyView())
  }
}

// TODO
// /// ------------------------------------------------------------------------ ///
// /// MARK: <html>
// /// The `<html>` element represents the root of an HTML document.
// public struct Html<Content: HtmlNode>: Tag {
//   public static var tag: StaticString { return "html" }
//   public let attributes: Array<Attribute>
//   public let content: Content
//   public init(_ a: Array<Attribute>, _ c: Content) {
//     attributes = a; content = c
//   }

//   public init<A>(@HtmlNodeBuilder _ c: () -> Content) where Content == Body<A> {
//     attributes = []; content = c()
//   }

//   public init<A: VariationOfHead, B: VariationOfBody>(@HtmlNodeBuilder _ c: () -> Content) where Content == TupleView<(A, B)> {
//     attributes = []; content = c()
//   }
// }

/// ------------------------------------------------------------------------ ///
/// MARK: <i>
/// The `<i>` element represents a span of text in an alternate voice or
/// mood, or otherwise offset from the normal prose in a manner indicating
/// a different quality of text, such as a taxonomic designation, a technical
/// term, an idiomatic phrase from another language, transliteration, a thought,
/// or a ship name in Western texts.
public struct I<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "i", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <iframe>
/// The `<iframe>` element represents a nested browsing context.
public struct Iframe<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "iframe", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <img>
/// An `<img>` element represents an image and its fallback content.
public struct Img: View {
  public typealias Body = Never

  private let attributes: Array<Attribute>

  public init(src: String, alt: String) {
    attributes = [("src", src), ("alt", alt)]
  }

  public init(base64: String, type: MediaType, alt: String) {
    self.init(src: "data:\(type.description);base64,\(base64)", alt: alt)
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "img", attributes: attributes, body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <input>
/// The `<input>` element represents a typed data field, usually with a
/// form control to allow the user to edit the data.
public struct Input: View {
  public typealias Body = Never

  private let attributes: Array<Attribute>

  public init(type value: InputType) {
    attributes = [("type", value.rawValue)]
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "input", attributes: attributes, body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ins>
/// The `<ins>` element represents an addition to the document.
public struct Ins<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "ins", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <kbd>
/// The `<kbd>` element represents user input (typically keyboard input,
/// although it may also be used to represent other input, such as voice
/// commands).
public struct Kbd<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "kbd", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <label>
/// The `<label>` element represents a caption in a user interface.
/// The caption can be associated with a specific form control, known
/// as the `<label>` element's **labeled control**, either using the
/// `for` attribute, or by putting the form control inside the `<label>`
/// element itself.
public struct Label<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "label", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <legend>
/// The `<legend>` element represents a caption for the rest of the contents
/// of the `<legend>` element's parent `<fieldset>` element, if any.
public struct Legend<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "legend", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <li>
/// The `<li>` element represents a list item. If its parent element is an
/// `<ol>`, or `<ul>`, then the element is an item of the parent element's list,
/// as defined for those elements. Otherwise, the list item has no defined
/// list-related relationship to any other `<li>` element.
public struct Li<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "li", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <link>
/// The `<link>` element allows authors to link their document to other
/// resources.
public struct Link: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "link", body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <main>
/// The `<main>` element represents the main content of the `<body>` of
/// a document or application.
public struct Main<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "main", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <map>
/// The `<map>` element, in conjunction with an `<img>` element and any
/// `<area>` element descendants, defines an image map. The element represents
/// its children.
public struct Map<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  private let attributes: Array<Attribute>

  public init(name: String, @ViewBuilder content: @escaping () -> Content) where Content: ChildOfMap { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap, I: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { attributes = [("name", name)]; makeContent = content }
  public init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap, I: ChildOfMap, J: ChildOfMap>(name: String, @ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { attributes = [("name", name)]; makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "map", attributes: attributes, body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <mark>
/// The `<mark>` element represents a run of text in one document marked
/// or highlighted for reference purposes, due to its relevance in another
/// context. When used in a quotation or other block of text referred to
/// from the prose, it indicates a highlight that was not originally present
/// but which has been added to bring the reader's attention to a part of
/// the text that might not have been considered important by the original
/// author when the block was originally written, but which is now under
/// previously unexpected scrutiny. When used in the main prose of a document,
/// it indicates a part of the document that has been highlighted due to its
/// likely relevance to the user's current activity.
public struct Mark<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "mark", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <meta>
/// The `<meta>` element represents a meta-types.
public struct Meta: View {
  public typealias Body = Never

  private let attributes: Array<Attribute>

  public init(contentType: MediaType) {
    attributes = [("http-equiv", "content-type"), ("content", contentType.description)]
  }

  public init(defaultStyle: String) {
    attributes = [("http-equiv", "default-stype"), ("content", defaultStyle)]
  }

  public init(refresh: Int) {
    attributes = [("http-equiv", "refresh"), ("content", String(refresh))]
  }

  public init(applicationName: String) {
    attributes = [("name", "application-name"), ("content", applicationName)]
  }

  public init(author: String) {
    attributes = [("name", "author"), ("content", author)]
  }

  public init(description: String) {
    attributes = [("name", "description"), ("content", description)]
  }

  public init(generator: String) {
    attributes = [("name", "generator"), ("content", generator)]
  }

  public init(keywords: [String]) {
    let sanitizedKeywords = keywords.map { $0.replacingOccurrences(of: ",", with: "&#44;") }
    attributes = [("name", "keywords"), ("content", sanitizedKeywords.joined(separator: ","))]
  }

  public init(name: String, content: String) {
    attributes = [("name", name), ("content", content)]
  }

  public init(property: String, content: String) {
    attributes = [("property", property), ("content", content)]
  }

  public init(viewport prop: Meta.Viewport, _ props: Meta.Viewport...) {
    attributes = [("name", "viewport"), ("content", ([prop] + props).map { $0.rawValue }.joined(separator: ","))]
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "meta", attributes: attributes, body: EmptyView())
  }

  public enum Viewport {
    case height(Height)
    case initialScale(Double)
    case maximumScale(Double)
    case minimumScale(Double)
    case userScalable(Bool)
    case width(Width)

    public enum Height: ExpressibleByIntegerLiteral {
      case deviceHeight
      case px(Int)

      public var rawValue: String {
        switch self {
        case .deviceHeight:
          return "device-height"
        case let .px(px):
          return "\(px)"
        }
      }

      public init(integerLiteral value: Int) {
        self = .px(value)
      }
    }

    public enum Width {
      case deviceWidth
      case px(Int)

      public var rawValue: String {
        switch self {
        case .deviceWidth:
          return "device-width"
        case let .px(px):
          return "\(px)"
        }
      }

      public init(integerLiteral value: Int) {
        self = .px(value)
      }
    }

    public var rawValue: String {
      switch self {
      case let .height(px):
        return "height=" + px.rawValue
      case let .initialScale(scale):
        return "initial-scale=\(scale)"
      case let .maximumScale(scale):
        return "maximum-scale=\(scale)"
      case let .minimumScale(scale):
        return "minimum-scale=\(scale)"
      case let .userScalable(isUserScalable):
        return "user-scalable=\(isUserScalable ? "yes" : "no")"
      case let .width(px):
        return "width=" + px.rawValue
      }
    }
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <meter>
/// The `<meter>` element represents a scalar measurement within a known
/// range, or a fractional value; for example disk usage, the relevance of
/// a query result, or the fraction of a voting population to have selected
/// a particular candidate.
public struct Meter<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  private let attributes: Array<Attribute>

  public init(value: Double, @ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    attributes = [("value", String(value))]
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "meter", attributes: attributes, body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <nav>
/// The `<nav>` element represents a section of a page that links to other
/// pages or to parts within the page: a section with navigation links.
public struct Nav<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "nav", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <noscript>
/// The `<noscript>` element allows authors to tell users that their browser
/// doesn't support dynamic script and data blocks.
public struct Noscript<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "noscript", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <object>
/// The `<object>` element can represent an external resource, which,
/// depending on the type of the resource, will either be treated as an
/// image, as a nested browsing context, or as an external resource to be
/// processed by a plugin.
/// TODO: Required attribute "data" or "type"
public struct Object<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfObject { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject, I: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject, I: ChildOfObject, J: ChildOfObject>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "object", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ol>
/// The `<ol>` element represents a list of items, where the items have
/// been intentionally ordered, such that changing the order would change
/// the meaning of the document.
public struct Ol<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfOl { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl, I: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl, I: ChildOfOl, J: ChildOfOl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "ol", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <optgroup>
/// The `<optgroup>` element represents a group of `<option>` elements
/// with a common label.
public struct Optgroup<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfOptgroup { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup, I: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup, I: ChildOfOptgroup, J: ChildOfOptgroup>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "optgroup", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <option>
/// The `<option>` element represents an option in a `<select>` element or as
/// part of a list of suggestions in a datalist element.
public struct Option: View {
  public typealias Body = Plaintext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "option", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <output>
/// The `<output>` element represents the result of a calculation performed
/// by the application, or the result
/// of a user action.
public struct Output<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "output", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <p>
/// The `<p>` element represents a paragraph.
public struct P<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "p", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <param>
/// The `<param>` element defines parameters for plugins invoked by object
/// elements. It does not represent anything on its own.
public struct Param: View {
  public typealias Body = Never

  private let attributes: Array<Attribute>

  public init(name: String, value: String) {
    attributes = [("name", name), ("value", value)]
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "param", attributes: attributes, body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <picture>
/// The `<picture>` element represents a picture.
public struct Picture<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfPicture { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture, I: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture, I: ChildOfPicture, J: ChildOfPicture>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "picture", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <pre>
/// The `<pre>` element represents a block of preformatted text, in which
/// structure is represented by typographic conventions rather than by elements.
public struct Pre<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "pre", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <progress>
/// The `<progress>` element represents the completion progress of a task.
public struct Progress<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  private let attributes: Array<Attribute>

  public init(value: Double, @ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    attributes = [("value", String(value))]
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "progress", attributes: attributes, body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <q>
/// The `<q>` element represents some phrasing content quoted from another
/// source.
public struct Q<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "q", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <s>
/// The `<s>` element represents contents that are no longer accurate
/// or no longer relevant.
public struct S<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "s", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <samp>
/// The `samp` element represents sample or quoted output from another
/// program or computing system.
public struct Samp<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "samp", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <script>
/// The `<script>` element allows authors to include dynamic script and
/// data blocks in their documents. The element does not represent content
/// for the user.
public struct Script: View {
  public typealias Body = Rawtext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "script", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <section>
/// The `<section>` element represents a generic section of a document or
/// application. A section, in this context, is a thematic grouping of
/// content. Each `<section>` should be identified, typically by including
/// a heading (`<h1>`-`<h6>` element) as a child of the section element.
public struct Section<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "section", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <select>
/// The `<select>` element represents a control for selecting amongst a
/// set of options.
public struct Select<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfSelect { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect, I: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect, I: ChildOfSelect, J: ChildOfSelect>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "select", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <small>
/// The `<small>` element represents side comments such as small print.
public struct Small<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "small", body: body)
  }
}

// TODO: this is looks ugly, make it better
/// ------------------------------------------------------------------------ ///
/// MARK: <source>
/// The `<source>` element is used to specify multiple media resources for
/// media elements, such as `<video>`, `<audio>`, and `<picture>`.
public struct Source<Parent>: View {
  public typealias Body = Never

  public init() {}

  public func build(into builder: inout Builder) {
    builder.combine(name: "source", body: EmptyView())
  }
}

public typealias AudioSource = Source<Audio<EmptyView>>
public typealias VideoSource = Source<Video<EmptyView>>
public typealias PictureSource = Source<Picture<EmptyView>>

/// ------------------------------------------------------------------------ ///
/// MARK: <span>
/// The `<span>` element doesn't mean anything on its own, but can be
/// useful when used together with the global attributes, e.g., `class`,
/// `lang`, or `dir`. It represents its children.
public struct Span<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "span", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <strong>
/// The `<strong>` element represents strong importance, seriousness, or
/// urgency for its contents.
public struct Strong<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "strong", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <style>
/// The `<style>` element allows authors to embed style information in
/// their documents.
public struct Style: View {
  public typealias Body = Rawtext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "style", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <sub>
/// The `<sub>` element represents a subscript.
public struct Sub<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "sub", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <summary>
/// The first `<summary>` child element of a `<details>` element represents
/// a summary, caption, or legend for the rest of the contents of the parent
/// `<details>` element, if any.
public struct Summary<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "summary", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <sup>
/// The `<sup>` element represents a superscript.
public struct Sup<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "sup", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <svg>
/// The `<svg>` element represents scalable vector graphics.
public struct Svg: View {
  public typealias Body = Rawtext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "svg", body: body)
  }
}


/// ------------------------------------------------------------------------ ///
/// MARK: <table>
/// The `<table>` element represents data with more than one dimension,
/// in the form of a table.
public struct Table<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  /// Tr<Th>, Tr<Td> ...
  public init<A: ChildOfThead, B: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Thead, Tbody ...
  public init<A: VariationOfThead, B: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Thead, Tbody ..., Tfoot
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Caption, Thead, Tbody ...
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Caption, Thead, Tbody ..., Tfoot
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Colgroup, Thead, Tbody ...
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Colgroup, Thead, Tbody ..., Tfoot
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Caption, Colgroup, Thead, Tbody ...
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Caption, Colgroup, Thead, Tbody ..., Tfoot
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "table", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <tbody>
/// The `<tbody>` element represents a block of rows that consist of a body
/// of data for the parent `<table>` element, if the `<tbody>` element has
/// a parent and it is a `<table>`.
public struct Tbody<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  /// Tr<Td> ...
  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfTbody { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  /// Tr<Th>, Tr<Td> ...
  public init<A: ChildOfThead, B: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "tbody", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <td>
/// The `<td>` element represents a data cell in a table.
public struct Td<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "td", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <template>
/// The `<template>` element represents a template.
public struct Template<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "template", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <textarea>
/// The `<textarea>` element represents a multiline plain text edit control
/// for the element's raw value. The contents of the control represent the
/// control's default value.
public struct Textarea: View {
  public typealias Body = Rawtext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "textarea", body: body)
  }
}


/// ------------------------------------------------------------------------ ///
/// MARK: <tfoot>
/// The `<tfoot>` element represents the block of rows that consist of the
/// column summaries (footers) for the parent `<table>` element, if the
/// `<tfoot>` element has a parent and it is a `<table>`.
public struct Tfoot<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfTfoot { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot, I: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot, I: ChildOfTfoot, J: ChildOfTfoot>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "tfoot", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <th>
/// The `<th>` element represents a header cell in a table.
public struct Th<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "th", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <thead>
/// The `<thead>` element represents the block of rows that consist of the
/// column labels (headers) for the parent `<table>` element, if the `<thead>`
/// element has a parent and it is a `<table>`.
public struct Thead<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfThead { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead, I: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead, I: ChildOfThead, J: ChildOfThead>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "thead", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <time>
/// The `<time>` element represents its contents, along with a machine-readable
/// form of those contents in the datetime attribute. The kind of content is
/// limited to various kinds of dates, times, time-zone offsets, and durations,
/// as described below.
public struct Time<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "time", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <title>
/// The `<title>` element represents the document's title or name. Authors
/// should use titles that identify their documents even when they are used
/// out of context, for example in a user's history or bookmarks, or in
/// search results. The document's title is often different from its first
/// heading, since the first heading does not have to stand alone when taken
/// out of context.
public struct Title: View {
  public typealias Body = Plaintext

  private let makeContent: () -> Body

  public init(@ViewBuilder content: @escaping () -> Body) {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "title", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <tr>
/// The `<tr>` element represents a row of cells in a table.
// extension Tag where Kind == Tag.Tr<Tag.Th> {
//   public init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTh {
//     attributes = []; content = c()
//   }
// }

// extension Tag where Kind == Tag.Tr<Tag.Td> {
//   public init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTd {
//     attributes = []; content = c()
//   }
// }
public struct Tr<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: VariationOfTh { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh, I: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh, I: VariationOfTh, J: VariationOfTh>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: VariationOfTd { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd, I: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd, I: VariationOfTd, J: VariationOfTd>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "tr", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <track>
/// The `<track>` element allows authors to specify explicit external text
/// resources for media elements. It does not represent anything on its own.
public struct Track: View {
  public typealias Body = Never

  private let attributes: Array<Attribute>

  public init(src: String) {
    attributes = [("src", src)]
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "track", attributes: attributes, body: EmptyView())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <u>
/// The `<u> element represents a span of text with an unarticulated, though
/// explicitly rendered, non-textual annotation, such as labeling the text
/// as being a proper name in Chinese text (a Chinese proper name mark),
/// or labeling the text as being misspelt.
public struct U<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "u", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ul>
/// The `<ul>` element represents a list of items, where the order of the
/// items is not important — that is, where changing the order would not
/// materially change the meaning of the document.
public struct Ul<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfUl { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl, I: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl, I: ChildOfUl, J: ChildOfUl>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "ul", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <var>
/// The `<var>` element represents a variable. This could be an actual
/// variable in a mathematical expression or programming context, an
/// identifier representing a constant, a symbol identifying a physical
/// quantity, a function parameter, or just be a term used as a placeholder
/// in prose.
public struct Var<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(_ text: String = "") where Content == Plaintext {
    makeContent = { Plaintext(text) }
  }

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfAny {
    makeContent = content
  }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "var", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <video>
/// A `<video>` element is used for playing videos or movies, and audio
/// files with captions.
public struct Video<Content: View>: View {
  public typealias Body = Content

  private let makeContent: () -> Content

  public init(@ViewBuilder content: @escaping () -> Content) where Content: ChildOfVideo { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo, I: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I)> { makeContent = content }
  public init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo, I: ChildOfVideo, J: ChildOfVideo>(@ViewBuilder content: @escaping () -> Content) where Content == TupleView<(A, B, C, D, E, F, G, H, I, J)> { makeContent = content }

  public var body: Body {
    return makeContent()
  }

  public func build(into builder: inout Builder) {
    builder.combine(name: "video", body: body)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <plaintext>
/// The `<plaintext>` element represents an escapable-text.
public struct Plaintext: View {
  public typealias Body = Never

  private let text: String

  public init(_ text: String) {
    self.text = text
  }

  public func build(into builder: inout Builder) {
    builder.combine(plaintext: text)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <rawtext>
/// The `<rawtext>` element represents an inescapable-text.
public struct Rawtext: View {
  public typealias Body = Never

  private let text: String

  public init(_ text: String) {
    self.text = text
  }

  public func build(into builder: inout Builder) {
    builder.combine(rawtext: text)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <comment>
/// The `<comment>` element represents a comment-text.
public struct Comment: View {
  public typealias Body = Never

  private let text: String

  public init(_ text: String) {
    self.text = text
  }

  public func build(into builder: inout Builder) {
    builder.combine(comment: text)
  }
}