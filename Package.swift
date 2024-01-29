// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-web",
    platforms : [.macOS(.v14)],
    products: [.executable(name: "swift-web", targets: ["swift-web"])],
    dependencies: [
        .package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "2.0.0-alpha"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.0")
    ],
    targets: [
        .executableTarget(
            name: "swift-web",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Hummingbird", package: "hummingbird"),
            ]
        ),
    ]
)
