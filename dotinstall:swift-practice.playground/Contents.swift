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
