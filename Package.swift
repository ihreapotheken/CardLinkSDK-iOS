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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.3.3/CardLinkSDK-1.3.3.xcframework.zip",
            checksum: "3ffbeb6bc73d6927725da6c8aacdafa59f81deba0a45903ace79912f7908b3ce"
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
