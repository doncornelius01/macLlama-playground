// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MarkdownDetection",
    products: [
        .library(name: "MarkdownDetection", targets: ["MarkdownDetection"])
    ],
    targets: [
        .target(name: "MarkdownDetection"),
        .testTarget(name: "MarkdownDetectionTests", dependencies: ["MarkdownDetection"])
    ]
)
