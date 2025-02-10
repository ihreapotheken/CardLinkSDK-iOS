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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.3.10/CardLinkSDK-1.3.10.xcframework.zip",
            checksum: "f97c2946dfc4b7ffcef84424939ec05a8b7d8fd7315eb6db1ba3e907a78aa742"
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
