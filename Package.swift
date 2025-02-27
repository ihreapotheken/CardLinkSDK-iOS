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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.2/IACore-1.5.2.xcframework.zip",
            checksum: "0f7676680acb816bd81e33414ff0d63e1304a70c5e28659ea4523d1c84409698"
        ),
        .binaryTarget(
            name: "IACardLink",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.2/IACardLink-1.5.2.xcframework.zip",
            checksum: "f39310a681c0d15335144931886f2567385978af35df15749ab9329c75165da0"
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
