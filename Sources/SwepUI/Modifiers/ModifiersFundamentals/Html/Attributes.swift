// MARK: Attributes

// MARK: - General Attributes
import struct Foundation.URLComponents
import struct Foundation.URLQueryItem

extension View {
  /// All HTML elements may have the `accesskey` content attribute set. The
  /// `accesskey` attribute's value is used by the user agent as a guide for
  /// creating a keyboard shortcut that activates or focuses the element.
  ///
  /// - Parameter value: Used by the user agent as a guide for creating a
  ///                    keyboard shortcut that activates or focuses the
  ///                    element.
  public func htmlAccesskey(_ value: Character) -> some View {
    return htmlAttribute(key: "accesskey", value: String(value))
  }

  /// When specified on HTML elements, the `class` attribute must have a value
  /// that is a set of space-separated tokens representing the various classes
  /// that the element belongs to.
  ///
  /// - Parameter value: A set of space-separated tokens.
  public func htmlClass(_ value: String) -> some View {
    return htmlAttribute(key: "class", value: value)
  }
}

public enum Contenteditable: String, ExpressibleByBooleanLiteral {
  case `true` = ""
  case `false`
  case inherit

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension View {
  /// Make a document region editable.
  ///
  /// - Parameter value: Should a document region be editable.
  public func htmlContenteditable(_ value: Contenteditable) -> some View {
    return htmlAttribute(key: "contenteditable", value: value == .inherit ? nil : value.rawValue)
  }

  /// Adds a `data`-prefixed attribute to the element.
  ///
  /// - Parameters:
  ///   - name: The attribute suffix.
  ///   - value: The value.
  public func htmlData(_ name: StaticString, _ value: String) -> some View {
    return htmlAttribute(key: "data-\(name)", value: value)
  }
}

public enum Direction: String {
  case ltr
  case rtl
  case auto
}

extension View {
  public func htmlDir(_ value: Direction) -> some View {
    return htmlAttribute(key: "dir", value: value.rawValue)
  }
}

public enum Draggable: String, ExpressibleByBooleanLiteral {
  /// The element is draggable.
  case `true`

  /// The element is not draggable.
  case `false`

  /// The default draggable behavior of the user agent.
  case auto

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension View {
  /// Whether or not an element is draggable.
  ///
  /// - Parameter value: Whether or not an element is draggable.
  public func htmlDraggable(_ value: Draggable) -> some View {
    return htmlAttribute(key: "draggable", value: value == .auto ? nil : value.rawValue)
  }

  /// Hide the element.
  ///
  /// - Parameter value: Hide the element.
  public func htmlHidden(_ value: Bool) -> some View {
    return htmlAttribute(key: "hidden", value: value ? "" : nil)
  }

  /// When specified on HTML elements, the `id` attribute value must be unique
  /// amongst all the IDs in the element's tree and must contain at least one
  /// character. The value must not contain any space characters.
  ///
  /// - Parameter value: A unique identifier.
  public func htmlId(_ value: String) -> some View {
    return htmlAttribute(key: "id", value: value)
  }
}

public enum Language: String {
  case aa
  case ab
  case ae
  case af
  case ak
  case am
  case an
  case ar
  case `as`
  case av
  case ay
  case az
  case ba
  case be
  case bg
  case bh
  case bi
  case bm
  case bn
  case bo
  case br
  case bs
  case ca
  case ce
  case ch
  case co
  case cr
  case cs
  case cu
  case cv
  case cy
  case da
  case de
  case dv
  case dz
  case ee
  case el
  case en
  case eo
  case es
  case et
  case eu
  case fa
  case ff
  case fi
  case fj
  case fo
  case fr
  case fy
  case ga
  case gd
  case gl
  case gn
  case gu
  case gv
  case ha
  case he
  case hi
  case ho
  case hr
  case ht
  case hu
  case hy
  case hz
  case ia
  case id
  case ie
  case ig
  case ii
  case ik
  case `in`
  case io
  case `is`
  case it
  case iu
  case ja
  case ji
  case jv
  case ka
  case kg
  case ki
  case kj
  case kk
  case kl
  case km
  case kn
  case ko
  case kr
  case ks
  case ku
  case kv
  case kw
  case ky
  case la
  case lb
  case lg
  case li
  case ln
  case lo
  case lt
  case lu
  case lv
  case mg
  case mh
  case mi
  case mk
  case ml
  case mn
  case mr
  case ms
  case mt
  case my
  case na
  case nb
  case nd
  case ne
  case nl
  case nn
  case no
  case nr
  case nv
  case ny
  case oc
  case oj
  case om
  case or
  case os
  case pa
  case pi
  case pl
  case ps
  case pt
  case qu
  case rm
  case rn
  case ro
  case ru
  case rw
  case sa
  case sc
  case sd
  case se
  case sg
  case si
  case sk
  case sl
  case sm
  case sn
  case so
  case sq
  case sr
  case ss
  case st
  case su
  case sv
  case sw
  case ta
  case te
  case tg
  case th
  case ti
  case tk
  case tl
  case tn
  case to
  case tr
  case ts
  case tt
  case tw
  case ty
  case ug
  case uk
  case ur
  case uz
  case ve
  case vi
  case vo
  case wa
  case wo
  case xh
  case yi
  case yo
  case za
  case zu
  case zh
  case zhHans = "zh-Hans"
  case zhHant = "zh-Hant"
  case unknown = ""
}

extension View {
  /// The `lang` attribute specifies the primary language for the element's
  /// contents and for any of the element's attributes that contain text.
  ///
  /// - Parameter value: A valid BCP 47 language tag, or the empty string.
  ///                    Setting the attribute to the empty string indicates
  ///                    that the primary language is unknown.
  public func htmlLang(_ value: Language) -> some View {
    return htmlAttribute(key: "lang", value: value.rawValue)
  }

