import UIKit

var str = "Hello, playground"

print("Hello,world")

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70.0

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have\(apples + oranges) pieces of fruit."

let quotation = """
I said "I have \(apples)apples."
And then I said "I have \(apples + oranges)pieces of fruit."
"""

var shoppingList = ["catfish","water","tulips"]
shoppingList[1] = "bottle of water"
shoppingList.append("blue paint")

var occupations = ["Malcolm": "Captain","Kaylee": "Mechanic",]
occupations["Jayne"] = "Public Relations"
occupations

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

var individualScores = [78,32,55,67,15]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

var optionalString: String? = "Hello"
print(optionalString == nil)

var
