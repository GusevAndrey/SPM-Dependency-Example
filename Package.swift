// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Example",
    defaultLocalization: "us",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    
    // MARK: - Products

    products: [

        .library(
            name: "SomeProduct",
            targets: [
                "SomeTarget"
            ]
        )

    ],
    
    // MARK: - Dependencies

    dependencies: [],
    
    // MARK: - Targets

    targets: [

        .target(
            name: "SomeTarget",
            dependencies: [
                "Common-Target",

                .target(name: "iOS-specific-target", condition: .when(platforms: [.iOS])),
                .target(name: "TV-Specific-target", condition: .when(platforms: [.tvOS]))
            ],
            path: "SomeTarget"
        ),

        .target(
            name: "Common-Target",
            path: "CommonTarget"
        ),

        .target(
            name: "iOS-specific-target",
            path: "iOSTarget"
        ),

        .target(
            name: "TV-Specific-target",
            path: "tvOSTarget"
        )

    ]
)