  public func htmlSpellcheck(_ value: Bool) -> some View {
    return htmlAttribute(key: "spellcheck", value: String(value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func htmlStyle(safe value: StaticString) -> some View {
    return htmlStyle(unsafe: String(describing: value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func htmlStyle(unsafe value: String) -> some View {
    return htmlAttribute(key: "style", value: String(describing: value))
  }

  /// The `tabindex` content attribute allows authors to indicate that an
  /// element is supposed to be focusable, whether it is supposed to be
  /// reachable using sequential focus navigation and, optionally, to suggest
  /// where in the sequential focus navigation order the element appears.
  ///
  /// - Parameter value: The sequential focus navigation order the element
  ///                    appears.
  public func htmlTabindex(_ value: Int) -> some View {
    return htmlAttribute(key: "tabindex", value: String(value))
  }

  /// The `title` attribute represents advisory information for the element,
  /// such as would be appropriate for a tooltip.
  ///
  /// - Parameter value: Advisory information.
  public func htmlTitle(_ value: String) -> some View {
    return htmlAttribute(key: "title", value: value)
  }
}

public enum Translate: String, ExpressibleByBooleanLiteral {
  case yes
  case no

  public init(booleanLiteral value: Bool) {
    self = value ? .yes : .no
  }
}

extension View {
  /// Whether or not an element's attribute values and the values of its text
  /// node children are to be translated when the page is localized.
  ///
  /// - Parameter value: Whether or not an element's attribute values and the
  ///                    values of its text node children are to be translated
  ///                    when the page is localized.
  public func htmlTranslate(_ value: Translate) -> some View {
    return htmlAttribute(key: "translate", value: value.rawValue)
  }
}

extension A {
  /// Email address of a hyperlink.
  ///
  /// - Parameters:
  ///   - address: One or more email addresses for the "to" field.
  ///   - cc: Zero or more email addresses for the "cc" field.
  ///   - bcc: Zero or more email addresses for the "bcc" field.
  ///   - subject: An optional email subject.
  ///   - body: An optional email body.
  /// - Returns: A "mailto" URL for hyperlinks.
  public func htmlMailto(
    _ addresses: String...,
    cc: [String] = [],
    bcc: [String] = [],
    subject: String = "",
    body: String = ""
  ) -> some View {
    return htmlMailto(addresses, cc: cc, bcc: bcc, subject: subject, body: body)
  }

  /// Email address of a hyperlink.
  ///
  /// - Parameters:
  ///   - address: One or more email addresses for the "to" field.
  ///   - cc: Zero or more email addresses for the "cc" field.
  ///   - bcc: Zero or more email addresses for the "bcc" field.
  ///   - subject: An optional email subject.
  ///   - body: An optional email body.
  /// - Returns: A "mailto" URL for hyperlinks.
  public func htmlMailto(
    _ addresses: [String],
    cc: [String] = [],
    bcc: [String] = [],
    subject: String = "",
    body: String = ""
  ) -> some View {
    var urlComponents = URLComponents()
    urlComponents.scheme = "mailto"
    urlComponents.path = addresses.joined(separator: ",")
    let queryItems = [
      cc.isEmpty ? nil : URLQueryItem(name: "cc", value: cc.joined(separator: ",")),
      bcc.isEmpty ? nil : URLQueryItem(name: "bcc", value: bcc.joined(separator: ",")),
      subject.isEmpty ? nil : URLQueryItem(name: "subject", value: subject),
      body.isEmpty ? nil : URLQueryItem(name: "body", value: body)
      ]
      .compactMap { $0 }
    urlComponents.queryItems = queryItems.isEmpty ? nil : queryItems
    return htmlHref(urlComponents.string ?? "")
  }
}

/// The kind of shape to be created in an image map.
public enum AreaShape: String {
  case circle
  //  case `default`
  case poly
  case rect = ""
}

extension Area {
  /// The kind of shape to be created in an image map.
  ///
  /// - Parameter value: The kind of shape to be created in an image map.
  public func htmlShape(_ value: AreaShape) -> some View {
    return htmlAttribute(key: "shape", value: value == .rect ? nil : value.rawValue)
  }
}

/// Type of button.
public enum ButtonType: String {
  /// Does nothing.
  case button

  /// Resets the form.
  case reset

  /// Submits the form.
  case submit
}

extension Button {
  /// Type of button.
  ///
  /// - Parameter value: Type of button.
  public func htmlType(_ value: ButtonType) -> some View {
    return htmlAttribute(key: "type", value: value.rawValue)
  }
}

extension Details {
  /// Whether the details are visible.
  ///
  /// - Parameter value: Whether the details are visible.
  public func htmlOpen(_ value: Bool) -> some View {
    return htmlAttribute(key: "open", value: value ? "" : nil)
  }
}

/// HTTP method to use for form submission.
public enum FormMethod: String {
  /// Submitting the form is intended to close the dialog box in which the
  /// form finds itself, if any, and otherwise not submit.
  case dialog = "dialog"

  /// The HTTP GET method.
  case get = ""

  /// The HTTP POST method.
  case post = "post"
}

public struct Enctype: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let applicationXWwwFormUrlencoded = Enctype(rawValue: "application/x-www-form-urlencoded")
  public static let multipartFormData = Enctype(rawValue: "multipart/form-data")
  public static let textPlain = Enctype(rawValue: "text/plain")
}

extension Form {
  /// URL to use for form submission.
  ///
  /// - Parameter value: URL to use for form submission.
  public func htmlAction(_ value: String) -> some View {
    return htmlAttribute(key: "action", value: value)
  }

  /// The type of form encoding.
  ///
  /// - Parameter value: Enctype to use for form encoding.
  public func htmlEnctype(_ value: Enctype) -> some View {
    return htmlAttribute(key: "enctype", value: value.rawValue)
  }

  /// HTTP method to use for form submission.
  ///
  /// - Parameter value: HTTP method to use for form submission.
  public func htmlMethod(_ value: FormMethod) -> some View {
    let rawValue = value.rawValue
    return htmlAttribute(key: "method", value: rawValue.isEmpty ? nil : rawValue)
  }

  /// Bypass form control validation for form submission.
  ///
  /// - Parameter value: Bypass form control validation for form submission.
  public func htmlNovalidate(_ value: Bool) -> some View {
    return htmlAttribute(key: "novalidate", value: value ? "" : nil)
  }
}

public enum IframeSandbox: String {
  /// Re-enable forms.
  case allowForms = "allow-forms"

  /// Re-enable the pointer lock API.
  case allowPointerLock = "allow-pointer-lock"

  /// Re-enable popups.
  case allowPopups = "allow-popups"

  /// Re-enable the presentation API.
  case allowPresentation = "allow-presentation"

  /// Causes the content to be treated as being from its real origin instead of
  /// forcing it into a unique origin.
  case allowSameOrigin = "allow-same-origin"

  /// Re-enable scripts.
  case allowScripts = "allow-scripts"

  /// Allows the content to navigate its top-level browsing context.
  case allowTopNavigation = "allow-top-navigation"
}

extension Iframe {
  /// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
  ///
  /// - Parameter value: Sandbox options.
  public func htmlSandbox(_ value: [IframeSandbox]) -> some View {
    return htmlAttribute(key: "sandbox", value: value.map { $0.rawValue }.joined(separator: " "))
  }

  /// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
  ///
  /// - Parameter value: Whether or not to sandbox the `<iframe>`.
  public func htmlSandbox(_ value: Bool) -> some View {
    return htmlAttribute(key: "sandbox", value: value ? "" : nil)
  }

#if canImport(Swep)
  /// A document to render in the `iframe`.
  ///
  /// - Parameter value: A document to render in the `iframe`.
  public func htmlSrcdoc<N: HtmlNode>(
    mode: RenderMode = .default,
    _ value: N
  ) -> some View {
    return htmlAttribute(key: "srcdoc", value: value.render(mode))
  }
#endif
}

public enum InputType: String {
  case button
  case checkbox
  case color
  case date
  case datetimeLocal = "datetime-local"
  case email
  case file
  case hidden
  case image
  case month
  case number
  case password
  case radio
  case range
  case reset
  case search
  case submit
  case tel
  case text
  case time
  case url
  case week
}

extension Input {
  /// Whether the command or control is checked.
  ///
  /// - Parameter value: Whether the command or control is checked.
  public func htmlChecked(_ value: Bool) -> some View {
    return htmlAttribute(key: "checked", value: value ? "" : nil)
  }

  /// Pattern to be matched by the form control's value.
  ///
  /// - Parameter value: Pattern to be matched by the form control's value.
  public func htmlPattern(_ value: String) -> some View {
    return htmlAttribute(key: "pattern", value: value)
  }

  /// Granularity to be matched by the form control's value.
  ///
  /// - Parameter value: Granularity to be matched by the form control's value.
  public func htmlStep(_ value: Int) -> some View {
    return htmlAttribute(key: "step", value: String(value))
  }

  public func htmlType(_ value: InputType) -> some View {
    return htmlAttribute(key: "type", value: value.rawValue)
  }
}

extension Meta {
  /// Value of the `<meta>` element.
  ///
  /// - Parameter value: Value of the element.
  public func htmlContent(_ value: String) -> some View {
    return htmlAttribute(key: "content", value: value)
  }
}

public enum ListType: String {
  /// Decimal numbers: `1.`, `2.`, `3.`...`3999.`, `4000.`, `4001.`
  case decimal = "1"

  /// Lowercase Latin alphabet: `a.`, `b.`, `c.`...`ewu.`, `ewv.`, `eww.`
  case lowerAlpha = "a"

  /// Uppercase Latin alphabet: `A.`, `B.`, `C.`...`EWU.`, `EWV.`, `EWW.`
  case upperAlpha = "A"

  /// Lowercase Roman numerals: `1.`, `2.`, `3.`...`mmmcmxcix.`, `i̅v̅.`, `i̅v̅i.`
  case lowerRoman = "i"

  /// Uppercase Roman numerals: `I.`, `II.`, `III.`...`MMMCMXCIX.`, `I̅V̅.`, `I̅V̅I.`
  case upperRoman = "I"
}

extension Ol {
  /// Number the list backwards.
  ///
  /// - Parameter value: Number the list backwards.
  public func htmlReversed(_ value: Bool) -> some View {
    return htmlAttribute(key: "reversed", value: value ? "" : nil)
  }

  /// Ordinal value of the first item.
  ///
  /// - Parameter value: Ordinal value of the first item.
  public func htmlStart(_ value: Int) -> some View {
    return htmlAttribute(key: "start", value: String(value))
  }

  /// Kind of list marker.
  ///
  /// - Parameter value: Kind of list marker.
  public func htmlType(_ value: ListType) -> some View {
    return htmlAttribute(key: "type", value: value.rawValue)
  }
}

extension Option {
  /// Whether the option is selected by default.
  ///
  /// - Parameter value: Whether the option is selected by default.
  public func htmlSelected(_ value: Bool) -> some View {
    return htmlAttribute(key: "selected", value: value ? "" : nil)
  }
}

extension Script {
  /// Execute script in parallel.
  ///
  /// - Parameter value: Execute script in parallel.
  public func htmlAsync(_ value: Bool) -> some View {
    return htmlAttribute(key: "async", value: value ? "" : nil)
  }

  /// Defer script execution.
  ///
  /// - Parameter value: Defer script execution.
  public func `defer`(_ value: Bool) -> some View {
    return htmlAttribute(key: "defer", value: value ? "" : nil)
  }

  /// Cryptographic nonce used in Content Security Policy checks.
  ///
  /// - Parameter value: Cryptographic nonce used in Content Security Policy
  ///                    checks.
  public func htmlNonce(_ value: String) -> some View {
    return htmlAttribute(key: "nonce", value: value)
  }
}

public protocol CanHaveMediaQueryList {}

extension Audio: CanHaveMediaQueryList {}
extension Video: CanHaveMediaQueryList {}
extension Picture: CanHaveMediaQueryList {}

public protocol HasMediaQueryList {}

extension Source: HasMediaQueryList where Parent: CanHaveMediaQueryList {}

extension View where Self: HasMediaQueryList {
  /// Applicable media.
  ///
  /// - Parameter value: A media query list.
  public func htmlMedia(_ value: String) -> some View {
    return htmlAttribute(key: "media", value: value)
  }
}

public protocol IsPicture {}
extension Picture: IsPicture {}

extension Source where Parent: IsPicture {
  /// Images to use in different situations (e.g., high-resolution displays,
  /// small monitors, etc).
  ///
  /// - Parameter value: Images to use in different situations (e.g.,
  ///                    high-resolution displays, small monitors, etc).
  public func htmlSrcset(_ value: String) -> some View {
    return htmlAttribute(key: "srcset", value: value)
  }
}

public enum TextareaWrap: String {
  /// Indicates that the text in the `<textarea>` is to have newlines added by
  /// the user agent so that the text is wrapped when it is submitted.
  ///
  /// If the element's `wrap` attribute is in the `hard` state, the `cols`
  /// attribute must be specified.
  case hard

  /// Indicates that the text in the `<textarea>` is not to be wrapped when it
  /// is submitted (though it can still be wrapped in the rendering).
  case soft
}

extension Textarea {
  /// Maximum number of characters per line.
  ///
  /// - Parameter value: Maximum number of characters per line.
  public func htmlCols(_ value: Int) -> some View {
    return htmlAttribute(key: "cols", value: String(value))
  }

  /// Number of lines to show.
  ///
  /// - Parameter value: Number of lines to show.
  public func htmlRows(_ value: Int) -> some View {
    return htmlAttribute(key: "rows", value: String(value))
  }

  /// How the value of the form control is to be wrapped for form submission.
  ///
  /// - Parameter value: How the value of the form control is to be wrapped for
  ///                    form submission.
  public func htmlWrap(_ value: TextareaWrap) -> some View {
    return htmlAttribute(key: "wrap", value: value.rawValue)
  }
}

/// Specifies which cells the header cell applies to.
public enum ThScope: String {
  /// The **auto** state makes the header cell apply to a set of cells selected
  /// based on context.
  case auto = ""

  /// The **column** state means the header cell applies to some of the
  /// subsequent cells in the same column(s).
  case col

  /// The **col group** state means the header cell applies to all the remaining
  /// cells in the column group. A `<th>` element's `scope` attribute must not
  /// be in the column group state if the element is not anchored in a column
  /// group.
  case colgroup

  /// The **row** state means the header cell applies to some of the subsequent
  /// cells in the same row(s).
  case row

  /// The **row group** state means the header cell applies to all the remaining
  /// cells in the row group. A `<th>` element's `scope` attribute must not be
  /// in the row group state if the element is not anchored in a row group.
  case rowgroup
}

extension Th {
  /// Alternative label to use for the header cell when referencing the cell in
  /// other contexts.
  ///
  /// - Parameter value: Alternative label to use for the header cell when
  ///                    referencing the cell in other contexts.
  public func htmlAbbr(_ value: String) -> some View {
    return htmlAttribute(key: "abbr", value: value)
  }

  /// Specifies which cells the header cell applies to.
  ///
  /// - Parameter value: Specifies which cells the header cell applies to.
  public func htmlScope(_ value: ThScope) -> some View {
    return htmlAttribute(key: "scope", value: value.rawValue)
  }
}

/// Kinds of text tracks for `<track>` elements.
public enum TrackKind: String {
  /// Transcription or translation of the dialog, sound effects, relevant
  /// musical cues, and other relevant audio information, suitable for when
  /// sound is unavailable or not clearly audible (e.g., because it is muted,
  /// drowned-out by ambient noise, or because the user is deaf). Overlaid on
  /// the video; labeled as appropriate for the hard-of-hearing.
  case captions

  /// Chapter titles, intended to be used for navigating the media resource.
  /// Displayed as an interactive (potentially nested) list in the user agent's
  /// interface.
  case chapters

  /// Textual descriptions of the video component of the media resource,
  /// intended for audio synthesis when the visual component is obscured,
  /// unavailable, or not usable (e.g., because the user is interacting with
  /// the application without a screen while driving, or because the user is
  /// blind). Synthesized as audio
  case descriptions

  /// Tracks intended for use from script. Not displayed by the user agent.
  case metadata

  /// Transcription or translation of the dialog, suitable for when the sound
  /// is available but not understood (e.g., because the user does not
  /// understand the language of the media resource's audio track). Overlaid
  /// on the video.
  case subtitles
}

extension Track {
  public func `default`(_ value: Bool) -> some View {
    return htmlAttribute(key: "default", value: value ? "" : nil)
  }

  /// The type of text track.
  ///
  /// - Parameter value: The type of text track.
  public func htmlKind(_ value: TrackKind) -> some View {
    return htmlAttribute(key: "kind", value: value.rawValue)
  }

  /// User-visible label for a `<track>` element.
  ///
  /// - Parameter value: User-visible label.
  public func htmlLabel(_ value: String) -> some View {
    return htmlAttribute(key: "label", value: value)
  }

  /// Language of the text track.
  ///
  /// - Parameter value: Language of the text track.
  public func htmlSrclang(_ value: Language) -> some View {
    return htmlAttribute(key: "srclang", value: value.rawValue)
  }
}

extension Video {
  public func htmlPoster(_ value: String) -> some View {
    return htmlAttribute(key: "poster", value: value)
  }
}

/// Conforming elements can have an `alt` attribute. Includes `<area>`, `<img>`
/// and `<input>` elements.
public protocol HasAlt {}

extension Area: HasAlt {}
extension Img: HasAlt {}
extension Input: HasAlt {}

extension View where Self: HasAlt {
  /// Replacement text for use when images are not available. For `<area>`,
  /// `<img>`, and `<input>` elements.
  ///
  /// - Parameter value: Replacement text for use when images are not available.
  public func htmlAlt(_ value: String) -> some View {
    return htmlAttribute(key: "alt", value: value)
  }
}

/// Conforming elements can have an `autofocus` attribute. Includes `<button>`,
/// `<input>`, `<select>`, and `<textarea>` elements.
public protocol HasAutofocus {}

extension Button: HasAutofocus {}
extension Input: HasAutofocus {}
extension Select: HasAutofocus {}
extension Textarea: HasAutofocus {}

extension View where Self: HasAutofocus {
  /// The `autofocus` content attribute allows the author to indicate that a
  /// control is to be focused as soon as the page is loaded or as soon as the
  /// `dialog` within which it finds itself is shown, allowing the user to just
  /// start typing without having to manually focus the main control.
  ///
  /// - Parameter value: Automatically focus the form control when the page is
  ///                    loaded.
  public func htmlAutofocus(_ value: Bool) -> some View {
    return htmlAttribute(key: "autofocus", value: value ? "" : nil)
  }
}

/// Conforming elements can have an `autoplay` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasAutoplay {}

extension Audio: HasAutoplay {}
extension Video: HasAutoplay {}

extension View where Self: HasAutoplay {
  /// Hint that the media resource can be started automatically when the page
  /// is loaded.
  ///
  /// - Parameter value: Hint that the media resource can be started
  ///                    automatically when the page is loaded.
  public func htmlAutoplay(_ value: Bool) -> some View {
    return htmlAttribute(key: "autoplay", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `charset` attribute. Includes `<meta>`
/// and `<script>` elements.
public protocol HasCharset {}

extension Meta: HasCharset {}
extension Script: HasCharset {}

extension View where Self: HasCharset {
  /// Character encoding declaration.
  ///
  /// - Parameter value: A character encoding declaration.
  public func htmlCharset(_ value: MediaType.Charset) -> some View {
    return htmlAttribute(key: "charset", value: value.rawValue)
  }
}

/// Conforming elements can have a `cite` attribute. Includes `<blockquote>`,
/// `<del>`, `<ins>`, and `<q>` elements.
public protocol HasCite {}

extension Blockquote: HasCite {}
extension Del: HasCite {}
extension Ins: HasCite {}
extension Q: HasCite {}

extension View where Self: HasCite {
  /// Link to the source of the quotation.
  ///
  /// - Parameter value: Link to the source of the quotation or more information
  ///                    about the edit.
  public func htmlCite(_ value: String) -> some View {
    return htmlAttribute(key: "cite", value: value)
  }
}

/// Conforming elements can have a `colspan` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasColspan {}

extension Td: HasColspan {}
extension Th: HasColspan {}

extension View where Self: HasColspan {
  /// Number of columns that the cell is to span.
  ///
  /// - Parameter value: Number of columns that the cell is to span.
  public func htmlColspan(_ value: Int) -> some View {
    return htmlAttribute(key: "colspan", value: String(value))
  }
}

/// Conforming elements can have a `controls` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasControls {}

extension Audio: HasControls {}
extension Video: HasControls {}

extension View where Self: HasControls {
  /// If present, it indicates that the author has not provided a scripted
  /// controller and would like the user agent to provide its own set of
  /// controls.
  ///
  /// - Parameter value: Show user agent controls.
  public func htmlControls(_ value: Bool) -> some View {
    return htmlAttribute(key: "controls", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `crossorigin` attribute. Includes `<img>`
/// and `<script>` elements.
public protocol HasCrossorigin {}

extension Img: HasCrossorigin {}
extension Script: HasCrossorigin {}

public enum Crossorigin: String {
  /// Requests for the element will have their mode set to "`cors`" and
  /// their credentials mode set to "`same-origin`".
  case anonymous = ""

  /// Requests for the element will have their mode set to "`cors`" and
  /// their credentials mode set to "`include`".
  case useCredentials = "use-credentials"
}

extension View where Self: HasCrossorigin {
  /// How the element handles crossorigin requests.
  ///
  /// - Parameter value: How the element handles crossorigin requests.
  public func htmlCrossorigin(_ value: Crossorigin) -> some View {
    return htmlAttribute(key: "crossorigin", value: value.rawValue)
  }
}

/////////////////////////////////////////////////////////////////////////////////
// FIXME: swiftwasm errors:
// error: value of type 'DateFormatter' has no member 'timeZone'
//   formatter.timeZone = TimeZone(identifier: "UTC")
//   ~~~~~~~~~ ^~~~~~~~
// error: value of type 'DateFormatter' has no member 'locale'
//   formatter.locale = Locale(identifier: "en_US_POSIX")
//   ~~~~~~~~~ ^~~~~~
// error: 'dateFormat' is inaccessible due to 'internal' protection level
//   formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
//             ^~~~~~~~~~
// Foundation.DateFormatter (internal):2:18: note: 'dateFormat' declared here
//     internal let dateFormat: String
//                  ^
// error: value of type 'DateFormatter' has no member 'timeZone'
//   formatter.timeZone = TimeZone(identifier: "UTC")
//   ~~~~~~~~~ ^~~~~~~~
/////////////////////////////////////////////////////////////////////////////////

/// Conforming elements can have a `datetime` attribute. Includes `<del>`,
/// `<ins>`, and `<time>` elements.
public protocol HasDatetime {}

extension Del: HasDatetime {}
extension Ins: HasDatetime {}
extension Time: HasDatetime {}

#if os(WASI)
import class JavaScriptKit.JSDate
extension View where Self: HasDatetime {
  public func htmlDatetime(_ value: JSDate) -> some View {
    return htmlAttribute(key: "datetime", value: value.toISOString())
  }
}
#else
import struct Foundation.Date
import struct Foundation.Locale
import struct Foundation.TimeZone
import class  Foundation.DateFormatter

private let iso8601DateFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.locale = Locale(identifier: "en_US_POSIX")
  formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
  formatter.timeZone = TimeZone(identifier: "UTC")
  return formatter
}()

extension View where Self: HasDatetime {
  public func htmlDatetime(_ value: Date) -> some View {
    return htmlAttribute(key: "datetime", value: iso8601DateFormatter.string(from: value))
  }
}
#endif

/// Conforming elements can have a `disabled` attribute. Includes `<button>`,
/// `<fieldset>`, `<input>`, `<optgroup>`, `<option>`, `<select>`, and
/// `<textarea>` elements.
public protocol HasDisabled {}

extension Button: HasDisabled {}
extension Fieldset: HasDisabled {}
extension Input: HasDisabled {}
extension Optgroup: HasDisabled {}
extension Option: HasDisabled {}
extension Select: HasDisabled {}
extension Textarea: HasDisabled {}

extension View where Self: HasDisabled {
  /// Whether the form control is disabled.
  ///
  /// - Parameter value: Whether the form control is disabled.
  public func htmlDisabled(_ value: Bool) -> some View {
    return htmlAttribute(key: "disabled", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `for` attribute. Includes `<label>` and
/// `<output>` elements.
public protocol HasFor {}

extension Label: HasFor {}
extension Output: HasFor {}

extension View where Self: HasFor {
  /// Associate the label or output with form control.
  ///
  /// - Parameter value: The `id` of the form control
  public func `for`(_ value: String) -> some View {
    return htmlAttribute(key: "for", value: value)
  }
}

/// Conforming elements can have a `form` attribute. Includes `<button>`,
/// `<fieldset>`, `<input>`, `<label>`, `<meter>`, `<object>`, `<output>`,
/// `<select>`, and `<textarea>` elements.
public protocol HasForm {}

extension Button: HasForm {}
extension Fieldset: HasForm {}
extension Input: HasForm {}
extension Label: HasForm {}
extension Meter: HasForm {}
extension Object: HasForm {}
extension Output: HasForm {}
extension Select: HasForm {}
extension Textarea: HasForm {}

extension View where Self: HasForm {
  /// Associates the control with a `<form>` element.
  ///
  /// - Parameter value: The associated `<form>` element's `id`.
  public func htmlForm(_ value: String) -> some View {
    return htmlAttribute(key: "form", value: value)
  }
}

/// Conforming elements can have a `headers` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasHeaders {}

extension Td: HasHeaders {}
extension Th: HasHeaders {}

extension View where Self: HasHeaders {
  /// The header cells for this cell.
  ///
  /// - Parameter value: The header cells for this cell.
  public func htmlHeaders(_ value: String) -> some View {
    return htmlAttribute(key: "headers", value: value)
  }
}

/// Conforming elements can have a `height` attribute. Includes `<canvas>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and
/// `<video>` elements.
public protocol HasHeight {}

extension Canvas: HasHeight {}
extension Embed: HasHeight {}
extension Iframe: HasHeight {}
extension Img: HasHeight {}
extension Input: HasHeight {}
extension Object: HasHeight {}
extension Svg: HasHeight {}
extension Video: HasHeight {}

extension View where Self: HasHeight {
  /// Vertical dimension.
  ///
  /// - Parameter value: Vertical dimension.
  public func htmlHeight(_ value: Int) -> some View {
    return htmlAttribute(key: "height", value: String(value))
  }
}

/// Conforming elements can have an `href` attribute. Includes `<a>`, `<area>`,
/// `<base>`, and `<link>` elements.
public protocol HasHref {}

extension A: HasHref {}
extension Area: HasHref {}
extension Base: HasHref {}
extension Link: HasHref {}

extension View where Self: HasHref {
  /// Address of a hyperlink.
  ///
  /// - Parameter value: Address of a hyperlink.
  public func htmlHref(_ value: String) -> some View {
    return htmlAttribute(key: "href", value: value)
  }
}

/// Conforming elements can have a `loop` attribute. Includes `<audio>` and
/// `<video>` elements.
public protocol HasLoop {}

extension Audio: HasLoop {}
extension Video: HasLoop {}

extension View where Self: HasLoop {
  public func htmlLoop(_ value: Bool) -> some View {
    return htmlAttribute(key: "loop", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `max` attribute. Includes `<input>`,
/// `<meter>`, and `<progress>` elements.
public protocol HasMax {}

extension Input: HasMax {}
extension Meter: HasMax {}
extension Progress: HasMax {}

extension View where Self: HasMax {
  /// Maximum value.
  ///
  /// - Parameter value: Maximum value.
  public func htmlMax(_ value: Double) -> some View {
    return htmlAttribute(key: "max", value: String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Maximum value.
  ///
  /// - Parameter value: Maximum value.
  public func htmlMax(_ value: Int) -> some View {
    return htmlAttribute(key: "max", value: String(value))
  }
}

/// Conforming elements can have a `maxlength` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasMaxlength {}

extension Input: HasMaxlength {}
extension Textarea: HasMaxlength {}

extension View where Self: HasMaxlength {
  /// Maximum length of value.
  ///
  /// - Parameter value: Maximum length of value.
  public func htmlMaxlength(_ value: Int) -> some View {
    return htmlAttribute(key: "maxlength", value: String(value))
  }
}

/// Conforming elements can have a `min` attribute. Includes `<input>`,
/// `<meter>`, and `<progress>` elements.
public protocol HasMin {}

extension Input: HasMin {}
extension Meter: HasMin {}
extension Progress: HasMin {}

extension View where Self: HasMin {
  /// Minimum value.
  ///
  /// - Parameter value: Minimum value.
  public func htmlMin(_ value: Double) -> some View {
    return htmlAttribute(key: "min", value: String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Minimum value.
  ///
  /// - Parameter value: Minimum value.
  public func htmlMin(_ value: Int) -> some View {
    return htmlAttribute(key: "min", value: String(value))
  }
}

/// Conforming elements can have a `minlength` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasMinlength {}

extension Input: HasMinlength {}
extension Textarea: HasMinlength {}

extension View where Self: HasMinlength {
  /// Minimum length of value.
  ///
  /// - Parameter value: Minimum length of value.
  public func htmlMinlength(_ value: Int) -> some View {
    return htmlAttribute(key: "minlength", value: String(value))
  }
}

/// Conforming elements can have a `multiple` attribute. Includes `<input>`
/// and `<select>` elements.
public protocol HasMultiple {}

extension Input: HasMultiple {}
extension Select: HasMultiple {}

extension View where Self: HasMultiple {
  /// Whether to allow multiple values.
  ///
  /// - Parameter value: Whether to allow multiple values.
  public func htmlMultiple(_ value: Bool) -> some View {
    return htmlAttribute(key: "multiple", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `muted` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasMuted {}

extension Audio: HasMuted {}
extension Video: HasMuted {}

extension View where Self: HasMuted {
  /// Whether to mute the media resource by default.
  ///
  /// - Parameter value: Whether to mute the media resource by default.
  public func htmlMuted(_ value: Bool) -> some View {
    return htmlAttribute(key: "muted", value: value ? "" : nil)
  }
}

public protocol HasName {}

extension Button: HasName {}
extension Fieldset: HasName {}
extension Form: HasName {}
extension Iframe: HasName {}
extension Input: HasName {}
extension Map: HasName {}
extension Object: HasName {}
extension Output: HasName {}
extension Select: HasName {}
extension Textarea: HasName {}

extension View where Self: HasName {
  /// Name of form control to use for form submission and in the form.elements API.
  ///
  /// - Parameter value: Name of form control.
  public func htmlName(_ value: String) -> some View {
    return htmlAttribute(key: "name", value: value)
  }
}

/// Conforming elements can have a `placeholder` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasPlaceholder {}

extension Input: HasPlaceholder {}
extension Textarea: HasPlaceholder {}

extension View where Self: HasPlaceholder {
  /// User-visible label to be placed within the form control.
  ///
  /// - Parameter value: User-visible label to be placed within the form
  ///                    control.
  public func htmlPlaceholder(_ value: String) -> some View {
    return htmlAttribute(key: "placeholder", value: value)
  }
}

/// Conforming elements can have a `preload` attribute. Includes `<audio>` and
/// `<video>` elements.
public protocol HasPreload {}

extension Audio: HasPreload {}
extension Video: HasPreload {}

public enum Preload: String {
  /// Hints to the user agent that the user agent can put the user's needs
  /// first without risk to the server, up to and including optimistically
  /// downloading the entire resource.
  case auto = ""

  /// Hints to the user agent that the author does not expect the user to
  /// need the media resource, but that fetching the resource metadata
  /// (dimensions, track list, duration, etc), and maybe even the first
  /// few frames, is reasonable. If the user agent precisely fetches no
  /// more than the metadata, then the media element will end up with its
  /// readyState attribute set to `HAVE_METADATA`; typically though, some
  /// frames will be obtained as well and it will probably be `HAVE_CURRENT_DATA`
  /// or `HAVE_FUTURE_DATA`. When the media resource is playing, hints to the
  /// user agent that bandwidth is to be considered scarce, e.g., suggesting
  /// throttling the download so that the media data is obtained at the slowest
  /// possible rate that still maintains consistent playback.
  case metadata

  /// Hints to the user agent that either the author does not expect the
  /// user to need the media resource, or that the server wants to minimize
  /// unnecessary traffic. This state does not provide a hint regarding how
  /// aggressively to actually download the media resource if buffering starts
  /// anyway (e.g., once the user hits "play").
  case none
}

extension View where Self: HasPreload {
  /// Hints how much buffering the media resource will likely need.
  ///
  /// - Parameter value: Hints how much buffering the media resource will likely
  ///                    need.
  public func htmlPreload(_ value: Preload) -> some View {
    return htmlAttribute(key: "preload", value: value.rawValue)
  }
}

/// Conforming elements can have a `readonly` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasReadonly {}

extension Input: HasReadonly {}
extension Textarea: HasReadonly {}

extension View where Self: HasReadonly {
  /// Whether to allow the value to be edited by the user.
  ///
  /// - Parameter value: Whether to allow the value to be edited by the user.
  public func htmlReadonly(_ value: Bool) -> some View {
    return htmlAttribute(key: "readonly", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `rel` attribute. Includes `<a>`, `<area>`,
/// and `<link>` elements.
public protocol HasRel {}

extension A: HasRel {}
extension Area: HasRel {}
extension Link: HasRel {}

public struct Rel: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var alternate: Rel { return Rel(rawValue: "alternate") }
  public static var author: Rel { return Rel(rawValue: "author") }
  public static var bookmark: Rel { return Rel(rawValue: "bookmark") }
  public static var help: Rel { return Rel(rawValue: "help") }
  public static var icon: Rel { return Rel(rawValue: "icon") }
  public static var license: Rel { return Rel(rawValue: "license") }
  public static var next: Rel { return Rel(rawValue: "next") }
  public static var nofollow: Rel { return Rel(rawValue: "nofollow") }
  public static var prev: Rel { return Rel(rawValue: "prev") }
  public static var search: Rel { return Rel(rawValue: "search") }
  public static var stylesheet: Rel { return Rel(rawValue: "stylesheet") }
  public static var tag: Rel { return Rel(rawValue: "tag") }
}

extension View where Self: HasRel {
  public func htmlRel(_ value: Rel) -> some View {
    return htmlAttribute(key: "rel", value: value.rawValue)
  }
}

/// Conforming elements can have a `required` attribute. Includes `<input>`,
/// `<select>` and `<textarea>` elements.
public protocol HasRequired {}

extension Input: HasRequired {}
extension Select: HasRequired {}
extension Textarea: HasRequired {}

extension View where Self: HasRequired {
  /// Whether the control is required for form submission.
  ///
  /// - Parameter value: Whether the control is required for form submission.
  public func htmlRequired(_ value: Bool) -> some View {
    return htmlAttribute(key: "required", value: value ? "" : nil)
  }
}

/// Conforming elements can have a `rowspan` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasRowspan {}

extension Td: HasRowspan {}
extension Th: HasRowspan {}

extension View where Self: HasRowspan {
  /// /// Number of rows that the cell is to span.
  ///
  /// - Parameter value: Number of rows that the cell is to span.
  public func htmlRowspan(_ value: Int) -> some View {
    return htmlAttribute(key: "rowspan", value: String(value))
  }
}

/// Conforming elements can have a `span` attribute. Includes `<col>` and
/// `<colgroup>` elements.
public protocol HasSpan {}

extension Col: HasSpan {}
extension Colgroup: HasSpan {}

extension View where Self: HasSpan {
  public func htmlSpan(_ value: Int) -> some View {
    return htmlAttribute(key: "span", value: String(value))
  }
}

/// Conforming elements can have a `src` attribute. Includes `<audio>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<script>`, `<source>`,
/// `<track>`, and `<video>` elements.
public protocol HasSrc {}

extension Audio: HasSrc {}
extension Embed: HasSrc {}
extension Iframe: HasSrc {}
extension Img: HasSrc {}
extension Input: HasSrc {}
extension Script: HasSrc {}
extension Source: HasSrc {}
extension Track: HasSrc {}
extension Video: HasSrc {}

extension View where Self: HasSrc {
  /// Address of the resource.
  ///
  /// - Parameter value: Address of the resource.
  public func htmlSrc(_ value: String) -> some View {
    return htmlAttribute(key: "src", value: value)
  }
}

/// Conforming elements can have a `srcset` attribute. Includes `<img>` and
/// `<source>` elements.
public protocol HasSrcset {}

extension Img: HasSrcset {}
extension Source: HasSrcset {}

public enum Size: CustomStringConvertible {
  case w(Int)
  case x(Int)

  public var description: String {
    switch self {
    case let .w(n):
      return "\(n)w"
    case let .x(n):
      return "\(n)x"
    }
  }
}

extension View where Self: HasSrcset {
  /// Images to use in different situations (e.g., high-resolution displays,
  /// small monitors, etc).
  ///
  /// - Parameter value: Images to use in different situations (e.g.,
  ///                    high-resolution displays, small monitors, etc).
  public func htmlSrcset(_ value: [String: Size]) -> some View {
    return htmlAttribute(key: "srcset", value: value.map { url, size in url + " " + size.description }.joined(separator: ", "))
  }
}

/// Conforming elements can have a `target` attribute. Includes `<a>`, 
/// <area>`, `<base>`, and `<form>` elements.
public protocol HasTarget {}

extension A: HasTarget {}
extension Area: HasTarget {}
extension Base: HasTarget {}
extension Form: HasTarget {}

/// Default browsing context for hyperlink navigation and form submission.
public struct Target: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var blank: Target { return Target(rawValue: "_blank") }
  public static var `self`: Target { return Target(rawValue: "") }
  public static var parent: Target { return Target(rawValue: "_parent") }
  public static var top: Target { return Target(rawValue: "_top") }
}

extension View where Self: HasTarget {
  /// Default browsing context for hyperlink navigation and form submission.
  ///
  /// - Parameter value: Default browsing context for hyperlink navigation
  ///                    and form submission.
  public func htmlTarget(_ value: Target) -> some View {
    return htmlAttribute(key: "target", value: value == .self ? nil : value.rawValue)
  }
}

/// Conforming elements can have a media `type` attribute. Includes `<embed>`,
/// `<link>`, `<object>`, `<script>`, `<source>`, and `<style>` elements.
public protocol HasMediaType {}

extension A: HasMediaType {}
extension Embed: HasMediaType {}
extension Link: HasMediaType {}
extension Object: HasMediaType {}
extension Script: HasMediaType {}
extension Source: HasMediaType {}
extension Style: HasMediaType {}

extension View where Self: HasMediaType {
  /// Hint for the type of the referenced resource.
  ///
  /// - Parameter value: Hint for the type of the referenced resource.
  public func htmlType(_ value: MediaType) -> some View {
    return htmlAttribute(key: "type", value: value.description)
  }
}

/// Conforming elements can have a `Double`-based `value` attribute. Includes
/// `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasDoubleValue {}

extension Input: HasDoubleValue {}
extension Meter: HasDoubleValue {}
extension Progress: HasDoubleValue {}

extension View where Self: HasDoubleValue {
  public func htmlValue(_ value: Double) -> some View {
    return htmlAttribute(key: "value", value: String(value))
  }
}

/// Conforming elements can have an `Int`-based `value` attribute. Includes
/// `<input>` and `<li>` elements.
public protocol HasIntValue {}

extension Input: HasIntValue {}
extension Li: HasIntValue {}

extension View where Self: HasIntValue {
  /// The form control's value. (Or, for `<li>` elements, the ordinal value
  /// of the list item.)
  ///
  /// - Parameter value: The form control's value.
  public func htmlValue(_ value: Int) -> some View {
    return htmlAttribute(key: "value", value: String(value))
  }
}

/// Conforming elements can have a `String`-based `value` attribute. Includes
/// `<button>`, `<input>`, and `<option>` elements.
public protocol HasStringValue {}

extension Button: HasStringValue {}
extension Input: HasStringValue {}
extension Option: HasStringValue {}

extension View where Self: HasStringValue {
  /// The form control's value.
  ///
  /// - Parameter value: The form control's value.
  public func htmlValue(_ value: String) -> some View {
    return htmlAttribute(key: "value", value: value)
  }
}

/// Conforming elements can have a media `type` attribute. Includes `<canvas>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and `<video>`
/// elements.
public protocol HasWidth {}

extension Canvas: HasWidth {}
extension Embed: HasWidth {}
extension Iframe: HasWidth {}
extension Img: HasWidth {}
extension Input: HasWidth {}
extension Object: HasWidth {}
extension Svg: HasWidth {}
extension Video: HasWidth {}

extension View where Self: HasWidth {
  /// Horizontal dimension.
  ///
  /// - Parameter value: Vertical dimension.
  public func htmlWidth(_ value: Int) -> some View {
    return htmlAttribute(key: "width", value: String(value))
  }
}

// MARK: - Aria Attributes

public enum AriaBoolean: String, ExpressibleByBooleanLiteral {
  case `false`
  case `true`
  case undefined

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

public enum AriaToggled: String, ExpressibleByBooleanLiteral {
  case `false`
  case `true`
  case mixed
  case undefined

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

public struct Role: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var alert: Role { return Role(rawValue: "alert") }
  public static var alertdialog: Role { return Role(rawValue: "alertdialog") }
  public static var application: Role { return Role(rawValue: "application") }
  public static var article: Role { return Role(rawValue: "article") }
  public static var banner: Role { return Role(rawValue: "banner") }
  public static var button: Role { return Role(rawValue: "button") }
  public static var cell: Role { return Role(rawValue: "cell") }
  public static var checkbox: Role { return Role(rawValue: "checkbox") }
  public static var columnheader: Role { return Role(rawValue: "columnheader") }
  public static var combobox: Role { return Role(rawValue: "combobox") }
  public static var complementary: Role { return Role(rawValue: "complementary") }
  public static var contentinfo: Role { return Role(rawValue: "contentinfo") }
  public static var definition: Role { return Role(rawValue: "definition") }
  public static var dialog: Role { return Role(rawValue: "dialog") }
  public static var directory: Role { return Role(rawValue: "directory") }
  public static var document: Role { return Role(rawValue: "document") }
  public static var feed: Role { return Role(rawValue: "feed") }
  public static var figure: Role { return Role(rawValue: "figure") }
  public static var form: Role { return Role(rawValue: "form") }
  public static var grid: Role { return Role(rawValue: "grid") }
  public static var gridcell: Role { return Role(rawValue: "gridcell") }
  public static var group: Role { return Role(rawValue: "group") }
  public static var heading: Role { return Role(rawValue: "heading") }
  public static var img: Role { return Role(rawValue: "img") }
  public static var link: Role { return Role(rawValue: "link") }
  public static var list: Role { return Role(rawValue: "list") }
  public static var listbox: Role { return Role(rawValue: "listbox") }
  public static var listitem: Role { return Role(rawValue: "listitem") }
  public static var log: Role { return Role(rawValue: "log") }
  public static var main: Role { return Role(rawValue: "main") }
  public static var marquee: Role { return Role(rawValue: "marquee") }
  public static var math: Role { return Role(rawValue: "math") }
  public static var menu: Role { return Role(rawValue: "menu") }
  public static var menubar: Role { return Role(rawValue: "menubar") }
  public static var menuitem: Role { return Role(rawValue: "menuitem") }
  public static var menuitemcheckbox: Role { return Role(rawValue: "menuitemcheckbox") }
  public static var menuitemradio: Role { return Role(rawValue: "menuitemradio") }
  public static var navigation: Role { return Role(rawValue: "navigation") }
  public static var none: Role { return Role(rawValue: "none") }
  public static var note: Role { return Role(rawValue: "note") }
  public static var option: Role { return Role(rawValue: "option") }
  public static var presentation: Role { return Role(rawValue: "presentation") }
  public static var progressbar: Role { return Role(rawValue: "progressbar") }
  public static var radio: Role { return Role(rawValue: "radio") }
  public static var radiogroup: Role { return Role(rawValue: "radiogroup") }
  public static var region: Role { return Role(rawValue: "region") }
  public static var row: Role { return Role(rawValue: "row") }
  public static var rowgroup: Role { return Role(rawValue: "rowgroup") }
  public static var rowheader: Role { return Role(rawValue: "rowheader") }
  public static var scrollbar: Role { return Role(rawValue: "scrollbar") }
  public static var search: Role { return Role(rawValue: "search") }
  public static var searchbox: Role { return Role(rawValue: "searchbox") }
  public static var separator: Role { return Role(rawValue: "separator") }
  public static var slider: Role { return Role(rawValue: "slider") }
  public static var spinbutton: Role { return Role(rawValue: "spinbutton") }
  public static var status: Role { return Role(rawValue: "status") }
  public static var `switch`: Role { return Role(rawValue: "switch") }
  public static var tab: Role { return Role(rawValue: "tab") }
  public static var table: Role { return Role(rawValue: "table") }
  public static var tablist: Role { return Role(rawValue: "tablist") }
  public static var tabpanel: Role { return Role(rawValue: "tabpanel") }
  public static var term: Role { return Role(rawValue: "term") }
  public static var textbox: Role { return Role(rawValue: "textbox") }
  public static var timer: Role { return Role(rawValue: "timer") }
  public static var toolbar: Role { return Role(rawValue: "toolbar") }
  public static var tooltip: Role { return Role(rawValue: "tooltip") }
  public static var tree: Role { return Role(rawValue: "tree") }
  public static var treegrid: Role { return Role(rawValue: "treegrid") }
  public static var treeitem: Role { return Role(rawValue: "treeitem") }
}

extension View {
  public func htmlRole(_ value: Role) -> some View {
    return htmlAttribute(key: "role", value: value.rawValue)
  }

  public func htmlAriaActivedescendant(_ value: String) -> some View {
    return htmlAttribute(key: "aria-activedescendant", value: value)
  }

  public func htmlAriaAtomic(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-atomic", value: String(value))
  }
}

public enum AriaAutocomplete: String {
  case both
  case inline
  case list
  case none
}

extension View {
  public func htmlAriaAutocomplete(_ value: AriaAutocomplete) -> some View {
    return htmlAttribute(key: "aria-autocomplete", value: value.rawValue)
  }

  public func htmlAriaBusy(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-busy", value: String(value))
  }

  public func htmlAriaChecked(_ value: AriaToggled) -> some View {
    return htmlAttribute(key: "aria-checked", value: value.rawValue)
  }

  public func htmlAriaColcount(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-colcount", value: String(value))
  }

  public func htmlAriaColindex(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-colindex", value: String(value))
  }

  public func htmlAriaColspan(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-colspan", value: String(value))
  }

  public func htmlAriaControls(_ value: String) -> some View {
    return htmlAttribute(key: "aria-controls", value: value)
  }
}

public enum AriaCurrent: String, ExpressibleByBooleanLiteral {
  case date
  case `false`
  case location
  case page
  case step
  case time
  case `true`

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension View {
  public func htmlAriaCurrent(_ value: AriaCurrent) -> some View {
    return htmlAttribute(key: "aria-current", value: value.rawValue)
  }

  public func htmlAriaDescribedby(_ value: String) -> some View {
    return htmlAttribute(key: "aria-describedby", value: value)
  }

  public func htmlAriaDetails(_ value: String) -> some View {
    return htmlAttribute(key: "aria-details", value: value)
  }

  public func htmlAriaDisabled(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-disabled", value: String(value))
  }
}

public enum AriaDropeffect: String {
  case copy
  case execute
  case link
  case move
  case none
  case popup
}

extension View {
  public func htmlAriaDropeffect(_ value: AriaDropeffect) -> some View {
    return htmlAttribute(key: "aria-dropeffect", value: value.rawValue)
  }

  public func htmlAriaErrormessage(_ value: String) -> some View {
    return htmlAttribute(key: "aria-errormessage", value: value)
  }

  public func htmlAriaExpanded(_ value: AriaBoolean) -> some View {
    return htmlAttribute(key: "aria-expanded", value: value.rawValue)
  }

  public func htmlAriaFlowto(_ value: String) -> some View {
    return htmlAttribute(key: "aria-flowto", value: value)
  }

  public func htmlAriaGrabbed(_ value: AriaBoolean) -> some View {
    return htmlAttribute(key: "aria-grabbed", value: value.rawValue)
  }
}

public enum AriaHaspopup: String, ExpressibleByBooleanLiteral {
  case dialog
  case `false`
  case grid
  case menu
  case listbox
  case tree

  public init(booleanLiteral value: Bool) {
    self = value ? .menu : .false
  }
}

extension View {
  public func htmlAriaHaspopup(_ value: AriaHaspopup) -> some View {
    return htmlAttribute(key: "aria-haspopup", value: value.rawValue)
  }

  public func htmlAriaHidden(_ value: AriaBoolean) -> some View {
    return htmlAttribute(key: "aria-hidden", value: value.rawValue)
  }
}

public enum AriaInvalid: String, ExpressibleByBooleanLiteral {
  case `false`
  case grammar
  case spelling
  case `true`

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension View {
  public func htmlAriaInvalid(_ value: AriaInvalid) -> some View {
    return htmlAttribute(key: "aria-invalid", value: value.rawValue)
  }

  public func htmlAriaKeyshortcuts(_ value: String) -> some View {
    return htmlAttribute(key: "aria-keyshortcuts", value: value)
  }

  public func htmlAriaLabel(_ value: String) -> some View {
    return htmlAttribute(key: "aria-label", value: value)
  }

  public func htmlAriaLabelledby(_ value: String) -> some View {
    return htmlAttribute(key: "aria-labelledby", value: value)
  }

  public func htmlAriaLevel(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-level", value: String(value))
  }
}

public enum AriaLive: String {
  case assertive
  case off
  case polite
}

extension View {
  public func htmlAriaLive(_ value: AriaLive) -> some View {
    return htmlAttribute(key: "aria-live", value: value.rawValue)
  }

  public func htmlAriaModal(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-modal", value: String(value))
  }

  public func htmlAriaMultiline(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-multiline", value: String(value))
  }

  public func htmlAriaMultiselectable(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-multiselectable", value: String(value))
  }
}

public enum AriaOrientation: String {
  case horizontal
  case undefined
  case vertical
}

extension View {
  public func htmlAriaOrientation(_ value: AriaOrientation) -> some View {
    return htmlAttribute(key: "aria-orientation", value: value.rawValue)
  }

  public func htmlAriaOwns(_ value: String) -> some View {
    return htmlAttribute(key: "aria-owns", value: value)
  }

  public func htmlAriaPlaceholder(_ value: String) -> some View {
    return htmlAttribute(key: "aria-placeholder", value: value)
  }

  public func htmlAriaPosinset(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-posinset", value: String(value))
  }

  public func htmlAriaPressed(_ value: AriaToggled) -> some View {
    return htmlAttribute(key: "aria-pressed", value: value.rawValue)
  }

  public func htmlAriaReadonly(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-readonly", value: String(value))
  }
}

public enum AriaRelevant: String {
  case additions
  case all
  case removals
  case text
}

extension View {
  public func htmlAriaRelevant(_ value: Array<AriaRelevant>) -> some View {
    return htmlAttribute(key: "aria-relevant", value: value.map { $0.rawValue }.joined(separator: " "))
  }

  public func htmlAriaRequired(_ value: Bool) -> some View {
    return htmlAttribute(key: "aria-required", value: String(value))
  }

  public func htmlAriaRoledescription(_ value: String) -> some View {
    return htmlAttribute(key: "aria-roledescription", value: value)
  }

  public func htmlAriaRowcount(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-rowcount", value: String(value))
  }

  public func htmlAriaRowindex(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-rowindex", value: String(value))
  }

  public func htmlAriaRowspan(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-rowspan", value: String(value))
  }

  public func htmlAriaSelected(_ value: AriaBoolean) -> some View {
    return htmlAttribute(key: "aria-selected", value: value.rawValue)
  }

  public func htmlAriaSetsize(_ value: Int) -> some View {
    return htmlAttribute(key: "aria-setsize", value: String(value))
  }
}

public enum AriaSort: String {
  case ascending
  case descending
  case none
  case other
}

extension View {
  public func htmlAriaSort(_ value: AriaSort) -> some View {
    return htmlAttribute(key: "aria-sort", value: value.rawValue)
  }

  public func htmlAriaValuemax(_ value: Double) -> some View {
    return htmlAttribute(key: "aria-valuemax", value: String(value))
  }

  public func htmlAriaValuemin(_ value: Double) -> some View {
    return htmlAttribute(key: "aria-valuemin", value: String(value))
  }

  public func htmlAriaValuenow(_ value: Double) -> some View {
    return htmlAttribute(key: "aria-valuenow", value: String(value))
  }

  public func htmlAriaValuetext(_ value: String) -> some View {
    return htmlAttribute(key: "aria-valuetext", value: value)
  }
}

// MARK: - Event Attributes

extension View {
  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnblur(safe javascript: StaticString) -> some View {
    return htmlOnblur(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnblur(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onblur", value: javascript)
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnclick(safe javascript: StaticString) -> some View {
    return htmlOnclick(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnclick(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onclick", value: javascript)
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncontextmenu(safe javascript: StaticString) -> some View {
    return htmlOncontextmenu(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncontextmenu(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncontextmenu", value: javascript)
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncopy(safe javascript: StaticString) -> some View {
    return htmlOncopy(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncopy(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncopy", value: javascript)
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncut(safe javascript: StaticString) -> some View {
    return htmlOncut(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncut(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncut", value: javascript)
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndblclick(safe javascript: StaticString) -> some View {
    return htmlOndblclick(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndblclick(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondblclick", value: javascript)
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndrag(safe javascript: StaticString) -> some View {
    return htmlOndrag(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndrag(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondrag", value: javascript)
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragend(safe javascript: StaticString) -> some View {
    return htmlOndragend(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragend(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondragend", value: javascript)
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragenter(safe javascript: StaticString) -> some View {
    return htmlOndragenter(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragenter(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondragenter", value: javascript)
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragover(safe javascript: StaticString) -> some View {
    return htmlOndragover(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragover(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondragover", value: javascript)
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragstart(safe javascript: StaticString) -> some View {
    return htmlOndragstart(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndragstart(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondragstart", value: javascript)
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndrop(safe javascript: StaticString) -> some View {
    return htmlOndrop(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndrop(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondrop", value: javascript)
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnfocus(safe javascript: StaticString) -> some View {
    return htmlOnfocus(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnfocus(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onfocus", value: javascript)
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeydown(safe javascript: StaticString) -> some View {
    return htmlOnkeydown(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeydown(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onkeydown", value: javascript)
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeypress(safe javascript: StaticString) -> some View {
    return htmlOnkeypress(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeypress(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onkeypress", value: javascript)
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeyup(safe javascript: StaticString) -> some View {
    return htmlOnkeyup(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnkeyup(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onkeyup", value: javascript)
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmousedown(safe javascript: StaticString) -> some View {
    return htmlOnmousedown(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmousedown(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmousedown", value: javascript)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmousemove(safe javascript: StaticString) -> some View {
    return htmlOnmousemove(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmousemove(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmousemove", value: javascript)
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseout(safe javascript: StaticString) -> some View {
    return htmlOnmouseout(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseout(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmouseout", value: javascript)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseover(safe javascript: StaticString) -> some View {
    return htmlOnmouseover(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseover(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmouseover", value: javascript)
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseup(safe javascript: StaticString) -> some View {
    return htmlOnmouseup(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnmouseup(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmouseup", value: javascript)
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpaste(safe javascript: StaticString) -> some View {
    return htmlOnpaste(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpaste(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onpaste", value: javascript)
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnscroll(safe javascript: StaticString) -> some View {
    return htmlOnscroll(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnscroll(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onscroll", value: javascript)
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnwheel(safe javascript: StaticString) -> some View {
    return htmlOnwheel(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnwheel(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onwheel", value: javascript)
  }

}

extension Body {
  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnafterprint(safe javascript: StaticString) -> some View {
    return htmlOnafterprint(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnafterprint(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onafterprint", value: javascript)
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnbeforeprint(safe javascript: StaticString) -> some View {
    return htmlOnbeforeprint(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnbeforeprint(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onbeforeprint", value: javascript)
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnbeforeunload(safe javascript: StaticString) -> some View {
    return htmlOnbeforeunload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnbeforeunload(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onbeforeunload", value: javascript)
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnhashchange(safe javascript: StaticString) -> some View {
    return htmlOnhashchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnhashchange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onhashchange", value: javascript)
  }

  public func htmlOnmessage(safe javascript: StaticString) -> some View {
    return htmlOnmessage(unsafe: String(describing: javascript))
  }

  public func htmlOnmessage(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onmessage", value: javascript)
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnoffline(safe javascript: StaticString) -> some View {
    return htmlOnoffline(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnoffline(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onoffline", value: javascript)
  }

  /// Execute JavaScript when the browser starts to work online.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnonline(safe javascript: StaticString) -> some View {
    return htmlOnonline(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser starts to work online.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnonline(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ononline", value: javascript)
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpagehide(safe javascript: StaticString) -> some View {
    return htmlOnpagehide(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpagehide(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onpagehide", value: javascript)
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpageshow(safe javascript: StaticString) -> some View {
    return htmlOnpageshow(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpageshow(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onpageshow", value: javascript)
  }

  public func htmlOnpopstate(safe javascript: StaticString) -> some View {
    return htmlOnpopstate(unsafe: String(describing: javascript))
  }

  public func htmlOnpopstate(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onpopstate", value: javascript)
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnresize(safe javascript: StaticString) -> some View {
    return htmlOnresize(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnresize(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onresize", value: javascript)
  }

  public func htmlOnstorage(safe javascript: StaticString) -> some View {
    return htmlOnstorage(unsafe: String(describing: javascript))
  }

  public func htmlOnstorage(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onstorage", value: javascript)
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnunload(safe javascript: StaticString) -> some View {
    return htmlOnunload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnunload(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onunload", value: javascript)
  }
}

extension Details {
  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOntoggle(safe javascript: StaticString) -> some View {
    return htmlOntoggle(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOntoggle(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ontoggle", value: javascript)
  }
}

extension Form {
  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnreset(safe javascript: StaticString) -> some View {
    return htmlOnreset(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnreset(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onreset", value: javascript)
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsubmit(safe javascript: StaticString) -> some View {
    return htmlOnsubmit(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsubmit(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onsubmit", value: javascript)
  }
}

extension Input {
  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOninvalid(safe javascript: StaticString) -> some View {
    return htmlOninvalid(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOninvalid(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oninvalid", value: javascript)
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsearch(safe javascript: StaticString) -> some View {
    return htmlOnsearch(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsearch(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onsearch", value: javascript)
  }
}

// public protocol HasOnabort {}

// extension Audio: HasOnabort {}
// extension Embed: HasOnabort {}
// extension Img: HasOnabort {}
// extension Object: HasOnabort {}
// extension Video: HasOnabort {}

extension View where Self: HasOnabort {
  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnabort(safe javascript: StaticString) -> some View {
    return htmlOnabort(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnabort(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onabort", value: javascript)
  }
}

extension Track {
  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncuechange(safe javascript: StaticString) -> some View {
    return htmlOncuechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncuechange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncuechange", value: javascript)
  }
}

// public protocol HasOncanplay {}

// extension Audio: HasOncanplay {}
// extension Embed: HasOncanplay {}
// extension Object: HasOncanplay {}
// extension Video: HasOncanplay {}

extension View where Self: HasOncanplay {
  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncanplay(safe javascript: StaticString) -> some View {
    return htmlOncanplay(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncanplay(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncanplay", value: javascript)
  }
}

// public protocol HasOncanplaythrough {}

// extension Audio: HasOncanplaythrough {}
// extension Video: HasOncanplaythrough {}

extension View where Self: HasOncanplaythrough {
  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncanplaythrough(safe javascript: StaticString) -> some View {
    return htmlOncanplaythrough(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOncanplaythrough(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oncanplaythrough", value: javascript)
  }
}

// public protocol HasOnchange {}

// extension Input: HasOnchange {}
// extension Select: HasOnchange {}
// extension Textarea: HasOnchange {}

extension View where Self: HasOnchange {
  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnchange(safe javascript: StaticString) -> some View {
    return htmlOnchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnchange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onchange", value: javascript)
  }
}

// public protocol HasOndurationchange {}

// extension Audio: HasOndurationchange {}
// extension Video: HasOndurationchange {}

extension View where Self: HasOndurationchange {
  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndurationchange(safe javascript: StaticString) -> some View {
    return htmlOndurationchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOndurationchange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ondurationchange", value: javascript)
  }
}

// public protocol HasOnemptied {}

// extension Audio: HasOnemptied {}
// extension Video: HasOnemptied {}

extension View where Self: HasOnemptied {
  public func htmlOnemptied(safe javascript: StaticString) -> some View {
    return htmlOnemptied(unsafe: String(describing: javascript))
  }

  public func htmlOnemptied(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onemptied", value: javascript)
  }
}

// public protocol HasOnended {}

// extension Audio: HasOnended {}
// extension Video: HasOnended {}

extension View where Self: HasOnended {
  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnended(safe javascript: StaticString) -> some View {
    return htmlOnended(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnended(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onended", value: javascript)
  }
}

// public protocol HasOnerror {}

// extension Audio: HasOnerror {}
// extension Img: HasOnerror {}
// extension Input: HasOnerror {} // TODO: type="image"
// extension Object: HasOnerror {}
// extension Link: HasOnerror {}
// extension Script: HasOnerror {}
// extension Video: HasOnerror {}

extension View where Self: HasOnerror {
  public func htmlOnerror(safe javascript: StaticString) -> some View {
    return htmlOnerror(unsafe: String(describing: javascript))
  }

  public func htmlOnerror(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onerror", value: javascript)
  }
}

// public protocol HasOninput {}

// extension Input: HasOninput {}
// extension Textarea: HasOninput {}

extension View where Self: HasOninput {
  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOninput(safe javascript: StaticString) -> some View {
    return htmlOninput(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOninput(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "oninput", value: javascript)
  }
}

// public protocol HasOnload {}

// extension Body: HasOnload {}
// extension Iframe: HasOnload {}
// extension Img: HasOnload {}
// extension Input: HasOnload {} // TODO: type="image"
// extension Link: HasOnload {}
// extension Script: HasOnload {}
// extension Style: HasOnload {}

extension View where Self: HasOnload {
  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnload(safe javascript: StaticString) -> some View {
    return htmlOnload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnload(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onload", value: javascript)
  }
}

// public protocol HasOnloadeddata {}

// extension Audio: HasOnloadeddata {}
// extension Video: HasOnloadeddata {}

extension View where Self: HasOnloadeddata {
  public func htmlOnloadeddata(safe javascript: StaticString) -> some View {
    return htmlOnloadeddata(unsafe: String(describing: javascript))
  }

  public func htmlOnloadeddata(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onloadeddata", value: javascript)
  }
}

// public protocol HasOnloadedmetadata {}

// extension Audio: HasOnloadedmetadata {}
// extension Video: HasOnloadedmetadata {}

extension View where Self: HasOnloadedmetadata {
  public func htmlOnloadedmetadata(safe javascript: StaticString) -> some View {
    return htmlOnloadedmetadata(unsafe: String(describing: javascript))
  }

  public func htmlOnloadedmetadata(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onloadedmetadata", value: javascript)
  }
}

// public protocol HasOnloadstart {}

// extension Audio: HasOnloadstart {}
// extension Video: HasOnloadstart {}

extension View where Self: HasOnloadstart {
  public func htmlOnloadstart(safe javascript: StaticString) -> some View {
    return htmlOnloadstart(unsafe: String(describing: javascript))
  }

  public func htmlOnloadstart(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onloadstart", value: javascript)
  }
}

// public protocol HasOnpause {}

// extension Audio: HasOnpause {}
// extension Video: HasOnpause {}

extension View where Self: HasOnpause {
  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpause(safe javascript: StaticString) -> some View {
    return htmlOnpause(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnpause(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onpause", value: javascript)
  }
}

// public protocol HasOnplay {}

// extension Audio: HasOnplay {}
// extension Video: HasOnplay {}

extension View where Self: HasOnplay {
  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnplay(safe javascript: StaticString) -> some View {
    return htmlOnplay(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnplay(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onplay", value: javascript)
  }
}

// public protocol HasOnplaying {}

// extension Audio: HasOnplaying {}
// extension Video: HasOnplaying {}

extension View where Self: HasOnplaying {
  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnplaying(safe javascript: StaticString) -> some View {
    return htmlOnplaying(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnplaying(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onplaying", value: javascript)
  }
}

// public protocol HasOnprogress {}

// extension Audio: HasOnprogress {}
// extension Video: HasOnprogress {}

extension View where Self: HasOnprogress {
  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnprogress(safe javascript: StaticString) -> some View {
    return htmlOnprogress(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnprogress(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onprogress", value: javascript)
  }
}

// public protocol HasOnratechange {}

// extension Audio: HasOnratechange {}
// extension Video: HasOnratechange {}

extension View where Self: HasOnratechange {
  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnratechange(safe javascript: StaticString) -> some View {
    return htmlOnratechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnratechange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onratechange", value: javascript)
  }
}

// public protocol HasOnseeked {}

// extension Audio: HasOnseeked {}
// extension Video: HasOnseeked {}

extension View where Self: HasOnseeked {
  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnseeked(safe javascript: StaticString) -> some View {
    return htmlOnseeked(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnseeked(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onseeked", value: javascript)
  }
}

// public protocol HasOnseeking {}

// extension Audio: HasOnseeking {}
// extension Video: HasOnseeking {}

extension View where Self: HasOnseeking {
  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnseeking(safe javascript: StaticString) -> some View {
    return htmlOnseeking(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnseeking(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onseeking", value: javascript)
  }
}

// public protocol HasOnselect {}

// extension Input: HasOnselect {}
// extension Textarea: HasOnselect {}

extension View where Self: HasOnselect {
  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnselect(safe javascript: StaticString) -> some View {
    return htmlOnselect(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnselect(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onselect", value: javascript)
  }
}

// public protocol HasOnstalled {}

// extension Audio: HasOnstalled {}
// extension Video: HasOnstalled {}

extension View where Self: HasOnstalled {
  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnstalled(safe javascript: StaticString) -> some View {
    return htmlOnstalled(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnstalled(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onstalled", value: javascript)
  }
}

// public protocol HasOnsuspend {}

// extension Audio: HasOnsuspend {}
// extension Video: HasOnsuspend {}

extension View where Self: HasOnsuspend {
  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsuspend(safe javascript: StaticString) -> some View {
    return htmlOnsuspend(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnsuspend(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onsuspend", value: javascript)
  }
}

// public protocol HasOntimeupdate {}

// extension Audio: HasOntimeupdate {}
// extension Video: HasOntimeupdate {}

extension View where Self: HasOntimeupdate {
  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOntimeupdate(safe javascript: StaticString) -> some View {
    return htmlOntimeupdate(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOntimeupdate(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "ontimeupdate", value: javascript)
  }
}

// public protocol HasOnvolumechange {}

// extension Audio: HasOnvolumechange {}
// extension Video: HasOnvolumechange {}

extension View where Self: HasOnvolumechange {
  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnvolumechange(safe javascript: StaticString) -> some View {
    return htmlOnvolumechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnvolumechange(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onvolumechange", value: javascript)
  }
}

// public protocol HasOnwaiting {}

// extension Audio: HasOnwaiting {}
// extension Video: HasOnwaiting {}

extension View where Self: HasOnwaiting {
  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnwaiting(safe javascript: StaticString) -> some View {
    return htmlOnwaiting(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func htmlOnwaiting(unsafe javascript: String) -> some View {
    return htmlAttribute(key: "onwaiting", value: javascript)
  }
}

// MARK: - Html4 Attributes

public enum Html4Size {
  case px(Int)
  case pct(Int)

  public var rawValue: String {
    switch self {
    case let .px(size):
      return "\(size)"
    case let .pct(size):
      return "\(size)%"
    }
  }
}

public enum Alignment: String {
  case left
  case right
  case center
  case justify
}

extension View {
  public func htmlAlign(_ value: Alignment) -> some View {
    return htmlAttribute(key: "align", value: value.rawValue)
  }

  public func htmlBorder(_ value: Int) -> some View {
    return htmlAttribute(key: "border", value: String(value))
  }

  public func htmlHeight(_ value: Html4Size) -> some View {
    return htmlAttribute(key: "height", value: value.rawValue)
  }
}

public enum VerticalAlignment: String {
  case top
  case middle
  case bottom
  case baseline
}

extension View {
  public func htmlValign(_ value: VerticalAlignment) -> some View {
    return htmlAttribute(key: "valign", value: value.rawValue)
  }

  public func htmlWidth(_ value: Html4Size) -> some View {
    return htmlAttribute(key: "width", value: value.rawValue)
  }
}

extension Table {
  public func htmlCellpadding(_ value: Int) -> some View {
    return htmlAttribute(key: "cellpadding", value: String(value))
  }

  public func htmlCellspacing(_ value: Int) -> some View {
    return htmlAttribute(key: "cellspacing", value: String(value))
  }
}