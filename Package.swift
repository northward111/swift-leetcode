// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
// to check the current swift vesion, simply run `swift --version`

import PackageDescription

let package = Package(
    name: "swift-leetcode",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "MyAlgorithms",
            path: "Sources/MyAlgorithms"),
        // .testTarget( // <--- NEW: Define your test target
        //     name: "MyAlgorithmsTests", // <--- NEW: Name your test target
        //     dependencies: ["MyAlgorithms"], // <--- NEW: It depends on your main target
        //     path: "Tests/MyAlgorithmsTests"), // <--- NEW: Specify the path to your test files
        .testTarget(
            name: "MyAlgorithmsSwiftTesting",
            dependencies: ["MyAlgorithms"],
            path: "Tests/MyAlgorithmsSwiftTesting"
        ),
    ]
)
