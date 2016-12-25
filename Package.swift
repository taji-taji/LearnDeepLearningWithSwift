import PackageDescription

let package = Package(
    name: "LearnDeepLearningWithSwift",
    targets: [
        Target(name: "Gates", dependencies: ["Utility"]),
        Target(name: "Network", dependencies: ["Utility"]),
        Target(name: "Utility")
    ]
)
