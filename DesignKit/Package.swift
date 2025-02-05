// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "DesignKit",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "DesignKit", targets: ["DesignKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DesignKit",
            dependencies: [],
            plugins: [
            ]
        )
    ]
)
