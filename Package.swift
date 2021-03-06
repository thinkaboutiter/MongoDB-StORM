// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
	name: "MongoDBStORM",
	products: [
		.library(name: "MongoDBStORM", targets: ["MongoDBStORM"])
	],
	dependencies: [
		.package(url: "https://github.com/SwiftORM/StORM.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-Logger.git", from: "3.0.0"),
		.package(url: "https://github.com/iamjono/SwiftRandom.git", from: "1.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-MongoDB.git", from: "3.0.0"),
	],
	targets: [
		.target(
			name: "MongoDBStORM",
			dependencies: [
				"StORM",
				"PerfectLogger",
				"SwiftRandom",
				"PerfectMongoDB"
			]
		)
	]
)
