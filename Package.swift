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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.6/IACore-0.0.5.xcframework.zip",
            checksum: "068031347d831691834bca2a9e62b569aab318c851fc9c471b31f8a57a98fe89"
        ),
        .binaryTarget(
            name: "IACardLink",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.6/IACardLink-1.5.6.xcframework.zip",
            checksum: "c18df1ea188cef1b799bf53cb56be386e79d821a2a3c1561295f4c09436600fc"
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
