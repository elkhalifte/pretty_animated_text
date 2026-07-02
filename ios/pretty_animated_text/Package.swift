// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pretty_animated_text",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "pretty-animated-text", targets: ["pretty_animated_text"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "pretty_animated_text",
            dependencies: [],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
