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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.0.16")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Contacts-4.0.16.xcframework.zip",
			checksum: "1006c3c25520423bbc2a48ae7a4b10fcf3b6729221ed63fb2065451991c0be7f"
		)
	]
)