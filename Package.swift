// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "magpie",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Magpie", targets: ["Magpie"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.4")),
        .package(url: "https://github.com/Square/Valet.git", .upToNextMajor(from: "4.0.0"))
    ],
    targets: [
        .target(name: "Magpie", dependencies: ["Alamofire", "Valet"], path: "Sources/magpie/Classes")
    ],
    swiftLanguageVersions: [.v5]
)
