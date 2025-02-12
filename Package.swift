// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResponsiveSize",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ResponsiveSize",
            targets: ["ResponsiveSize"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ResponsiveSize",
            cSettings: [
                .unsafeFlags(["-target", "x86_64-apple-ios-simulator"])
            ], swiftSettings: [
                .define("SIMULATOR_ARCHS", .when(platforms: [.iOS], configuration: .debug))
            ]
        ),
    ]
)
