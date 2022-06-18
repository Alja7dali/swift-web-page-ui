// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-web-page-ui",
  products: [
    .library(name: "SwepUI", targets: ["SwepUI"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Alja7dali/swift-web-page", from: "0.0.1"),
  ],
  targets: [
    .executableTarget(
      name: "SwepUI",
      dependencies: [
        .product(name: "Swep", package: "swift-web-page"),
      ]
    ),
  ],
  swiftLanguageVersions: [
    .version("5"),
  ]
)
