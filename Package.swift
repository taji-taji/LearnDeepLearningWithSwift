import PackageDescription

let package = Package(
    name: "LearnDeepLearningWithSwift",
    targets: [
        Target(name: "Gates", dependencies: ["Functions"]),
        Target(name: "Network", dependencies: ["Functions"]),
        Target(name: "Functions"),
    ],
    dependencies: [
        .Package(url: "https://github.com/taji-taji/MatrixSwift", majorVersion: 0)
    ]
)
