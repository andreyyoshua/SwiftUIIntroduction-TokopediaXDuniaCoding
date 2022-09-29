import UIKit

// Print
print("Hello World")

// MARK: SIMPLE VALUE, VAR VS LET
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
// TODO: Create a constant with an explicit type of Float and a value of 4.
// Your code ...

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
// TODO: Try removing the conversion to String from the last line. What error do you get?

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
// TODO: Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

fruits.append("blueberries")
print(fruits)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

fruits = []
occupations = [:]

