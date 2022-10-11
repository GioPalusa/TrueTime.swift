// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrueTime",
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]),
        .library(
            name: "CTrueTime",
            targets: ["CTrueTime"])
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "10.0.0")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/typelift/SwiftCheck.git", .upToNextMajor(from: "0.12.0")),
    ],
    targets: [
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"]),
        .testTarget(
            name: "TrueTimeTests",
            dependencies: [
                "TrueTime", 
                "Quick", 
                "Nimble", 
                "SwiftCheck"
            ]
        ),
        .systemLibrary(name: "CTrueTime")
    ]
)
