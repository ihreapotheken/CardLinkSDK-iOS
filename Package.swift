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
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/2.0.10/IACore-0.0.35.xcframework.zip",
            checksum: "76a7e19985817dec032ddadf2ee61f07e87195be811343d5760f97be85b8518c"
        ),
        .binaryTarget(
            name: "IACardLink",
            url: "https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/2.0.10/IACardLink-2.0.10.xcframework.zip",
            checksum: "e4ed1547267b0b769d42915a30739891d5e206bff8e98315c9618db7a8d99717"
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
