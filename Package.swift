// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Base58",
  products: [
    .library(name: "Base58", targets: ["Base58"]),
  ],
  dependencies: [
    .package(url: "https://github.com/alja7dali/swift-bits.git", from: "1.0.0"),
    .package(url: "https://github.com/alja7dali/swift-sha256.git", from: "1.0.0"),
  ],
  targets: [
    .target(name: "Base58", dependencies: ["Bits", "SHA256"]),
    .testTarget(name: "Base58Tests", dependencies: ["Base58"]),
  ]
)
