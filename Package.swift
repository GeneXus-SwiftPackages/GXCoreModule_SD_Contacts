// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Contacts",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Contacts",
			targets: ["GXCoreModule_SD_ContactsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ContactsWrapper",
				dependencies: [
					"GXCoreModule_SD_Contacts",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.watchOS, .tvOS, .iOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Contacts",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Contacts-1.0.0-beta+20230503140111.xcframework.zip",
			checksum: "43075efc7a1eb1d986da8c9527f906064a0c39d76a4e4c2712fec437d31d768a"
		)
	]
)