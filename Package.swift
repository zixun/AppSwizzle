// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "AppSwizzle",
	platforms: [
		.iOS(.v12)
		],
	products: [
		.library(
			name: "AppSwizzle",
			targets: ["AppSwizzle"]),
	],
	targets: [
		.target(
			name: "AppSwizzle",
			path: "AppSwizzle/Classes"
		),
		.testTarget(
			name: "AppSwizzleTests",
			dependencies: ["AppSwizzle"],
			path: "Example/Tests",
			exclude: ["Info.plist"],
			linkerSettings: [
				.linkedFramework("UIKit")
			])
	]
)

