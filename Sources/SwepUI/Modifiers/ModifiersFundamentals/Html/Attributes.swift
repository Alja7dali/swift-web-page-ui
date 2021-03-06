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
  public func accesskey(_ value: Character) -> some View {
    return attribute(key: "accesskey", value: String(value))
  }

  /// When specified on HTML elements, the `class` attribute must have a value
  /// that is a set of space-separated tokens representing the various classes
  /// that the element belongs to.
  ///
  /// - Parameter value: A set of space-separated tokens.
  public func `class`(_ value: String) -> some View {
    return attribute(key: "class", value: value)
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
  public func contenteditable(_ value: Contenteditable) -> some View {
    return attribute(key: "contenteditable", value: value == .inherit ? nil : value.rawValue)
  }

  /// Adds a `data`-prefixed attribute to the element.
  ///
  /// - Parameters:
  ///   - name: The attribute suffix.
  ///   - value: The value.
  public func data(_ name: StaticString, _ value: String) -> some View {
    return attribute(key: "data-\(name)", value: value)
  }
}

public enum Direction: String {
  case ltr
  case rtl
  case auto
}

extension View {
  public func dir(_ value: Direction) -> some View {
    return attribute(key: "dir", value: value.rawValue)
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
  public func draggable(_ value: Draggable) -> some View {
    return attribute(key: "draggable", value: value == .auto ? nil : value.rawValue)
  }

  /// Hide the element.
  ///
  /// - Parameter value: Hide the element.
  public func hidden(_ value: Bool) -> some View {
    return attribute(key: "hidden", value: value ? "" : nil)
  }

  /// When specified on HTML elements, the `id` attribute value must be unique
  /// amongst all the IDs in the element's tree and must contain at least one
  /// character. The value must not contain any space characters.
  ///
  /// - Parameter value: A unique identifier.
  public func id(_ value: String) -> some View {
    return attribute(key: "id", value: value)
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
  public func lang(_ value: Language) -> some View {
    return attribute(key: "lang", value: value.rawValue)
  }

  public func spellcheck(_ value: Bool) -> some View {
    return attribute(key: "spellcheck", value: String(value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func style(safe value: StaticString) -> some View {
    return style(unsafe: String(describing: value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func style(unsafe value: String) -> some View {
    return attribute(key: "style", value: String(describing: value))
  }

  /// The `tabindex` content attribute allows authors to indicate that an
  /// element is supposed to be focusable, whether it is supposed to be
  /// reachable using sequential focus navigation and, optionally, to suggest
  /// where in the sequential focus navigation order the element appears.
  ///
  /// - Parameter value: The sequential focus navigation order the element
  ///                    appears.
  public func tabindex(_ value: Int) -> some View {
    return attribute(key: "tabindex", value: String(value))
  }

  /// The `title` attribute represents advisory information for the element,
  /// such as would be appropriate for a tooltip.
  ///
  /// - Parameter value: Advisory information.
  public func title(_ value: String) -> some View {
    return attribute(key: "title", value: value)
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
  public func translate(_ value: Translate) -> some View {
    return attribute(key: "translate", value: value.rawValue)
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
  public func mailto(
    _ addresses: String...,
    cc: [String] = [],
    bcc: [String] = [],
    subject: String = "",
    body: String = ""
  ) -> some View {
    return mailto(addresses, cc: cc, bcc: bcc, subject: subject, body: body)
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
  public func mailto(
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
    return href(urlComponents.string ?? "")
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
  public func shape(_ value: AreaShape) -> some View {
    return attribute(key: "shape", value: value == .rect ? nil : value.rawValue)
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
  public func type(_ value: ButtonType) -> some View {
    return attribute(key: "type", value: value.rawValue)
  }
}

extension Details {
  /// Whether the details are visible.
  ///
  /// - Parameter value: Whether the details are visible.
  public func open(_ value: Bool) -> some View {
    return attribute(key: "open", value: value ? "" : nil)
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
  public func action(_ value: String) -> some View {
    return attribute(key: "action", value: value)
  }

  /// The type of form encoding.
  ///
  /// - Parameter value: Enctype to use for form encoding.
  public func enctype(_ value: Enctype) -> some View {
    return attribute(key: "enctype", value: value.rawValue)
  }

  /// HTTP method to use for form submission.
  ///
  /// - Parameter value: HTTP method to use for form submission.
  public func method(_ value: FormMethod) -> some View {
    let rawValue = value.rawValue
    return attribute(key: "method", value: rawValue.isEmpty ? nil : rawValue)
  }

  /// Bypass form control validation for form submission.
  ///
  /// - Parameter value: Bypass form control validation for form submission.
  public func novalidate(_ value: Bool) -> some View {
    return attribute(key: "novalidate", value: value ? "" : nil)
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
  public func sandbox(_ value: [IframeSandbox]) -> some View {
    return attribute(key: "sandbox", value: value.map { $0.rawValue }.joined(separator: " "))
  }

  /// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
  ///
  /// - Parameter value: Whether or not to sandbox the `<iframe>`.
  public func sandbox(_ value: Bool) -> some View {
    return attribute(key: "sandbox", value: value ? "" : nil)
  }

#if canImport(Swep)
  /// A document to render in the `iframe`.
  ///
  /// - Parameter value: A document to render in the `iframe`.
  public func srcdoc<N: HtmlNode>(
    mode: RenderMode = .default,
    _ value: N
  ) -> some View {
    return attribute(key: "srcdoc", value: value.render(mode))
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
  public func checked(_ value: Bool) -> some View {
    return attribute(key: "checked", value: value ? "" : nil)
  }

  /// Pattern to be matched by the form control's value.
  ///
  /// - Parameter value: Pattern to be matched by the form control's value.
  public func pattern(_ value: String) -> some View {
    return attribute(key: "pattern", value: value)
  }

  /// Granularity to be matched by the form control's value.
  ///
  /// - Parameter value: Granularity to be matched by the form control's value.
  public func step(_ value: Int) -> some View {
    return attribute(key: "step", value: String(value))
  }

  public func type(_ value: InputType) -> some View {
    return attribute(key: "type", value: value.rawValue)
  }
}

extension Meta {
  /// Value of the `<meta>` element.
  ///
  /// - Parameter value: Value of the element.
  public func content(_ value: String) -> some View {
    return attribute(key: "content", value: value)
  }
}

public enum ListType: String {
  /// Decimal numbers: `1.`, `2.`, `3.`...`3999.`, `4000.`, `4001.`
  case decimal = "1"

  /// Lowercase Latin alphabet: `a.`, `b.`, `c.`...`ewu.`, `ewv.`, `eww.`
  case lowerAlpha = "a"

  /// Uppercase Latin alphabet: `A.`, `B.`, `C.`...`EWU.`, `EWV.`, `EWW.`
  case upperAlpha = "A"

  /// Lowercase Roman numerals: `1.`, `2.`, `3.`...`mmmcmxcix.`, `i??v??.`, `i??v??i.`
  case lowerRoman = "i"

  /// Uppercase Roman numerals: `I.`, `II.`, `III.`...`MMMCMXCIX.`, `I??V??.`, `I??V??I.`
  case upperRoman = "I"
}

extension Ol {
  /// Number the list backwards.
  ///
  /// - Parameter value: Number the list backwards.
  public func reversed(_ value: Bool) -> some View {
    return attribute(key: "reversed", value: value ? "" : nil)
  }

  /// Ordinal value of the first item.
  ///
  /// - Parameter value: Ordinal value of the first item.
  public func start(_ value: Int) -> some View {
    return attribute(key: "start", value: String(value))
  }

  /// Kind of list marker.
  ///
  /// - Parameter value: Kind of list marker.
  public func type(_ value: ListType) -> some View {
    return attribute(key: "type", value: value.rawValue)
  }
}

extension Option {
  /// Whether the option is selected by default.
  ///
  /// - Parameter value: Whether the option is selected by default.
  public func selected(_ value: Bool) -> some View {
    return attribute(key: "selected", value: value ? "" : nil)
  }
}

extension Script {
  /// Execute script in parallel.
  ///
  /// - Parameter value: Execute script in parallel.
  public func async(_ value: Bool) -> some View {
    return attribute(key: "async", value: value ? "" : nil)
  }

  /// Defer script execution.
  ///
  /// - Parameter value: Defer script execution.
  public func `defer`(_ value: Bool) -> some View {
    return attribute(key: "defer", value: value ? "" : nil)
  }

  /// Cryptographic nonce used in Content Security Policy checks.
  ///
  /// - Parameter value: Cryptographic nonce used in Content Security Policy
  ///                    checks.
  public func nonce(_ value: String) -> some View {
    return attribute(key: "nonce", value: value)
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
  public func media(_ value: String) -> some View {
    return attribute(key: "media", value: value)
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
  public func srcset(_ value: String) -> some View {
    return attribute(key: "srcset", value: value)
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
  public func cols(_ value: Int) -> some View {
    return attribute(key: "cols", value: String(value))
  }

  /// Number of lines to show.
  ///
  /// - Parameter value: Number of lines to show.
  public func rows(_ value: Int) -> some View {
    return attribute(key: "rows", value: String(value))
  }

  /// How the value of the form control is to be wrapped for form submission.
  ///
  /// - Parameter value: How the value of the form control is to be wrapped for
  ///                    form submission.
  public func wrap(_ value: TextareaWrap) -> some View {
    return attribute(key: "wrap", value: value.rawValue)
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
  public func abbr(_ value: String) -> some View {
    return attribute(key: "abbr", value: value)
  }

  /// Specifies which cells the header cell applies to.
  ///
  /// - Parameter value: Specifies which cells the header cell applies to.
  public func scope(_ value: ThScope) -> some View {
    return attribute(key: "scope", value: value.rawValue)
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
    return attribute(key: "default", value: value ? "" : nil)
  }

  /// The type of text track.
  ///
  /// - Parameter value: The type of text track.
  public func kind(_ value: TrackKind) -> some View {
    return attribute(key: "kind", value: value.rawValue)
  }

  /// User-visible label for a `<track>` element.
  ///
  /// - Parameter value: User-visible label.
  public func label(_ value: String) -> some View {
    return attribute(key: "label", value: value)
  }

  /// Language of the text track.
  ///
  /// - Parameter value: Language of the text track.
  public func srclang(_ value: Language) -> some View {
    return attribute(key: "srclang", value: value.rawValue)
  }
}

extension Video {
  public func poster(_ value: String) -> some View {
    return attribute(key: "poster", value: value)
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
  public func alt(_ value: String) -> some View {
    return attribute(key: "alt", value: value)
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
  public func autofocus(_ value: Bool) -> some View {
    return attribute(key: "autofocus", value: value ? "" : nil)
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
  public func autoplay(_ value: Bool) -> some View {
    return attribute(key: "autoplay", value: value ? "" : nil)
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
  public func charset(_ value: MediaType.Charset) -> some View {
    return attribute(key: "charset", value: value.rawValue)
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
  public func cite(_ value: String) -> some View {
    return attribute(key: "cite", value: value)
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
  public func colspan(_ value: Int) -> some View {
    return attribute(key: "colspan", value: String(value))
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
  public func controls(_ value: Bool) -> some View {
    return attribute(key: "controls", value: value ? "" : nil)
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
  public func crossorigin(_ value: Crossorigin) -> some View {
    return attribute(key: "crossorigin", value: value.rawValue)
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
  public func datetime(_ value: JSDate) -> some View {
    return attribute(key: "datetime", value: value.toISOString())
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
  public func datetime(_ value: Date) -> some View {
    return attribute(key: "datetime", value: iso8601DateFormatter.string(from: value))
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
  public func disabled(_ value: Bool) -> some View {
    return attribute(key: "disabled", value: value ? "" : nil)
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
    return attribute(key: "for", value: value)
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
  public func form(_ value: String) -> some View {
    return attribute(key: "form", value: value)
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
  public func headers(_ value: String) -> some View {
    return attribute(key: "headers", value: value)
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
  public func height(_ value: Int) -> some View {
    return attribute(key: "height", value: String(value))
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
  public func href(_ value: String) -> some View {
    return attribute(key: "href", value: value)
  }
}

/// Conforming elements can have a `loop` attribute. Includes `<audio>` and
/// `<video>` elements.
public protocol HasLoop {}

extension Audio: HasLoop {}
extension Video: HasLoop {}

extension View where Self: HasLoop {
  public func loop(_ value: Bool) -> some View {
    return attribute(key: "loop", value: value ? "" : nil)
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
  public func max(_ value: Double) -> some View {
    return attribute(key: "max", value: String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Maximum value.
  ///
  /// - Parameter value: Maximum value.
  public func max(_ value: Int) -> some View {
    return attribute(key: "max", value: String(value))
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
  public func maxlength(_ value: Int) -> some View {
    return attribute(key: "maxlength", value: String(value))
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
  public func min(_ value: Double) -> some View {
    return attribute(key: "min", value: String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Minimum value.
  ///
  /// - Parameter value: Minimum value.
  public func min(_ value: Int) -> some View {
    return attribute(key: "min", value: String(value))
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
  public func minlength(_ value: Int) -> some View {
    return attribute(key: "minlength", value: String(value))
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
  public func multiple(_ value: Bool) -> some View {
    return attribute(key: "multiple", value: value ? "" : nil)
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
  public func muted(_ value: Bool) -> some View {
    return attribute(key: "muted", value: value ? "" : nil)
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
  public func name(_ value: String) -> some View {
    return attribute(key: "name", value: value)
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
  public func placeholder(_ value: String) -> some View {
    return attribute(key: "placeholder", value: value)
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
  public func preload(_ value: Preload) -> some View {
    return attribute(key: "preload", value: value.rawValue)
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
  public func readonly(_ value: Bool) -> some View {
    return attribute(key: "readonly", value: value ? "" : nil)
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
  public func rel(_ value: Rel) -> some View {
    return attribute(key: "rel", value: value.rawValue)
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
  public func required(_ value: Bool) -> some View {
    return attribute(key: "required", value: value ? "" : nil)
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
  public func rowspan(_ value: Int) -> some View {
    return attribute(key: "rowspan", value: String(value))
  }
}

/// Conforming elements can have a `span` attribute. Includes `<col>` and
/// `<colgroup>` elements.
public protocol HasSpan {}

extension Col: HasSpan {}
extension Colgroup: HasSpan {}

extension View where Self: HasSpan {
  public func span(_ value: Int) -> some View {
    return attribute(key: "span", value: String(value))
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
  public func src(_ value: String) -> some View {
    return attribute(key: "src", value: value)
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
  public func srcset(_ value: [String: Size]) -> some View {
    return attribute(key: "srcset", value: value.map { url, size in url + " " + size.description }.joined(separator: ", "))
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
  public func target(_ value: Target) -> some View {
    return attribute(key: "target", value: value == .self ? nil : value.rawValue)
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
  public func type(_ value: MediaType) -> some View {
    return attribute(key: "type", value: value.description)
  }
}

/// Conforming elements can have a `Double`-based `value` attribute. Includes
/// `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasDoubleValue {}

extension Input: HasDoubleValue {}
extension Meter: HasDoubleValue {}
extension Progress: HasDoubleValue {}

extension View where Self: HasDoubleValue {
  public func value(_ value: Double) -> some View {
    return attribute(key: "value", value: String(value))
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
  public func value(_ value: Int) -> some View {
    return attribute(key: "value", value: String(value))
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
  public func value(_ value: String) -> some View {
    return attribute(key: "value", value: value)
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
  public func width(_ value: Int) -> some View {
    return attribute(key: "width", value: String(value))
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
  public func role(_ value: Role) -> some View {
    return attribute(key: "role", value: value.rawValue)
  }

  public func ariaActivedescendant(_ value: String) -> some View {
    return attribute(key: "aria-activedescendant", value: value)
  }

  public func ariaAtomic(_ value: Bool) -> some View {
    return attribute(key: "aria-atomic", value: String(value))
  }
}

public enum AriaAutocomplete: String {
  case both
  case inline
  case list
  case none
}

extension View {
  public func ariaAutocomplete(_ value: AriaAutocomplete) -> some View {
    return attribute(key: "aria-autocomplete", value: value.rawValue)
  }

  public func ariaBusy(_ value: Bool) -> some View {
    return attribute(key: "aria-busy", value: String(value))
  }

  public func ariaChecked(_ value: AriaToggled) -> some View {
    return attribute(key: "aria-checked", value: value.rawValue)
  }

  public func ariaColcount(_ value: Int) -> some View {
    return attribute(key: "aria-colcount", value: String(value))
  }

  public func ariaColindex(_ value: Int) -> some View {
    return attribute(key: "aria-colindex", value: String(value))
  }

  public func ariaColspan(_ value: Int) -> some View {
    return attribute(key: "aria-colspan", value: String(value))
  }

  public func ariaControls(_ value: String) -> some View {
    return attribute(key: "aria-controls", value: value)
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
  public func ariaCurrent(_ value: AriaCurrent) -> some View {
    return attribute(key: "aria-current", value: value.rawValue)
  }

  public func ariaDescribedby(_ value: String) -> some View {
    return attribute(key: "aria-describedby", value: value)
  }

  public func ariaDetails(_ value: String) -> some View {
    return attribute(key: "aria-details", value: value)
  }

  public func ariaDisabled(_ value: Bool) -> some View {
    return attribute(key: "aria-disabled", value: String(value))
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
  public func ariaDropeffect(_ value: AriaDropeffect) -> some View {
    return attribute(key: "aria-dropeffect", value: value.rawValue)
  }

  public func ariaErrormessage(_ value: String) -> some View {
    return attribute(key: "aria-errormessage", value: value)
  }

  public func ariaExpanded(_ value: AriaBoolean) -> some View {
    return attribute(key: "aria-expanded", value: value.rawValue)
  }

  public func ariaFlowto(_ value: String) -> some View {
    return attribute(key: "aria-flowto", value: value)
  }

  public func ariaGrabbed(_ value: AriaBoolean) -> some View {
    return attribute(key: "aria-grabbed", value: value.rawValue)
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
  public func ariaHaspopup(_ value: AriaHaspopup) -> some View {
    return attribute(key: "aria-haspopup", value: value.rawValue)
  }

  public func ariaHidden(_ value: AriaBoolean) -> some View {
    return attribute(key: "aria-hidden", value: value.rawValue)
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
  public func ariaInvalid(_ value: AriaInvalid) -> some View {
    return attribute(key: "aria-invalid", value: value.rawValue)
  }

  public func ariaKeyshortcuts(_ value: String) -> some View {
    return attribute(key: "aria-keyshortcuts", value: value)
  }

  public func ariaLabel(_ value: String) -> some View {
    return attribute(key: "aria-label", value: value)
  }

  public func ariaLabelledby(_ value: String) -> some View {
    return attribute(key: "aria-labelledby", value: value)
  }

  public func ariaLevel(_ value: Int) -> some View {
    return attribute(key: "aria-level", value: String(value))
  }
}

public enum AriaLive: String {
  case assertive
  case off
  case polite
}

extension View {
  public func ariaLive(_ value: AriaLive) -> some View {
    return attribute(key: "aria-live", value: value.rawValue)
  }

  public func ariaModal(_ value: Bool) -> some View {
    return attribute(key: "aria-modal", value: String(value))
  }

  public func ariaMultiline(_ value: Bool) -> some View {
    return attribute(key: "aria-multiline", value: String(value))
  }

  public func ariaMultiselectable(_ value: Bool) -> some View {
    return attribute(key: "aria-multiselectable", value: String(value))
  }
}

public enum AriaOrientation: String {
  case horizontal
  case undefined
  case vertical
}

extension View {
  public func ariaOrientation(_ value: AriaOrientation) -> some View {
    return attribute(key: "aria-orientation", value: value.rawValue)
  }

  public func ariaOwns(_ value: String) -> some View {
    return attribute(key: "aria-owns", value: value)
  }

  public func ariaPlaceholder(_ value: String) -> some View {
    return attribute(key: "aria-placeholder", value: value)
  }

  public func ariaPosinset(_ value: Int) -> some View {
    return attribute(key: "aria-posinset", value: String(value))
  }

  public func ariaPressed(_ value: AriaToggled) -> some View {
    return attribute(key: "aria-pressed", value: value.rawValue)
  }

  public func ariaReadonly(_ value: Bool) -> some View {
    return attribute(key: "aria-readonly", value: String(value))
  }
}

public enum AriaRelevant: String {
  case additions
  case all
  case removals
  case text
}

extension View {
  public func ariaRelevant(_ value: Array<AriaRelevant>) -> some View {
    return attribute(key: "aria-relevant", value: value.map { $0.rawValue }.joined(separator: " "))
  }

  public func ariaRequired(_ value: Bool) -> some View {
    return attribute(key: "aria-required", value: String(value))
  }

  public func ariaRoledescription(_ value: String) -> some View {
    return attribute(key: "aria-roledescription", value: value)
  }

  public func ariaRowcount(_ value: Int) -> some View {
    return attribute(key: "aria-rowcount", value: String(value))
  }

  public func ariaRowindex(_ value: Int) -> some View {
    return attribute(key: "aria-rowindex", value: String(value))
  }

  public func ariaRowspan(_ value: Int) -> some View {
    return attribute(key: "aria-rowspan", value: String(value))
  }

  public func ariaSelected(_ value: AriaBoolean) -> some View {
    return attribute(key: "aria-selected", value: value.rawValue)
  }

  public func ariaSetsize(_ value: Int) -> some View {
    return attribute(key: "aria-setsize", value: String(value))
  }
}

public enum AriaSort: String {
  case ascending
  case descending
  case none
  case other
}

extension View {
  public func ariaSort(_ value: AriaSort) -> some View {
    return attribute(key: "aria-sort", value: value.rawValue)
  }

  public func ariaValuemax(_ value: Double) -> some View {
    return attribute(key: "aria-valuemax", value: String(value))
  }

  public func ariaValuemin(_ value: Double) -> some View {
    return attribute(key: "aria-valuemin", value: String(value))
  }

  public func ariaValuenow(_ value: Double) -> some View {
    return attribute(key: "aria-valuenow", value: String(value))
  }

  public func ariaValuetext(_ value: String) -> some View {
    return attribute(key: "aria-valuetext", value: value)
  }
}

// MARK: - Event Attributes

// extension View {
//   /// Execute JavaScript when a user leaves an input field.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onblur(safe javascript: StaticString) -> some View {
//     return onblur(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user leaves an input field.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onblur(unsafe javascript: String) -> some View {
//     return attribute(key: "onblur", value: javascript)
//   }

//   /// Execute JavaScript when an element is clicked.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onclick(safe javascript: StaticString) -> some View {
//     return onclick(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element is clicked.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onclick(unsafe javascript: String) -> some View {
//     return attribute(key: "onclick", value: javascript)
//   }

//   /// Execute JavaScript when the user right-clicks on an element with a context menu.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncontextmenu(safe javascript: StaticString) -> some View {
//     return oncontextmenu(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user right-clicks on an element with a context menu.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncontextmenu(unsafe javascript: String) -> some View {
//     return attribute(key: "oncontextmenu", value: javascript)
//   }

//   /// Execute JavaScript when copying some text of an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncopy(safe javascript: StaticString) -> some View {
//     return oncopy(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when copying some text of an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncopy(unsafe javascript: String) -> some View {
//     return attribute(key: "oncopy", value: javascript)
//   }

//   /// Execute JavaScript when cutting some text in an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncut(safe javascript: StaticString) -> some View {
//     return oncut(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when cutting some text in an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncut(unsafe javascript: String) -> some View {
//     return attribute(key: "oncut", value: javascript)
//   }

//   /// Execute JavaScript when an element is double-clicked.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondblclick(safe javascript: StaticString) -> some View {
//     return ondblclick(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element is double-clicked.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondblclick(unsafe javascript: String) -> some View {
//     return attribute(key: "ondblclick", value: javascript)
//   }

//   /// Execute JavaScript when an element is being dragged.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondrag(safe javascript: StaticString) -> some View {
//     return ondrag(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element is being dragged.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondrag(unsafe javascript: String) -> some View {
//     return attribute(key: "ondrag", value: javascript)
//   }

//   /// Execute JavaScript when the user has finished dragging an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragend(safe javascript: StaticString) -> some View {
//     return ondragend(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user has finished dragging an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragend(unsafe javascript: String) -> some View {
//     return attribute(key: "ondragend", value: javascript)
//   }

//   /// Execute JavaScript when a draggable element enters a drop target.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragenter(safe javascript: StaticString) -> some View {
//     return ondragenter(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a draggable element enters a drop target.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragenter(unsafe javascript: String) -> some View {
//     return attribute(key: "ondragenter", value: javascript)
//   }

//   /// Execute JavaScript when an element is being dragged over a drop target.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragover(safe javascript: StaticString) -> some View {
//     return ondragover(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element is being dragged over a drop target.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragover(unsafe javascript: String) -> some View {
//     return attribute(key: "ondragover", value: javascript)
//   }

//   /// Execute JavaScript when the user starts to drag an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragstart(safe javascript: StaticString) -> some View {
//     return ondragstart(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user starts to drag an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondragstart(unsafe javascript: String) -> some View {
//     return attribute(key: "ondragstart", value: javascript)
//   }

//   /// Execute JavaScript when a draggable element is dropped in the element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondrop(safe javascript: StaticString) -> some View {
//     return ondrop(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a draggable element is dropped in the element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondrop(unsafe javascript: String) -> some View {
//     return attribute(key: "ondrop", value: javascript)
//   }

//   /// Execute JavaScript when an element gets focus.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onfocus(safe javascript: StaticString) -> some View {
//     return onfocus(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element gets focus.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onfocus(unsafe javascript: String) -> some View {
//     return attribute(key: "onfocus", value: javascript)
//   }

//   /// Execute JavaScript when a user is pressing a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeydown(safe javascript: StaticString) -> some View {
//     return onkeydown(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user is pressing a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeydown(unsafe javascript: String) -> some View {
//     return attribute(key: "onkeydown", value: javascript)
//   }

//   /// Execute JavaScript when a user presses a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeypress(safe javascript: StaticString) -> some View {
//     return onkeypress(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user presses a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeypress(unsafe javascript: String) -> some View {
//     return attribute(key: "onkeypress", value: javascript)
//   }

//   /// Execute JavaScript when a user releases a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeyup(safe javascript: StaticString) -> some View {
//     return onkeyup(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user releases a key.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onkeyup(unsafe javascript: String) -> some View {
//     return attribute(key: "onkeyup", value: javascript)
//   }

//   /// Execute JavaScript when pressing a mouse button over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmousedown(safe javascript: StaticString) -> some View {
//     return onmousedown(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when pressing a mouse button over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmousedown(unsafe javascript: String) -> some View {
//     return attribute(key: "onmousedown", value: javascript)
//   }

//   /// Execute JavaScript when moving the mouse pointer over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmousemove(safe javascript: StaticString) -> some View {
//     return onmousemove(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when moving the mouse pointer over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmousemove(unsafe javascript: String) -> some View {
//     return attribute(key: "onmousemove", value: javascript)
//   }

//   /// Execute JavaScript when moving the mouse pointer out of an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseout(safe javascript: StaticString) -> some View {
//     return onmouseout(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when moving the mouse pointer out of an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseout(unsafe javascript: String) -> some View {
//     return attribute(key: "onmouseout", value: javascript)
//   }

//   /// Execute JavaScript when moving the mouse pointer over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseover(safe javascript: StaticString) -> some View {
//     return onmouseover(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when moving the mouse pointer over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseover(unsafe javascript: String) -> some View {
//     return attribute(key: "onmouseover", value: javascript)
//   }

//   /// Execute JavaScript when releasing a mouse button over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseup(safe javascript: StaticString) -> some View {
//     return onmouseup(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when releasing a mouse button over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onmouseup(unsafe javascript: String) -> some View {
//     return attribute(key: "onmouseup", value: javascript)
//   }

//   /// Execute JavaScript when pasting some text in an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpaste(safe javascript: StaticString) -> some View {
//     return onpaste(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when pasting some text in an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpaste(unsafe javascript: String) -> some View {
//     return attribute(key: "onpaste", value: javascript)
//   }

//   /// Execute JavaScript when an element is being scrolled.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onscroll(safe javascript: StaticString) -> some View {
//     return onscroll(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an element is being scrolled.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onscroll(unsafe javascript: String) -> some View {
//     return attribute(key: "onscroll", value: javascript)
//   }

//   /// Execute JavaScript when the user rolls the mouse wheel over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onwheel(safe javascript: StaticString) -> some View {
//     return onwheel(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user rolls the mouse wheel over an element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onwheel(unsafe javascript: String) -> some View {
//     return attribute(key: "onwheel", value: javascript)
//   }

// }

// extension Body {
//   /// Execute JavaScript when a page has started printing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onafterprint(safe javascript: StaticString) -> some View {
//     return onafterprint(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a page has started printing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onafterprint(unsafe javascript: String) -> some View {
//     return attribute(key: "onafterprint", value: javascript)
//   }

//   /// Execute JavaScript when a page is about to be printed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onbeforeprint(safe javascript: StaticString) -> some View {
//     return onbeforeprint(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a page is about to be printed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onbeforeprint(unsafe javascript: String) -> some View {
//     return attribute(key: "onbeforeprint", value: javascript)
//   }

//   /// Execute JavaScript when the page is about to be unloaded.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onbeforeunload(safe javascript: StaticString) -> some View {
//     return onbeforeunload(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the page is about to be unloaded.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onbeforeunload(unsafe javascript: String) -> some View {
//     return attribute(key: "onbeforeunload", value: javascript)
//   }

//   /// Execute JavaScript when the anchor part has been changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onhashchange(safe javascript: StaticString) -> some View {
//     return onhashchange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the anchor part has been changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onhashchange(unsafe javascript: String) -> some View {
//     return attribute(key: "onhashchange", value: javascript)
//   }

//   public func onmessage(safe javascript: StaticString) -> some View {
//     return onmessage(unsafe: String(describing: javascript))
//   }

//   public func onmessage(unsafe javascript: String) -> some View {
//     return attribute(key: "onmessage", value: javascript)
//   }

//   /// Execute JavaScript when the browser starts to work offline.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onoffline(safe javascript: StaticString) -> some View {
//     return onoffline(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the browser starts to work offline.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onoffline(unsafe javascript: String) -> some View {
//     return attribute(key: "onoffline", value: javascript)
//   }

//   /// Execute JavaScript when the browser starts to work online.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ononline(safe javascript: StaticString) -> some View {
//     return ononline(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the browser starts to work online.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ononline(unsafe javascript: String) -> some View {
//     return attribute(key: "ononline", value: javascript)
//   }

//   /// Execute JavaScript when the user is navigating away from a webpage.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpagehide(safe javascript: StaticString) -> some View {
//     return onpagehide(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user is navigating away from a webpage.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpagehide(unsafe javascript: String) -> some View {
//     return attribute(key: "onpagehide", value: javascript)
//   }

//   /// Execute JavaScript when a user navigates to a webpage.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpageshow(safe javascript: StaticString) -> some View {
//     return onpageshow(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user navigates to a webpage.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpageshow(unsafe javascript: String) -> some View {
//     return attribute(key: "onpageshow", value: javascript)
//   }

//   public func onpopstate(safe javascript: StaticString) -> some View {
//     return onpopstate(unsafe: String(describing: javascript))
//   }

//   public func onpopstate(unsafe javascript: String) -> some View {
//     return attribute(key: "onpopstate", value: javascript)
//   }

//   /// Execute JavaScript when the browser window is resized.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onresize(safe javascript: StaticString) -> some View {
//     return onresize(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the browser window is resized.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onresize(unsafe javascript: String) -> some View {
//     return attribute(key: "onresize", value: javascript)
//   }

//   public func onstorage(safe javascript: StaticString) -> some View {
//     return onstorage(unsafe: String(describing: javascript))
//   }

//   public func onstorage(unsafe javascript: String) -> some View {
//     return attribute(key: "onstorage", value: javascript)
//   }

//   /// Execute JavaScript when a user unloads the document.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onunload(safe javascript: StaticString) -> some View {
//     return onunload(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user unloads the document.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onunload(unsafe javascript: String) -> some View {
//     return attribute(key: "onunload", value: javascript)
//   }
// }

// extension Details {
//   /// Execute JavaScript when a `<details>` element is opened or closed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ontoggle(safe javascript: StaticString) -> some View {
//     return ontoggle(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a `<details>` element is opened or closed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ontoggle(unsafe javascript: String) -> some View {
//     return attribute(key: "ontoggle", value: javascript)
//   }
// }

// extension Form {
//   /// Execute JavaScript when a form is reset.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onreset(safe javascript: StaticString) -> some View {
//     return onreset(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a form is reset.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onreset(unsafe javascript: String) -> some View {
//     return attribute(key: "onreset", value: javascript)
//   }

//   /// Execute JavaScript when a form is submitted.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsubmit(safe javascript: StaticString) -> some View {
//     return onsubmit(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a form is submitted.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsubmit(unsafe javascript: String) -> some View {
//     return attribute(key: "onsubmit", value: javascript)
//   }
// }

// extension Input {
//   /// Execute JavaScript when an input field is invalid.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oninvalid(safe javascript: StaticString) -> some View {
//     return oninvalid(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when an input field is invalid.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oninvalid(unsafe javascript: String) -> some View {
//     return attribute(key: "oninvalid", value: javascript)
//   }

//   /// Execute JavaScript when submitting a search.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsearch(safe javascript: StaticString) -> some View {
//     return onsearch(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when submitting a search.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsearch(unsafe javascript: String) -> some View {
//     return attribute(key: "onsearch", value: javascript)
//   }
// }

// public protocol HasOnabort {}

// extension Audio: HasOnabort {}
// extension Embed: HasOnabort {}
// extension Img: HasOnabort {}
// extension Object: HasOnabort {}
// extension Video: HasOnabort {}

// extension View where Self: HasOnabort {
//   /// Execute JavaScript if loading of a resource is aborted.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onabort(safe javascript: StaticString) -> some View {
//     return onabort(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript if loading of a resource is aborted.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onabort(unsafe javascript: String) -> some View {
//     return attribute(key: "onabort", value: javascript)
//   }
// }

// extension Track {
//   /// Execute JavaScript when the cue changes in a `<track>` element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncuechange(safe javascript: StaticString) -> some View {
//     return oncuechange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the cue changes in a `<track>` element.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncuechange(unsafe javascript: String) -> some View {
//     return attribute(key: "oncuechange", value: javascript)
//   }
// }

// public protocol HasOncanplay {}

// extension Audio: HasOncanplay {}
// extension Embed: HasOncanplay {}
// extension Object: HasOncanplay {}
// extension Video: HasOncanplay {}

// extension View where Self: HasOncanplay {
//   /// Execute JavaScript when a resource is ready to start playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncanplay(safe javascript: StaticString) -> some View {
//     return oncanplay(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a resource is ready to start playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncanplay(unsafe javascript: String) -> some View {
//     return attribute(key: "oncanplay", value: javascript)
//   }
// }

// public protocol HasOncanplaythrough {}

// extension Audio: HasOncanplaythrough {}
// extension Video: HasOncanplaythrough {}

// extension View where Self: HasOncanplaythrough {
//   /// Execute JavaScript when a resource can be played all the way through, without stopping.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncanplaythrough(safe javascript: StaticString) -> some View {
//     return oncanplaythrough(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a resource can be played all the way through, without stopping.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oncanplaythrough(unsafe javascript: String) -> some View {
//     return attribute(key: "oncanplaythrough", value: javascript)
//   }
// }

// public protocol HasOnchange {}

// extension Input: HasOnchange {}
// extension Select: HasOnchange {}
// extension Textarea: HasOnchange {}

// extension View where Self: HasOnchange {
//   /// Execute JavaScript when a user changes the value of a form control.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onchange(safe javascript: StaticString) -> some View {
//     return onchange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user changes the value of a form control.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onchange(unsafe javascript: String) -> some View {
//     return attribute(key: "onchange", value: javascript)
//   }
// }

// public protocol HasOndurationchange {}

// extension Audio: HasOndurationchange {}
// extension Video: HasOndurationchange {}

// extension View where Self: HasOndurationchange {
//   /// Execute JavaScript when the media is ready to start playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondurationchange(safe javascript: StaticString) -> some View {
//     return ondurationchange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the media is ready to start playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ondurationchange(unsafe javascript: String) -> some View {
//     return attribute(key: "ondurationchange", value: javascript)
//   }
// }

// public protocol HasOnemptied {}

// extension Audio: HasOnemptied {}
// extension Video: HasOnemptied {}

// extension View where Self: HasOnemptied {
//   public func onemptied(safe javascript: StaticString) -> some View {
//     return onemptied(unsafe: String(describing: javascript))
//   }

//   public func onemptied(unsafe javascript: String) -> some View {
//     return attribute(key: "onemptied", value: javascript)
//   }
// }

// public protocol HasOnended {}

// extension Audio: HasOnended {}
// extension Video: HasOnended {}

// extension View where Self: HasOnended {
//   /// Execute JavaScript when the media has stopped playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onended(safe javascript: StaticString) -> some View {
//     return onended(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the media has stopped playing.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onended(unsafe javascript: String) -> some View {
//     return attribute(key: "onended", value: javascript)
//   }
// }

// public protocol HasOnerror {}

// extension Audio: HasOnerror {}
// extension Img: HasOnerror {}
// extension Input: HasOnerror {} // TODO: type="image"
// extension Object: HasOnerror {}
// extension Link: HasOnerror {}
// extension Script: HasOnerror {}
// extension Video: HasOnerror {}

// extension View where Self: HasOnerror {
//   public func onerror(safe javascript: StaticString) -> some View {
//     return onerror(unsafe: String(describing: javascript))
//   }

//   public func onerror(unsafe javascript: String) -> some View {
//     return attribute(key: "onerror", value: javascript)
//   }
// }

// public protocol HasOninput {}

// extension Input: HasOninput {}
// extension Textarea: HasOninput {}

// extension View where Self: HasOninput {
//   /// Execute JavaScript when a user writes something in a text field.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oninput(safe javascript: StaticString) -> some View {
//     return oninput(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when a user writes something in a text field.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func oninput(unsafe javascript: String) -> some View {
//     return attribute(key: "oninput", value: javascript)
//   }
// }

// public protocol HasOnload {}

// extension Body: HasOnload {}
// extension Iframe: HasOnload {}
// extension Img: HasOnload {}
// extension Input: HasOnload {} // TODO: type="image"
// extension Link: HasOnload {}
// extension Script: HasOnload {}
// extension Style: HasOnload {}

// extension View where Self: HasOnload {
//   /// Execute JavaScript immediately after a page has been loaded.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onload(safe javascript: StaticString) -> some View {
//     return onload(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript immediately after a page has been loaded.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onload(unsafe javascript: String) -> some View {
//     return attribute(key: "onload", value: javascript)
//   }
// }

// public protocol HasOnloadeddata {}

// extension Audio: HasOnloadeddata {}
// extension Video: HasOnloadeddata {}

// extension View where Self: HasOnloadeddata {
//   public func onloadeddata(safe javascript: StaticString) -> some View {
//     return onloadeddata(unsafe: String(describing: javascript))
//   }

//   public func onloadeddata(unsafe javascript: String) -> some View {
//     return attribute(key: "onloadeddata", value: javascript)
//   }
// }

// public protocol HasOnloadedmetadata {}

// extension Audio: HasOnloadedmetadata {}
// extension Video: HasOnloadedmetadata {}

// extension View where Self: HasOnloadedmetadata {
//   public func onloadedmetadata(safe javascript: StaticString) -> some View {
//     return onloadedmetadata(unsafe: String(describing: javascript))
//   }

//   public func onloadedmetadata(unsafe javascript: String) -> some View {
//     return attribute(key: "onloadedmetadata", value: javascript)
//   }
// }

// public protocol HasOnloadstart {}

// extension Audio: HasOnloadstart {}
// extension Video: HasOnloadstart {}

// extension View where Self: HasOnloadstart {
//   public func onloadstart(safe javascript: StaticString) -> some View {
//     return onloadstart(unsafe: String(describing: javascript))
//   }

//   public func onloadstart(unsafe javascript: String) -> some View {
//     return attribute(key: "onloadstart", value: javascript)
//   }
// }

// public protocol HasOnpause {}

// extension Audio: HasOnpause {}
// extension Video: HasOnpause {}

// extension View where Self: HasOnpause {
//   /// Execute JavaScript when media has been paused.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpause(safe javascript: StaticString) -> some View {
//     return onpause(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when media has been paused.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onpause(unsafe javascript: String) -> some View {
//     return attribute(key: "onpause", value: javascript)
//   }
// }

// public protocol HasOnplay {}

// extension Audio: HasOnplay {}
// extension Video: HasOnplay {}

// extension View where Self: HasOnplay {
//   /// Execute JavaScript when media has been played.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onplay(safe javascript: StaticString) -> some View {
//     return onplay(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when media has been played.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onplay(unsafe javascript: String) -> some View {
//     return attribute(key: "onplay", value: javascript)
//   }
// }

// public protocol HasOnplaying {}

// extension Audio: HasOnplaying {}
// extension Video: HasOnplaying {}

// extension View where Self: HasOnplaying {
//   /// Execute JavaScript when media is ready to start after having been paused.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onplaying(safe javascript: StaticString) -> some View {
//     return onplaying(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when media is ready to start after having been paused.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onplaying(unsafe javascript: String) -> some View {
//     return attribute(key: "onplaying", value: javascript)
//   }
// }

// public protocol HasOnprogress {}

// extension Audio: HasOnprogress {}
// extension Video: HasOnprogress {}

// extension View where Self: HasOnprogress {
//   /// Execute JavaScript when media is downloading.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onprogress(safe javascript: StaticString) -> some View {
//     return onprogress(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when media is downloading.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onprogress(unsafe javascript: String) -> some View {
//     return attribute(key: "onprogress", value: javascript)
//   }
// }

// public protocol HasOnratechange {}

// extension Audio: HasOnratechange {}
// extension Video: HasOnratechange {}

// extension View where Self: HasOnratechange {
//   /// Execute JavaScript when the playing speed of media is changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onratechange(safe javascript: StaticString) -> some View {
//     return onratechange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the playing speed of media is changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onratechange(unsafe javascript: String) -> some View {
//     return attribute(key: "onratechange", value: javascript)
//   }
// }

// public protocol HasOnseeked {}

// extension Audio: HasOnseeked {}
// extension Video: HasOnseeked {}

// extension View where Self: HasOnseeked {
//   /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onseeked(safe javascript: StaticString) -> some View {
//     return onseeked(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onseeked(unsafe javascript: String) -> some View {
//     return attribute(key: "onseeked", value: javascript)
//   }
// }

// public protocol HasOnseeking {}

// extension Audio: HasOnseeking {}
// extension Video: HasOnseeking {}

// extension View where Self: HasOnseeking {
//   /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onseeking(safe javascript: StaticString) -> some View {
//     return onseeking(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onseeking(unsafe javascript: String) -> some View {
//     return attribute(key: "onseeking", value: javascript)
//   }
// }

// public protocol HasOnselect {}

// extension Input: HasOnselect {}
// extension Textarea: HasOnselect {}

// extension View where Self: HasOnselect {
//   /// Execute JavaScript when some text has been selected.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onselect(safe javascript: StaticString) -> some View {
//     return onselect(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when some text has been selected.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onselect(unsafe javascript: String) -> some View {
//     return attribute(key: "onselect", value: javascript)
//   }
// }

// public protocol HasOnstalled {}

// extension Audio: HasOnstalled {}
// extension Video: HasOnstalled {}

// extension View where Self: HasOnstalled {
//   /// Execute JavaScript when the browser is trying to get media data, but data is not available.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onstalled(safe javascript: StaticString) -> some View {
//     return onstalled(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the browser is trying to get media data, but data is not available.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onstalled(unsafe javascript: String) -> some View {
//     return attribute(key: "onstalled", value: javascript)
//   }
// }

// public protocol HasOnsuspend {}

// extension Audio: HasOnsuspend {}
// extension Video: HasOnsuspend {}

// extension View where Self: HasOnsuspend {
//   /// Execute JavaScript when the browser is intentionally not getting media data.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsuspend(safe javascript: StaticString) -> some View {
//     return onsuspend(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the browser is intentionally not getting media data.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onsuspend(unsafe javascript: String) -> some View {
//     return attribute(key: "onsuspend", value: javascript)
//   }
// }

// public protocol HasOntimeupdate {}

// extension Audio: HasOntimeupdate {}
// extension Video: HasOntimeupdate {}

// extension View where Self: HasOntimeupdate {
//   /// Execute JavaScript when the current playback position has changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ontimeupdate(safe javascript: StaticString) -> some View {
//     return ontimeupdate(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the current playback position has changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func ontimeupdate(unsafe javascript: String) -> some View {
//     return attribute(key: "ontimeupdate", value: javascript)
//   }
// }

// public protocol HasOnvolumechange {}

// extension Audio: HasOnvolumechange {}
// extension Video: HasOnvolumechange {}

// extension View where Self: HasOnvolumechange {
//   /// Execute JavaScript when the volume of a video has been changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onvolumechange(safe javascript: StaticString) -> some View {
//     return onvolumechange(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the volume of a video has been changed.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onvolumechange(unsafe javascript: String) -> some View {
//     return attribute(key: "onvolumechange", value: javascript)
//   }
// }

// public protocol HasOnwaiting {}

// extension Audio: HasOnwaiting {}
// extension Video: HasOnwaiting {}

// extension View where Self: HasOnwaiting {
//   /// Execute JavaScript when the media stops because it needs to buffer the next frame.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onwaiting(safe javascript: StaticString) -> some View {
//     return onwaiting(unsafe: String(describing: javascript))
//   }

//   /// Execute JavaScript when the media stops because it needs to buffer the next frame.
//   ///
//   /// - Parameter javascript: JavaScript to execute.
//   public func onwaiting(unsafe javascript: String) -> some View {
//     return attribute(key: "onwaiting", value: javascript)
//   }
// }

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
  public func align(_ value: Alignment) -> some View {
    return attribute(key: "align", value: value.rawValue)
  }

  public func border(_ value: Int) -> some View {
    return attribute(key: "border", value: String(value))
  }

  public func height(_ value: Html4Size) -> some View {
    return attribute(key: "height", value: value.rawValue)
  }
}

public enum VerticalAlignment: String {
  case top
  case middle
  case bottom
  case baseline
}

extension View {
  public func valign(_ value: VerticalAlignment) -> some View {
    return attribute(key: "valign", value: value.rawValue)
  }

  public func width(_ value: Html4Size) -> some View {
    return attribute(key: "width", value: value.rawValue)
  }
}

extension Table {
  public func cellpadding(_ value: Int) -> some View {
    return attribute(key: "cellpadding", value: String(value))
  }

  public func cellspacing(_ value: Int) -> some View {
    return attribute(key: "cellspacing", value: String(value))
  }
}