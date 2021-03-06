// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CSDL2",
    products: [
        .library(
            name: "CSDL2",
            targets: ["CSDL2"]),
        .library(
            name: "CSDL2Vulkan",
            targets: ["CSDL2Vulkan"]
        )
    ],
    targets: [
        .systemLibrary(
            name: "CSDL2",
            pkgConfig: "sdl2",
            providers: [
                .brew(["sdl2"]),
                .apt(["libsdl2-dev"])
            ]),
        .systemLibrary(
            name: "CSDL2Vulkan"
        )
    ]
)
