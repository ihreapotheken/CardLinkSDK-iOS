// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IACardLink",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IACardLink",
            targets: ["IACardLinkWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/gematik/OpenSSL-Swift", exact: "4.3.1"),
    ],
    targets: [
        .binaryTarget(
            name: "IACore",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/2.0.9/IACore-0.0.33.xcframework.zip",
            checksum: "0c19e767f6d908fee39889dda45e9ffd5651b1efeaf18256867314b3780b3224"
        ),
        .binaryTarget(
            name: "IACardLink",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/2.0.9/IACardLink-2.0.9.xcframework.zip",
            checksum: "03af43d65cec05a89c997b630cdfd88aeb169e4320a6d64439eed65e13e4606c"
        ),
        .target(
            name: "IACardLinkWrapper",
            dependencies: [ 
                .target(name: "IACore"),
                .target(name: "IACardLink"),
                .product(name: "OpenSSL-Swift", package: "OpenSSL-Swift"),
            ],
            path: "Sources/IACardLinkWrapper"
        )
    ]
)
