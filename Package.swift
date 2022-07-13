// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-web-page-ui",
  products: [
    .library(name: "SwepUI", targets: ["SwepUI"]),
    .executable(name: "SwepUIExample", targets: ["SwepUIExample"])
  ],
  dependencies: [
    .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", from: "0.15.0"),
    .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.12.0"),
    .package(url: "https://github.com/swiftwasm/OpenCombineJS.git", from: "0.2.0"),
  ],
  targets: [
    .target(
      name: "SwepUI",
      dependencies: [
        .product(name: "JavaScriptKit", package: "JavaScriptKit"),
        .product(name: "JavaScriptEventLoop", package: "JavaScriptKit"),
        .product(name: "JavaScriptBigIntSupport", package: "JavaScriptKit"),
        .product(name: "OpenCombine", package: "OpenCombine"),
        .product(name: "OpenCombineJS", package: "OpenCombineJS"),
      ]
    ),
    .executableTarget(
      name: "SwepUIExample",
      dependencies: ["SwepUI"]
    ),
    .testTarget(
      name: "SwepUITests",
      dependencies: ["SwepUI"]
    ),
  ],
  swiftLanguageVersions: [
    .version("5"),
  ]
)