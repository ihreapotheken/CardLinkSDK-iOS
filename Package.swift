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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.3.2/CardLinkSDK-1.3.2.xcframework.zip",
            checksum: "94b9009a18fb1e21b9ca8856dd8d54270b33aeb2236885e18ff5c79f4e64d3ab"
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
