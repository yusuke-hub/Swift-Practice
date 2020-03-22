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

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return(min, max, sum)
}
// 1回目 (5,5,5)
// 2回目 (5,3,8)
// 3回目 (100,5,108)
// 4回目 (5,3,111)
// 5回目 (9,5,120)
let statistics = calculateStatistics(scores: [5, 3, 100, 3])
print(statistics.sum)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return  1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//条件を設定して、結果によってtrue,falseを返す関数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//map:全要素に処理を適用したい時に使う
let array = [1,2,3,4,5]
let newArray = array.map { $0 * 5 }
newArray

let celsius = ["Tokyo": 14.0, "Osaka": 26.0]
let fahrenheit = celsius.map{ ($0.0)}
fahrenheit

// クロージャ:名前をつけずに定義する関数
//  {(引数名: 引数の型) -> (戻り値の型) in
//        処理
//      return 戻り値
//  }

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

// $0:第一引数 $1:第２引数
let sortedNumbers = numbers.sorted{ $0 > $1 }
print(sortedNumbers)

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()


class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//Double型:浮動小数点
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    //override:superクラスのメソッドを呼び出す時に使う
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
