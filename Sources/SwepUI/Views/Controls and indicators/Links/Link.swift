@_exported import struct Foundation.URL

/// A control for navigating to a URL.
///
/// You create a link by providing a destination URL and a title. The title
/// tells the user the purpose of the link, which can be either a string, or a
/// title key that returns a localized string used to construct a label
/// displayed to the user in your app's UI. The example below creates a link to
/// `example.com` and displays the title string you provide as a
/// link-styled view in your app:
///
///     Link("View Our Terms of Service",
///           destination: URL(string: "https://www.example.com/TOS.html")!)
///
/// When a user taps or clicks a `Link`, where the URL opens depends on the
/// contents of the URL. For example, a Universal Link will open in the
/// associated app, if possible, but otherwise in the user's default web
/// browser.
///
/// As with other views, you can style links using standard view modifiers
/// depending on the view type of the link's label. For example, a ``Text``
/// label could be modified with a custom ``View/font(_:)`` or
/// ``View/foregroundColor(_:)`` to customize the appearance of the link in
/// your app's UI.
public struct Link<Label>: View where Label: View {

  private let destination: String
  private let label: () -> Label

  /// Creates a control, consisting of a URL and a label, used to navigate
  /// to the given URL.
  ///
  /// - Parameters:
  ///     - destination: The URL for the link.
  ///     - label: A view that describes the destination of URL.
  public init(destination: URL, @ViewBuilder label: @escaping () -> Label) {
    self.destination = destination.absoluteString
    self.label = label
  }

  /// The content and behavior of the view.
  ///
  /// When you implement a custom view, you must implement a computed
  /// `body` property to provide the content for your view. Return a view
  /// that's composed of built-in views that SwiftUI provides, plus other
  /// composite views that you've already defined:
  ///
  ///     struct MyView: View {
  ///         var body: some View {
  ///             Text("Hello, World!")
  ///         }
  ///     }
  ///
  public var body: some View {
    return HtmlA { AnyView(erasing: label()) }
      .htmlHref(destination)
      // .jsClick { _ in
      //   UIApplication.shared.open(URL(string: self.destination)!)
      // }
  }
}

extension Link where Label == Text {

  /// Creates a control, consisting of a URL and a title string, used to
  /// navigate to a URL.
  ///
  /// Use ``Link`` to create a control that your app uses to navigate to a
  /// URL that you provide. The example below creates a link to
  /// `example.com` and displays the title string you provide as a
  /// link-styled view in your app:
  ///
  ///     func marketingLink(_ callToAction: String) -> Link {
  ///         Link(callToAction,
  ///             destination: URL(string: "https://www.example.com/")!)
  ///     }
  ///
  /// - Parameters:
  ///     - title: A text string used as the title for describing the
  ///       underlying `destination` URL.
  ///     - destination: The URL for the link.
  public init<S>(_ title: S, destination: URL) where S: StringProtocol {
    self.init(
      destination: destination,
      label: { Text(title) }
    )
  }
}
