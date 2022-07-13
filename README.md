
# 🧾 swift-web-page-ui (SwepUI)

<p align="left">
  <img src="https://img.shields.io/badge/Swift_Version-5.1-orange.svg?style=flat&logo=Swift" alt="Swift Version: 5.1"/>
  <a href="https://swift.org/package-manager">
    <img src="https://img.shields.io/badge/SwiftPM-Compatible-darkgreen.svg?style=flat" alt="Swift Package Manager"/>
  </a>
    <img src="https://img.shields.io/badge/Platforms-macOS,%20iOS,%20Linux-darkgreen.svg?style=flat" alt="Swift Package Manager"/>
</p>

SwepUI is an experimental project that intend to mimic SwiftUI functionality on the web using [SwiftWasm](https://github.com/swiftwasm/). As of now it only has the reusability and encapsulation of the SwiftUI Views. But it missing a lot of features that SwiftUI has. For example: Modifiers, Layout, etc. However, you have full control over the css styling.

## Table of Contents

- [🧾 swift-web-page-ui (SwepUI)](#-swift-web-page-ui-swepui)
  - [Table of Contents](#table-of-contents)
  - [Examples](#examples)
  - [Todo](#todo)
  - [Requirements](#requirements)
    - [Getting Started](#getting-started)
  - [Note](#note)
  - [License](#license)

## Examples

```swift
import SwepUI

struct MyApp: App {
  var body: some Scene {
    WindowGroup {
      MyView()
        .display(.flex)
        .alignItems(.center)
        .justifyContent(.center)
        .height(.vh(100))
        .width(.vw(100))    
        .minWidth(100%)
        .minHeight(100%)
    }
  }
}

struct MyView: View {
  @State var counter: Int = 0
  @State var darkMode: Bool = false

  var body: some View {
    Div("counter = \(counter)")
      .color(darkMode ? .white : .tomato)
      .backgroundColor(darkMode ? .tomato : .white)
      .fontSize(.px(100))
      .fontFamily("Helvetica")
      .cursor(.pointer)
      .onClick { _ in
        counter += 1
        darkMode.toggle()
        print(counter)
      }
  }
}

// Run the webapp
MyApp.main()
```

## Todo

- [X] Mimic SwiftUI Encapsulation
- [X] Being able to interact with the CSS style from outside its `body` as following: `MyCustomView().backgroundColor(.red)`
- [ ] Mimic SwiftUI Modifiers
- [ ] Mimic SwiftUI Layout

## Requirements

In order to use `SwepUI`, you need to have the following:

1. `SwiftWasm` installed
2. `Carton` installed

> NOTE: Installing `Carton` will also install `SwiftWasm` out of the box. Read more about the installation process [here](https://github.com/swiftwasm/carton#installation).

### Getting Started

As mentioned earlier `SwepUI` require [`carton`](https://github.com/swiftwasm/carton). You'll install `carton` via [Homebrew](https://brew.sh/). Assuming you already have Homebrew installed, you can create a new SwepUI app by following these steps:

1. Install `carton`:

```bash
brew install swiftwasm/tap/carton
```

If you had `carton` installed before this, make sure you have version 0.16.0 or greater:

```bash
carton --version
```

2. Create a directory for your project and make it current:

```bash
mkdir MySwepUIApp && cd MySwepUIApp
```

3. Initialize the project from a template with `carton`:

```bash
carton init --template basic
```

4. Add `SwepUI` as dependency package to your project:

``` swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-web-page-ui.git", from: "0.0.2")
]
```

5. Add `SwepUI` as dependency target to `MySwepUIApp`:

```swift
targets: [
  .target(
    name: "MySwepUIApp",
    dependencies: [
      .product(name: "SwepUI", package: "swift-web-page-ui"),
    ]
  ),
]
```

6. Build the project and start the development server, `carton dev` can be kept running during development:

```bash
carton dev
```

7. Open [http://127.0.0.1:8080/](http://127.0.0.1:8080/) in your browser to see the app running. You can edit the app source code in your favorite editor and save it, `carton` will immediately rebuild the app and reload all browser tabs that have the app open.

8. After you are done with the development, you can bundle the app for production use by running:

```bash
carton bundle
```

> NOTE: You can also clone this repository and run `carton dev --product SwepUIExample` in its root directory. This will build the demo app that shows almost all of the currently implemented APIs.

## Note

Special thanks to the team and contributors behind [SwiftWasm](https://github.com/swiftwasm) & [Carton](https://github.com/swiftwasm/carton) ♥️..

## License

All modules are released under the MIT license. See [LICENSE](./LICENSE.md) for details.
