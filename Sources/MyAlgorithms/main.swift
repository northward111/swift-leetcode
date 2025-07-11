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

let (number, rawFuncName): (String, String) = {
    if args.count >= 3 {
        return (args[1], args[2])
    } else {
        let num = prompt("Enter LeetCode problem number:")
        let name = prompt("Enter function name (e.g., canPlaceFlowers):")
        return (num, name)
    }
}()

var funcName = "Q\(number)" + rawFuncName.prefix(1).uppercased() + rawFuncName.dropFirst()

guard let _ = Int(number) else {
    print("❌ Please enter a valid number.")
    exit(1)
}

let testFuncName = "test" + funcName

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
func \(funcName)() {
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