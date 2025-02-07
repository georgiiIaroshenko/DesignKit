// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "DesignKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "DesignKit", targets: ["DesignKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DesignKit",
            path: "Sources",
            resources: [
                .process("Resources/Assets.xcassets"),
                .process("Resources/Fronts")
            ]
        )
    ]
)
