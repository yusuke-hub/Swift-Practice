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

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello,\(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// hasPrefix:接頭が一致
// hasSuffix:接尾が一致

let vegetable = "tomato"
switch vegetable {
case "celery":
print("Add some raisins and make ants on a log.")
case "cucumber":
print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)


//while文:ループ回数が未定の時に使用する事が多い.無限ループを作らないように注意
var n = 3
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<7 {
    total += i
}
print(total)

//文字列における変数展開 → \(変数)
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "John", day: "Wednesday")


