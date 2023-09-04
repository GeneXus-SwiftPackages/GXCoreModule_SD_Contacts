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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.0-beta.19")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ContactsWrapper",
				dependencies: [
					"GXCoreModule_SD_Contacts",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Contacts",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Contacts-1.2.0-beta.19.xcframework.zip",
			checksum: "6b35e93fbee007b839cb19c47c45a08fc0acb7e969d7344c57d35656eef4fb59"
		)
	]
)