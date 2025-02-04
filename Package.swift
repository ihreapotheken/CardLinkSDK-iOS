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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.3.9/CardLinkSDK-1.3.9.xcframework.zip",
            checksum: "40591d699162330b80554596435614c449157c7e2ff4a6f8cc638832e36a751c"
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
