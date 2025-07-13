import Foundation

func prompt(_ message: String) -> String {
    print(message, terminator: " ")
    guard let input = readLine(), !input.isEmpty else {
        print("❌ Invalid input.")
        exit(1)
    }
    return input
}

let fileManager = FileManager.default
let algDir = "Sources/MyAlgorithms"
let testDir = "Tests/MyAlgorithmsSwiftTesting"

// Check if arguments are passed via CLI
let args = CommandLine.arguments

let (number, rawFuncSignature): (String, String) = {
    if args.count >= 3 {
        return (args[1], args[2])
    } else {
        let num = prompt("Enter LeetCode problem number:")
        let signature = prompt("Enter function signature (e.g., canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool:")
        return (num, signature)
    }
}()

guard let leftParenthesisIndex = rawFuncSignature.firstIndex(of: "(") else{
    print("❌ Please enter a valid function signature.")
    exit(1)
}
let rawFuncName = rawFuncSignature.prefix(upTo: leftParenthesisIndex)
let parametersPart = rawFuncSignature.suffix(from: leftParenthesisIndex)

let pascalFuncName = rawFuncName.prefix(1).uppercased() + rawFuncName.dropFirst()

var funcSignature = "q\(number)" + pascalFuncName + parametersPart

guard let _ = Int(number) else {
    print("❌ Please enter a valid number.")
    exit(1)
}

let testFuncName = "test" + "Q\(number)" + pascalFuncName

// File names
let algFile = "Q\(number).swift"
let testFile = "Q\(number)Tests.swift"

// Full paths
let algPath = "\(algDir)/\(algFile)"
let testPath = "\(testDir)/\(testFile)"

// Boilerplate content
let algTemplate = """
// LeetCode Problem \(number)
/*
*/
public func \(funcSignature) {
    // TODO: Implement solution
}
"""

let testTemplate = """
import XCTest
@testable import MyAlgorithms

final class Q\(number)Tests: XCTestCase {
    override func setUpWithError() throws {
        // Setup code before each test (optional)
    }

    override func tearDownWithError() throws {
        // Cleanup code after each test (optional)
    }

    func \(testFuncName)() throws {
        // Insert Assertions here
    }
}
"""

let testSwiftTemplate = """
import Testing
import MyAlgorithms

@Test func \(testFuncName)() {
  // Test logic goes here.
  #expect("YES" == "NO")
}
"""

@MainActor
func writeFileIfNotExists(path: String, content: String) {
    if fileManager.fileExists(atPath: path) {
        print("⚠️  File already exists: \(path)")
    } else {
        do {
            try content.write(toFile: path, atomically: true, encoding: .utf8)
            print("✅ Created: \(path)")
        } catch {
            print("❌ Failed to write file: \(path)\nError: \(error)")
        }
    }
}

// Ensure directories exist
try? fileManager.createDirectory(atPath: algDir, withIntermediateDirectories: true)
try? fileManager.createDirectory(atPath: testDir, withIntermediateDirectories: true)

// Write files
writeFileIfNotExists(path: algPath, content: algTemplate)
writeFileIfNotExists(path: testPath, content: testSwiftTemplate)

// reload VSCode window to allow the test panel to refresh
// this is a trick
// reload VSCode workspace explicitly using the .code-workspace file
// let scriptDir = URL(fileURLWithPath: #file).deletingLastPathComponent()
// let projectRoot = scriptDir.deletingLastPathComponent()
// let process = Process()
// process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
// process.arguments = ["code", projectRoot.path, "--reuse-window"]

// do {
//     try process.run()
//     process.waitUntilExit()
// } catch {
//     print("❌ Failed to reopen folder workspace: \(error)")
// }