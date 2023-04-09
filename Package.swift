// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAssistantCore",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SwiftAssistantCore",
            targets: ["SwiftAssistantCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/murilxaraujo/openai-kit.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftAssistantCore",
            dependencies: [
                .product(name: "OpenAIKit", package: "openai-kit")
            ]),
        .testTarget(
            name: "SwiftAssistantCoreTests",
            dependencies: ["SwiftAssistantCore"]),
    ]
)
