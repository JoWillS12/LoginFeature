// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoginFeature",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "LoginFeature",
            targets: ["LoginFeature"]
        ),
    ],
    targets: [
        .target(
            name: "LoginFeature",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "LoginFeatureTests",
            dependencies: ["LoginFeature"],
            path: "Tests"
        ),
    ]
)


