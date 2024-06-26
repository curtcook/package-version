// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "package-version",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.1"),
        .package(url: "https://github.com/apple/example-package-figlet", branch: "main"),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", branch: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "package-version",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Figlet", package: "example-package-figlet"),
                .product(name: "ShellOut", package: "ShellOut")
            ]
        ),
    ]
)
