import ProjectDescription

let project = Project(
    name: "WeatherApp",
    targets: [
        .target(
            name: "WeatherApp",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.WeatherApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "WeatherApp/Sources",
                "WeatherApp/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "WeatherAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.WeatherAppTests",
            infoPlist: .default,
            buildableFolders: [
                "WeatherApp/Tests"
            ],
            dependencies: [.target(name: "WeatherApp")]
        ),
    ]
)
