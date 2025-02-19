// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResponsiveSize",
    platforms: [
        .iOS(.v13) // Ensure compatibility with your project
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
                .unsafeFlags(["-target", "x86_64-apple-ios-simulator", "-target", "arm64-apple-ios-simulator"])
            ]
        ),
    ]
)
