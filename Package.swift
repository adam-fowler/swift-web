// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "swift-web",
    dependencies: [
        .package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "0.15.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "swift-web",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Hummingbird", package: "hummingbird"),
                .product(name: "HummingbirdFoundation", package: "hummingbird"),
            ]
        ),
    ]
)
