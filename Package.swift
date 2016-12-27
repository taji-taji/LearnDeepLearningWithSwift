import PackageDescription

let package = Package(
    name: "LearnDeepLearningWithSwift",
    targets: [
        Target(name: "Gates", dependencies: ["Utility"]),
        Target(name: "Network", dependencies: ["Utility"]),
        Target(name: "Utility"),
    ],
    dependencies: [
        .Package(url: "https://github.com/taji-taji/MatrixSwift", majorVersion: 0)
    ]
)
