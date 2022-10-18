// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TaskComponents",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TaskComponents",
            targets: ["TaskComponents"]),
    ],
    
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "TaskComponents",
            dependencies: []),
        .testTarget(
            name: "TaskComponentsTests",
            dependencies: ["TaskComponents"]),
    ]
)
