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
        .package(url: "https://github.com/gematik/OpenSSL-Swift", from: "4.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "IACore",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.6.4/IACore-0.0.20.xcframework.zip",
            checksum: "72c3ba3a234c1fb5ff3b0295b8a52c47babab7b2d42418e3e40507eaf397bac1"
        ),
        .binaryTarget(
            name: "IACardLink",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.6.4/IACardLink-1.6.4.xcframework.zip",
            checksum: "2b535d97d17ea92d23a234c4f1d53aa53d8ae5adf5bae440186a2e79353013a3"
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
