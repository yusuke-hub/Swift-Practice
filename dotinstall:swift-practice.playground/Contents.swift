import UIKit

var str = "Hello, playground"

// \n:改行
print("Hello world")
print("Hello")

// ★定数 let,再代入出来ない
// ★変数 var,再代入できる

// let msg: String
// msg = "hello world"s

// let msg: String = "hello world"

// String型であることは自明なので、省略可
//「型推論」という
let msg = "hello world"

// ★データ型
//Int
//let i: Int = 10
let i = 10

// Float Double
let d = 52.7

// String
let s = "hello"

// Bool true/false
let flag = true

var x = "five"
// x = 5 → xに文字列が入った時点で,変数xはString型なので,Int型は×
x = String(5)

// ★数値
// + - * / %
print(10 / 3)
print(10.0 / 3)
print(10 % 3)

var y = 10
y = y + 5
y += 5
print(y)

// ★文字列
print("hello" + "world")
print("y is \(y)")
print("y2 is \(y * 2)")

// ★論理値 true false
//&& || !
print(true && false)
print(true || false)
print(!true)

//  ★条件分岐
let score = 82
let result: String

//if score > 80 {
//    result = "great"
//} else if score > 60 {
//    result = "good"
//} else {
//    result = "so so ..."
//}

result = score > 80 ? "great" : "so so ..."
print(result)

// Switch文
let num = 5
switch num {
case 0:
    print("zero")
case 1, 2, 3:
    print("small")
case 4...6:
    print("4/5/6")
case 7..<9:
    print("7/8")
case let n where n > 20:
    print("\(n) is hyge!")
default:
    print("n.a.")
    break
}

//while文
var n = 0
//while n < 3 {
//    print(n)
//    n += 1
//}

// repeat/while文
//条件に該当じなくても1回は必ず処理が実行される
repeat {
    print(n)
    n += 1
} while n < 3

// for文
// for 変数 in データの集合 { 処理 }
// break: 以降の処理が止まる
// continue: その時点でのループ処理を飛ばして、以降の処理を事項する
for i in 0...5 {
    print(i)
}
for i in 0...5 {
    if i == 3 {
        break
    }
    print(i)
}
for i in 0...5 {
    if i == 3 {
        continue
    }
    print(i)
}

// ★nil
//let s: String = nil
//let os: Optional<String> = nil

let os: String? = nil
if os != nil {
    print(os!) //unwrap
}

// ★Optional Binding
// もしosがnilじゃなかったら、osにvalueを代入する
if let value = os {
    print(value)
}

// ★配列,タプル
// ★辞書

//var scores: [Int] = [50, 40]
var scores = [50, 40]

print(scores[0])
scores[1] = 30
print(scores)

print(scores.count)
print(scores.isEmpty)

var names = [String]()
names.append("kawabata")
names.append("yusuke")
names += ["dotinstall"]

for name in names {
    print(name)
}

//var items = ("apple", 5)
//print(items.0)
//items.1 = 8
//print(items)

//let (product, amount) = items
////amountを使わない場合、以下のようにすれば安全に破棄できる
//print(product, _) = items
//print(product)

var items = (product: "apple", amount: 5)
print(items.product)

// ★集合
//var winners: Set<Int> = [3 , 5, 8, 8]
var winners: Set = [3 , 5, 8, 8]
print(winners)
// 配列のようにそれぞれの要素にアクセスすることはできない
print(winners.contains(3))
winners.insert(10)
winners.remove(5)
print(winners)
print(winners.count)

// 空の集合を作る
let es = Set<Int>()
print(es.isEmpty)

let a: Set = [1, 3, 5, 8]
let b: Set = [3, 5, 8, 9]


print(a.union(b))
// 積集合:共通箇所
print(a.intersection(b))
// 差集合:共通箇所を引く
print(a.subtracting(b))

