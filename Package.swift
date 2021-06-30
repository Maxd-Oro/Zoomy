// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Zoomy",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "Zoomy", targets: ["Zoomy"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Zoomy", path: "Zoomy"),
    ],
    swiftLanguageVersions: [.v5]
)
