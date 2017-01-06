// String
var variableString = "Mutable string"
let constantString = "Immutable string"

// casting
let strNum = String(number)		// init String with number
let number = Double(strNum)		// try to cast String to Double, optional value 
let array = Array(string)		// init [Character] with String

// concatenation
String+String
String+=String
String.append(Character)

// interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//indexing
let greeting = "Guten Tag!"
greeting[greeting.startIndex]					          // G	first
greeting[greeting.index(before: greeting.endIndex)]	    // !	last
greeting[greeting.index(after: greeting.startIndex)]	// u	2nd
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]	// a	7th from startIndex
greeting[greeting.endIndex] 			// Error
greeting.index(after: greeting.endIndex) 	// Error
for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")		// Prints "G u t e n   T a g ! "
}

// special characters
let start = "Start with \"Hello, World!\" example"
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024

// properties
if string.isEmpty { ... }
string.characters.count
capitalizedString -> String
lowercaseString -> String
uppercaseString -> String

// methods
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)				// "hello!"
welcome.insert(contentsOf:" there".characters, at: welcome.index(before: welcome.endIndex))// "hello there!"

welcome.remove(at: welcome.index(before: welcome.endIndex))	// "hello there"
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

let string = "The Swift Programming Language"
if string.hasPrefix("The Swift ") { ... }	// true
if string.hasSuffix("age") { ... }		// true

componentsSeparatedByString(String) -> [String]	// "1,2,3".csbs(",") = ["1","2","3"]



// Character
let exclamationMark: Character = "!"

for character in "Some string".characters {
    print(character)
}

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)		     // String([Character])

