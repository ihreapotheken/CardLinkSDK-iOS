// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardLinkSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "CardLinkSDK",
            targets: ["CardLinkSDKWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/gematik/OpenSSL-Swift", from: "4.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "CardLinkSDK",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/0.0.203/CardLinkSDK-0.0.203.xcframework.zip",
            checksum: "de2cf45f5618afa2f5631850293ec07d0f1af8768c4ef4d240c8e2b30dd24c3d"
        ),
        .target(
            name: "CardLinkSDKWrapper",
            dependencies: [ 
                .target(name: "CardLinkSDK"),
                .product(name: "OpenSSL-Swift", package: "OpenSSL-Swift"),
            ],
            path: "Sources/CardLinkSDKWrapper"
        )
    ]
)
