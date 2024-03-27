// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Figlet
import ArgumentParser

@main
struct package_version: ParsableCommand {
    @Option var repo = "Default"
    
    mutating func run() throws {
        Figlet.say("Package Versions")
        if repo == "Default" {
            showLatestPackageVersions()
        } else {
            showLatestPackageVersion(repo: repo)
        }
    }
}
