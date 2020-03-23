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

// Optional Binding
// もしosがnilじゃなかったら、osにvalueを代入する
if let value = os {
    print(value)
}
