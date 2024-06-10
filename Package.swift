// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Contacts",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Contacts",
			targets: ["GXCoreModule_SD_ContactsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-rc.36")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_SD_Contacts-2.0.0-rc.36.xcframework.zip",
			checksum: "f544c66eb00b590f11f377285de3279f4fc75726a115dd2df11d5b4b8433ab26"
		)
	]
)