import Foundation

/*
 * In a land shrouded in mystery ...
 */

class DarkCastle {
  var name: String
  var constructionYear: Int
  var destructionYear: Int
  var features: [String]
  
  init(name: String, constructionYear: Int, destructionYear: Int, features: [String]) {
    self.name = name
    self.constructionYear = constructionYear
    self.destructionYear = destructionYear
    self.features = features
  }
  
  var duration: Int {
    self.calcDuration()
  }
  
  func calcDuration() -> Int {
    self.destructionYear - self.constructionYear
  }
}

// ...there stood a Dark Castle

let moonshadowFortress = DarkCastle(name: "Moonshadow Fortress", constructionYear: 980, destructionYear: 1503, features: ["Eerie Glow", "High Battlements"])
print("The duration of \(moonshadowFortress.name) was \(moonshadowFortress.duration) years.")

// MARK: - Plain Text, Comments, Documentation Markup, Documentation Markup Keywords
// This is a plain comment
/// This is a documentation comment
/**
 * This is a multi-line documentation comment
 *
 * - Parameter radius: The radius of the circle
 * - Returns: The area of the circle
 */
func exampleDocumentation(radius: Double) -> Double {
    return 3.14159 * radius * radius
}

// MARK: - Marks, Strings, Characters
let stringExample = "Hello, World!" // String
let characterExample: Character = "A" // Character

// MARK: - Numbers
let integerExample: Int = 42 // Integer
let floatExample: Float = 3.14 // Float

// MARK: - Regex Literals, Regex Literal Numbers, Regex Capture Names, Regex Literal Character Class Names, Regex Literal Operators
let regexExample = try! NSRegularExpression(pattern: #"(\d{3})-(\d{2})-(\d{4})"#)
let regexTestString = "123-45-6789"
if let match = regexExample.firstMatch(in: regexTestString, range: NSRange(location: 0, length: regexTestString.utf16.count)) {
    print("Matched: \(regexTestString[Range(match.range, in: regexTestString)!])")
}

// MARK: - Keywords, Preprocessor Statements
#if DEBUG
let environment = "Debug"
#else
let environment = "Production"
#endif

// MARK: - URLs
// https://www.example.com
let urlExample = URL(string: "https://www.example.com")

// MARK: - Attributes
@available(iOS 10.0, *)
func doSomethingAvailable() {
    // Function code here
}

// MARK: - Type Declarations, Other Declarations
class ExampleClass {
    var property: String // Project Properties and Globals
    static let constant = "Constant" // Project Constants

    init(property: String) {
        self.property = property
    }

    func exampleMethod() -> String { // Project Function and Method Names
        return property
    }
}

struct ExampleStruct {
    var property: String

    func exampleMethod() -> String {
        return property
    }
}

enum ExampleEnum {
    case caseOne
    case caseTwo
}

// MARK: - Other Class Names, Other Function and Method Names, Other Constants, Other Type Names, Other Properties and Globals, Other Preprocessor Macros
let externalClassInstance = NSDate() // Other Class Names
let dateFormatter = DateFormatter() // Other Function and Method Names
let systemConstant = URLSession.shared // Other Constants
let systemType = Int.self // Other Type Names

// MARK: - Project Preprocessor Macros
#if os(macOS)
let platform = "macOS"
#elseif os(iOS)
let platform = "iOS"
#else
let platform = "Unknown"
#endif

// MARK: - Heading
// # This is a heading comment for a section
// This is a comment in the heading section

// MARK: - Example Usage
func main() {
    let example = ExampleClass(property: "Hello")
    print(example.exampleMethod())
}

main()
