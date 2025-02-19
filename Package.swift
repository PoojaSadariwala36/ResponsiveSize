// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResponsiveSize",
    platforms: [
        .iOS(.v13) // Ensure compatibility
    ],
    products: [
        .library(
            name: "ResponsiveSize",
            targets: ["ResponsiveSize"]),
    ],
    targets: [
        .target(
            name: "ResponsiveSize",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-target", "arm64-apple-ios-simulator"]) // ✅ Only build for arm64
            ]
        ),
    ]
)
