// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Contacts",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Contacts",
			targets: ["GXCoreModule_SD_ContactsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.4")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ContactsWrapper",
				dependencies: [
					"GXCoreModule_SD_Contacts",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Contacts",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Contacts-3.1.4.xcframework.zip",
			checksum: "a3da46e9b1fa01632d77a56d620baa384121e470068888785113fef424e2acb4"
		)
	]
)