//var sales :Dictionary<String, Int> = ["kawabata": 200, "satou": 300]
var sales = ["kawabata": 200, "satou": 300]
sales["gorilla"] = 900
print(sales["kawabata"] ?? "n.a. ")
print(sales.count)

for (key, value) in sales {
    print("\(key): \(value)")
}

let q = [String: Int]()
print(q.isEmpty)

// ★関数
//func sayHi() {
//    print("hi")
//}
//sayHi()

// func 関数名() -> 戻り値のデータ型を指定{}
//func sayHi() -> String{
//    return "hi"
//}
//print(sayHi())
//
//func sayHi(name: String) {
//    print("hi \(name)")
//}
//sayHi()

// nameの前にfromというラベルをつける
//func sayHi(from name: String) {
//    print("hi \(name)")
//}
//sayHi(from: "tom")

// ↑の省略形
//func sayHi(_ name: String) {
//    print("hi \(name)")
//}
//sayHi("tom")

// 引数に初期値を与える
func sayHi(_ name: String = "tom") {
    print("hi \(name)")
}
sayHi()

// ★inout
//func add10(x: Int) {
//    x = x + 10 ← 引数は定数として扱われるので、再代入できない。エラーになる！
//    print(x)
//}

func add10(x: inout Int) {
    x = x + 10
    print(x)
}
// inoutを使う時の注意点
// 引数に変数を与えるときは&(アンパサンダ)を忘れない！
var u = 10
add10(x: &u)
// 関数内で計算された値がuに戻ってくるので,uは20となる
print(u)

// ★class
//class User {
//    let name: String // クラスの中で宣言した変数をプロパティと呼ぶ
//    var score: Int
//    var level: Int {
//        get {
//            return Int(score / 10)
//        }
//        set {
//            if newValue >= 0 {
//                score = newValue * 10
//            }
//        }
//    }
//    init(name: Srring, score: Int){
//    init(_ name: String, _ score: Int) {
//        self.name = name
//        self.score = score
//}
//    init(){
//        self.name = "bob"
//        self.score = 23
//    }
//}

// クラスからインスタンスを生成
//let user: User = User()
//let user = User()
//print(user.name)
//print(user.score)
//user.score = 26
//print(user.score)

//let tom = User(name: "tom", score: 23)
//let tom = User("tom", 23)
//print(tom.name)
//print(tom.score)
//
//let bob = User()
//print(bob.name)
//print(bob.score)
//
//print(tom.level)
//tom.level = 5
//print(tom.score)
//tom.level = -3
//print(tom.score)

// プロパティの値を監視する
//class User {
//    let name: String
//    var score: Int {
//        willSet {
//            // before change
//            print("\(score) -> \(newValue)")
//    }
//        didSet {
//            // after change
//            print("Changed: \(score - oldValue)")
//        }
//    }
//    init(_ name: String, _ score: Int) {
//        self.name = name
//        self.score = score
//    }
//}
//
//let tom = User("tom", 23)
//tom.score = 53
//tom.score = 40

// メソッドを使う
//class User {
//    let name: String
//    var score: Int
//    init(_ name: String,_ score: Int) {
//        self.name = name
//        self.score = score
//    }
//    func sayHi(){
//        print("hi \(name)")
//    }
//    func sayHi(_ msg: String) {
//        print("\(msg) \(name)")
//    }
//
//}

// let tom = User("tom", 23)
// tom.sayHi()
// tom.sayHi(msg: "hola")
// tom.sayHi("hole")

// ★クラスの継承
// User -> AdminUser

class User {
    let name: String
    var score: Int
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    func sayHi(){
        print("hi \(name)")
    }
}
class AdminUser: User {
    func sayHello() {
        print("hello \(name)")
    }
    override func sayHi() {
        print("[admin] hi \(name)")
    }
}

let tom = User("tom", 23)
let bob = AdminUser("bob", 33)
print(bob.name)
print(bob.score)
bob.sayHi()
bob.sayHello()
