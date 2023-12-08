// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CanonicalPackageURLs",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "CanonicalPackageURLs",
            targets: ["CanonicalPackageURLs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-parsing", from: "0.12.0"),
        .package(url: "https://github.com/pointfreeco/swift-case-paths", exact: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CanonicalPackageURLs",
            dependencies: [
                .product(name: "Parsing", package: "swift-parsing"),
                .product(name: "CasePaths", package: "swift-case-paths"),
            ]
        ),
        .testTarget(name: "CanonicalPackageURLsTests", dependencies: ["CanonicalPackageURLs"]),
    ]
)
