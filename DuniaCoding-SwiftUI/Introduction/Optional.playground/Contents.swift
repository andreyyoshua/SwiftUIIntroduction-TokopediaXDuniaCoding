import UIKit

// MARK: OPTIONAL
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
// TODO: Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

if let nickname = nickname {
    print("Hey, \(nickname)")
}

// ADD FORCE UNWRAP

